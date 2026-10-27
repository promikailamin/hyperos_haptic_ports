.class public Lmiui/app/ToggleManagerCompatibility;
.super Ljava/lang/Object;
.source "ToggleManagerCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;,
        Lmiui/app/ToggleManagerCompatibility$Point;,
        Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;
    }
.end annotation


# static fields
.field public static final blacklist CUSTOM_BASE_ID:I = 0x2710

.field private static final blacklist PROCESS_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final blacklist TAG:Ljava/lang/String; = "ToggleManagerCompatibility"

.field private static blacklist mCustomIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mCustomToggleComponentNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mCustomToggleImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mCustomToggleLabelNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mCustomToggleOffColor:I

.field private static blacklist mCustomToggleOnColor:I

.field private static blacklist mCustomToggleStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist mEnableCustom:Z

.field private static blacklist mIsSystemUI:Z

.field private static blacklist mObjectLock:Ljava/lang/Object;

.field private static blacklist mToggleManager:Lmiui/app/ToggleManager;

.field private static blacklist mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;


# instance fields
.field private blacklist mBgHandler:Landroid/os/Handler;

.field private blacklist mBgThread:Landroid/os/HandlerThread;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCustomToggleChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

.field private final blacklist mDevelopmentObserver:Landroid/database/ContentObserver;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mResolver:Landroid/content/ContentResolver;

.field private final blacklist mTogglOrderObserver:Landroid/database/ContentObserver;

.field private blacklist mToggleChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/app/ToggleManager$OnToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mToggleOrderChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/app/ToggleManager$OnToggleOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomToggleChangedListeners(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lmiui/app/ToggleManagerCompatibility;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToggleOrderChangedListener(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCustomIds()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCustomToggleComponentNames()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCustomToggleImages()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCustomToggleLabelNames()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCustomToggleStatus()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmIsSystemUI()Z
    .registers 1

    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmObjectLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetMd5Num(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getMd5Num(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetUserId(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisSystemApp(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lmiui/app/ToggleManagerCompatibility;->isSystemApp(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mEnableCustom:Z

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    .line 70
    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v1, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    invoke-direct {v1, p0}, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;-><init>(Lmiui/app/ToggleManagerCompatibility;)V

    iput-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    .line 124
    new-instance v1, Lmiui/app/ToggleManagerCompatibility$1;

    invoke-direct {v1, p0}, Lmiui/app/ToggleManagerCompatibility$1;-><init>(Lmiui/app/ToggleManagerCompatibility;)V

    iput-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v1, Lmiui/app/ToggleManagerCompatibility$2;

    invoke-direct {v1, p0, v0}, Lmiui/app/ToggleManagerCompatibility$2;-><init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V

    iput-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    .line 681
    new-instance v1, Lmiui/app/ToggleManagerCompatibility$3;

    invoke-direct {v1, p0, v0}, Lmiui/app/ToggleManagerCompatibility$3;-><init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V

    iput-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 103
    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    .line 104
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-nez v0, :cond_32

    .line 105
    invoke-static {p1}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;

    move-result-object v0

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    .line 107
    :cond_32
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "ToggleManagerCompatibility"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    .line 108
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11060073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11060074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    .line 117
    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->registerListener(Z)V

    .line 118
    return-void
.end method

.method public static blacklist createInstance(Landroid/content/Context;)Lmiui/app/ToggleManagerCompatibility;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    if-nez v0, :cond_f

    .line 97
    new-instance v0, Lmiui/app/ToggleManagerCompatibility;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ToggleManagerCompatibility;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    .line 99
    :cond_f
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    return-object v0
.end method

.method private static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 822
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_c

    .line 823
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 825
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 826
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 827
    .local v1, "height":I
    if-eqz v0, :cond_36

    if-nez v1, :cond_19

    goto :goto_36

    .line 828
    :cond_19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_25

    :cond_23
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 829
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_25
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 830
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 831
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 832
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 833
    return-object v3

    .line 827
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    :cond_36
    :goto_36
    const/4 v2, 0x0

    return-object v2
.end method

.method public static blacklist getCustomToggleIds(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "customIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getToggleList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "toggleList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 264
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "toggles":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    array-length v4, v2

    if-ge v3, v4, :cond_39

    .line 267
    :try_start_19
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 268
    .local v4, "id":I
    const/16 v5, 0x2710

    if-lt v4, v5, :cond_2e

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_32

    .line 275
    .end local v4    # "id":I
    :cond_2e
    nop

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 271
    :catch_32
    move-exception v4

    .line 272
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 278
    .end local v2    # "toggles":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_39
    return-object v0
.end method

.method public static blacklist getCustomToggleTileSpecById(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # Ljava/lang/Integer;

    .line 385
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_3
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 387
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static blacklist getCustomToggleTileSpecs(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 374
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 377
    .local v3, "id":Ljava/lang/Integer;
    sget-object v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 378
    .local v4, "spec":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    nop

    .end local v3    # "id":Ljava/lang/Integer;
    .end local v4    # "spec":Ljava/lang/String;
    goto :goto_e

    .line 380
    :cond_27
    monitor-exit v0

    return-object v1

    .line 381
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public static blacklist getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 542
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p0, "id"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .line 552
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getStatus(I)Z

    move-result v1

    sget v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    sget v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    move v0, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 556
    sget v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    sget v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .registers 21
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "color"    # I
    .param p4, "customToggleOnColor"    # I
    .param p5, "customToggleOffColor"    # I

    .line 560
    move v1, p0

    move-object/from16 v2, p2

    sget-object v3, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/16 v4, 0x2710

    if-lt v1, v4, :cond_30

    .line 563
    :try_start_b
    sget-object v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 564
    sget-object v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    move-object v0, v5

    goto :goto_35

    .line 566
    :cond_25
    monitor-exit v3

    return-object v0

    .line 619
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_27
    move-exception v0

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v10, p5

    goto/16 :goto_169

    .line 569
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_30
    invoke-static/range {p0 .. p2}, Lmiui/app/ToggleManager;->getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_27

    move-object v0, v5

    .line 571
    :goto_35
    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    const/4 v7, 0x0

    if-nez p1, :cond_cf

    .line 572
    if-lt v1, v4, :cond_c7

    .line 573
    :try_start_3c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x11080215

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 574
    .local v4, "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 575
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 574
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 576
    .local v8, "combined":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 577
    .local v9, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v4, v7, v7, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 578
    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 579
    new-instance v7, Lmiui/app/ToggleManagerCompatibility$Point;

    invoke-direct {v7}, Lmiui/app/ToggleManagerCompatibility$Point;-><init>()V

    .line 580
    .local v7, "point":Lmiui/app/ToggleManagerCompatibility$Point;
    invoke-static {v2, v7}, Lmiui/app/ToggleManagerCompatibility;->getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V

    .line 581
    iget v10, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    int-to-double v10, v10

    div-double/2addr v10, v5

    double-to-int v10, v10

    iget v11, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    int-to-double v11, v11

    div-double/2addr v11, v5

    double-to-int v5, v11

    invoke-static {v2, v0, v10, v5}, Lmiui/app/ToggleManagerCompatibility;->zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    .line 582
    if-eqz v0, :cond_ba

    .line 583
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 584
    .local v5, "margin":I
    nop

    .line 585
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v10, v5

    .line 584
    invoke-virtual {v0, v5, v5, v6, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 586
    if-eqz v0, :cond_aa

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-nez v6, :cond_aa

    .line 587
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    :try_end_a4
    .catchall {:try_start_3c .. :try_end_a4} :catchall_c2

    move/from16 v10, p5

    :try_start_a6
    invoke-virtual {v0, v10, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_ac

    .line 586
    :cond_aa
    move/from16 v10, p5

    .line 589
    :goto_ac
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 590
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v6, v11, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v6

    goto :goto_bc

    .line 582
    .end local v5    # "margin":I
    :cond_ba
    move/from16 v10, p5

    .line 592
    .end local v4    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "point":Lmiui/app/ToggleManagerCompatibility$Point;
    .end local v8    # "combined":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    :goto_bc
    move/from16 v11, p3

    move/from16 v12, p4

    goto/16 :goto_167

    .line 619
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_c2
    move-exception v0

    move/from16 v10, p5

    goto/16 :goto_15e

    .line 572
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_c7
    move/from16 v10, p5

    move/from16 v11, p3

    move/from16 v12, p4

    goto/16 :goto_167

    .line 594
    :cond_cf
    move/from16 v10, p5

    if-lt v1, v4, :cond_163

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x11080216

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 596
    .restart local v4    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 597
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 596
    invoke-static {v8, v9, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 598
    .restart local v8    # "combined":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 599
    .restart local v9    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v4, v7, v7, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 600
    if-eqz v4, :cond_10c

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    if-eqz v7, :cond_10c

    .line 601
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    :try_end_106
    .catchall {:try_start_a6 .. :try_end_106} :catchall_15d

    move/from16 v11, p3

    :try_start_108
    invoke-virtual {v4, v11, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_10e

    .line 600
    :cond_10c
    move/from16 v11, p3

    .line 603
    :goto_10e
    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 605
    new-instance v7, Lmiui/app/ToggleManagerCompatibility$Point;

    invoke-direct {v7}, Lmiui/app/ToggleManagerCompatibility$Point;-><init>()V

    .line 606
    .restart local v7    # "point":Lmiui/app/ToggleManagerCompatibility$Point;
    invoke-static {v2, v7}, Lmiui/app/ToggleManagerCompatibility;->getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V

    .line 607
    iget v12, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    int-to-double v12, v12

    div-double/2addr v12, v5

    double-to-int v12, v12

    iget v13, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    int-to-double v13, v13

    div-double/2addr v13, v5

    double-to-int v5, v13

    invoke-static {v2, v0, v12, v5}, Lmiui/app/ToggleManagerCompatibility;->zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    .line 608
    if-eqz v0, :cond_158

    .line 609
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 610
    .restart local v5    # "margin":I
    nop

    .line 611
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v12, v5

    .line 610
    invoke-virtual {v0, v5, v5, v6, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 612
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    :try_end_145
    .catchall {:try_start_108 .. :try_end_145} :catchall_15b

    move/from16 v12, p4

    :try_start_147
    invoke-virtual {v0, v12, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 613
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 614
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-direct {v6, v13, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v6

    goto :goto_167

    .line 608
    .end local v5    # "margin":I
    :cond_158
    move/from16 v12, p4

    goto :goto_167

    .line 619
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "point":Lmiui/app/ToggleManagerCompatibility$Point;
    .end local v8    # "combined":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    :catchall_15b
    move-exception v0

    goto :goto_160

    :catchall_15d
    move-exception v0

    :goto_15e
    move/from16 v11, p3

    :goto_160
    move/from16 v12, p4

    goto :goto_169

    .line 594
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_163
    move/from16 v11, p3

    move/from16 v12, p4

    .line 618
    :goto_167
    monitor-exit v3

    return-object v0

    .line 619
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_169
    monitor-exit v3
    :try_end_16a
    .catchall {:try_start_147 .. :try_end_16a} :catchall_16b

    throw v0

    :catchall_16b
    move-exception v0

    goto :goto_169
.end method

.method private static blacklist getMd5Num(Ljava/lang/String;)I
    .registers 5
    .param p0, "input"    # Ljava/lang/String;

    .line 723
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 724
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 725
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 726
    .local v1, "hashInt":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1f} :catch_20

    return v2

    .line 727
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "hashInt":Ljava/math/BigInteger;
    :catch_20
    move-exception v0

    .line 728
    .local v0, "lException":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist getStatus(I)Z
    .registers 4
    .param p0, "id"    # I

    .line 501
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    const/16 v1, 0x2710

    if-lt p0, v1, :cond_1f

    .line 504
    :try_start_7
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_1b
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    :try_start_17
    monitor-exit v0

    return v1

    .line 511
    :catchall_19
    move-exception v1

    goto :goto_25

    .line 505
    :catch_1b
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 509
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1f
    invoke-static {p0}, Lmiui/app/ToggleManager;->getStatus(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 511
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_19

    throw v1
.end method

.method public static blacklist getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .registers 6
    .param p0, "id"    # I
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 489
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_3
    const-string v1, ""

    .line 491
    .local v1, "statusName":Ljava/lang/String;
    const/16 v2, 0x2710

    if-lt p0, v2, :cond_17

    .line 492
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_1c

    .line 494
    :cond_17
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 496
    :goto_1c
    monitor-exit v0

    return-object v1

    .line 497
    .end local v1    # "statusName":Ljava/lang/String;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public static blacklist getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "point"    # Lmiui/app/ToggleManagerCompatibility$Point;

    .line 623
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 624
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 625
    .local v1, "densityDPI":I
    const/16 v2, 0x82

    sparse-switch v1, :sswitch_data_28

    .line 639
    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    .line 640
    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    goto :goto_27

    .line 635
    :sswitch_14
    const/16 v2, 0x96

    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    .line 636
    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    .line 637
    goto :goto_27

    .line 631
    :sswitch_1b
    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    .line 632
    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    .line 633
    goto :goto_27

    .line 627
    :sswitch_20
    const/16 v2, 0x5e

    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    .line 628
    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    .line 629
    nop

    .line 643
    :goto_27
    return-void

    :sswitch_data_28
    .sparse-switch
        0x140 -> :sswitch_20
        0x1e0 -> :sswitch_1b
        0x280 -> :sswitch_14
    .end sparse-switch
.end method

.method public static blacklist getToggleList(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 251
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    .line 252
    .local v0, "userId":I
    invoke-static {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v1

    .line 253
    .local v1, "listStyle":Z
    if-eqz v1, :cond_d

    const-string v2, "status_bar_toggle_list_order_new"

    goto :goto_f

    .line 254
    :cond_d
    const-string v2, "status_bar_toggle_page_order"

    :goto_f
    nop

    .line 255
    .local v2, "settingId":Ljava/lang/String;
    nop

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 255
    invoke-static {v3, v2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "toggleList":Ljava/lang/String;
    return-object v3
.end method

.method private static blacklist getUserId(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 326
    .local v0, "isSystemUI":Z
    if-eqz v0, :cond_13

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    goto :goto_17

    :cond_13
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    :goto_17
    return v1
.end method

.method public static blacklist getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 339
    invoke-static {p0, p1}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listStyle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 335
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listStyle"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 344
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_d

    const-string v2, "status_bar_toggle_list_order_new"

    goto :goto_f

    :cond_d
    const-string v2, "status_bar_toggle_page_order"

    .line 347
    .local v2, "settingID":Ljava/lang/String;
    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "toggleList":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 349
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "toggles":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    array-length v6, v4
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_72

    if-ge v5, v6, :cond_61

    .line 352
    :try_start_27
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 353
    .local v6, "id":I
    const/16 v7, 0x2710

    if-lt v6, v7, :cond_49

    .line 354
    sget-object v7, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 357
    :cond_49
    invoke-static {v6}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v7

    if-eqz v7, :cond_56

    .line 358
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_56} :catch_5a
    .catchall {:try_start_27 .. :try_end_56} :catchall_72

    .line 364
    .end local v6    # "id":I
    :cond_56
    :goto_56
    nop

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 360
    :catch_5a
    move-exception v6

    .line 361
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 367
    .end local v4    # "toggles":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_61
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0, v4}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v4

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0, v1, v4, v5}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 368
    monitor-exit v0

    return-object v1

    .line 369
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "settingID":Ljava/lang/String;
    .end local v3    # "toggleList":Ljava/lang/String;
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_5b .. :try_end_74} :catchall_72

    throw v1
.end method

.method public static blacklist initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p0, "id"    # I
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 719
    return-void
.end method

.method public static blacklist isDisabled(I)Z
    .registers 2
    .param p0, "id"    # I

    .line 516
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_6

    .line 517
    const/4 v0, 0x0

    return v0

    .line 519
    :cond_6
    invoke-static {p0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isInternationalBuilder()Z
    .registers 1

    .line 810
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public static blacklist isListStyle(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_style_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method private static blacklist isSystemApp(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 815
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    return v0

    .line 816
    :catch_e
    move-exception v1

    .line 817
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static blacklist isValid(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 192
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    const/16 v1, 0x2710

    if-lt p1, v1, :cond_15

    .line 194
    :try_start_7
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 198
    :catchall_13
    move-exception v1

    goto :goto_1b

    .line 196
    :cond_15
    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->isValid(Landroid/content/Context;I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 198
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_13

    throw v1
.end method

.method public static blacklist onCustomTileChanged(Ljava/lang/String;ZLandroid/content/Context;)V
    .registers 7
    .param p0, "componentNames"    # Ljava/lang/String;
    .param p1, "add"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 202
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    if-eqz p1, :cond_6

    goto :goto_4b

    .line 206
    :cond_6
    :try_start_6
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 207
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 208
    .local v2, "id":Ljava/lang/Integer;
    sget-object v3, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 209
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {p2}, Lmiui/app/ToggleManagerCompatibility;->updateUserSelectedToggleOrder(Landroid/content/Context;)V

    .line 214
    goto :goto_4b

    .line 216
    .end local v2    # "id":Ljava/lang/Integer;
    :cond_4a
    goto :goto_18

    .line 219
    :cond_4b
    :goto_4b
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private blacklist queryCustomToggles(Z)V
    .registers 6
    .param p1, "delayMore"    # Z

    .line 148
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    if-eqz p1, :cond_13

    .line 150
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1c

    .line 152
    :cond_13
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :goto_1c
    return-void
.end method

.method private blacklist registerListener(Z)V
    .registers 11
    .param p1, "isSystemUI"    # Z

    .line 161
    if-eqz p1, :cond_4

    const/4 v0, -0x1

    goto :goto_8

    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 162
    .local v0, "userId":I
    :goto_8
    sget-boolean v1, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    if-eqz v1, :cond_f

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    goto :goto_1a

    :cond_f
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    :goto_1a
    move-object v5, v1

    .line 163
    .local v5, "user":Landroid/os/UserHandle;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 169
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    .line 170
    const-string v3, "development_settings_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    .line 169
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 173
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    .line 174
    const-string v3, "status_bar_toggle_page_order"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 173
    invoke-virtual {v2, v3, v6, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    .line 178
    const-string v3, "status_bar_toggle_list_order_new"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    .line 177
    invoke-virtual {v2, v3, v6, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 181
    return-void
.end method

.method public static blacklist resetInstance()V
    .registers 1

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    .line 122
    return-void
.end method

.method public static blacklist toSpec(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Landroid/content/ComponentName;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist updateImageView(ILandroid/widget/ImageView;)V
    .registers 3
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .line 665
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->updateImageView(ILandroid/widget/ImageView;I)V

    .line 666
    return-void
.end method

.method public static blacklist updateImageView(ILandroid/widget/ImageView;I)V
    .registers 6
    .param p0, "id"    # I
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "color"    # I

    .line 669
    if-eqz p1, :cond_34

    .line 670
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 671
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0x2710

    if-ge p0, v1, :cond_1c

    if-eqz v0, :cond_1c

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_1c

    .line 672
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_31

    .line 673
    :cond_1c
    if-lt p0, v1, :cond_31

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getStatus(I)Z

    move-result v1

    if-nez v1, :cond_31

    if-eqz v0, :cond_31

    .line 674
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_31

    .line 675
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 677
    :cond_31
    :goto_31
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 679
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_34
    return-void
.end method

.method public static blacklist updateTextView(ILandroid/widget/TextView;)V
    .registers 3
    .param p0, "id"    # I
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 546
    if-eqz p1, :cond_d

    .line 547
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    :cond_d
    return-void
.end method

.method protected static blacklist updateToggleStatus(IZ)V
    .registers 6
    .param p0, "id"    # I
    .param p1, "isOpen"    # Z

    .line 524
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    const/16 v1, 0x2710

    if-lt p0, v1, :cond_15

    .line 526
    :try_start_7
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 528
    :cond_15
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v1, p0, p1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    .line 530
    :goto_1a
    monitor-exit v0

    .line 531
    return-void

    .line 530
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public static blacklist updateUserSelectedToggleOrder(Landroid/content/Context;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "updateChange":Z
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v1

    .line 284
    .local v1, "userId":I
    invoke-static {p0, v1}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v2

    .line 285
    .local v2, "listStyle":Z
    if-eqz v2, :cond_e

    const-string v3, "status_bar_toggle_list_order_new"

    goto :goto_10

    .line 286
    :cond_e
    const-string v3, "status_bar_toggle_page_order"

    :goto_10
    nop

    .line 287
    .local v3, "settingId":Ljava/lang/String;
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getToggleList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "toggleList":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, " "

    if-nez v6, :cond_4a

    .line 290
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "toggles":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_27
    array-length v9, v6

    if-ge v8, v9, :cond_4a

    .line 293
    :try_start_2a
    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 294
    .local v9, "id":I
    const/16 v10, 0x2710

    if-lt v9, v10, :cond_3f

    .line 295
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3f} :catch_43

    .line 301
    .end local v9    # "id":I
    :cond_3f
    nop

    .line 291
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 297
    :catch_43
    move-exception v9

    .line 298
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 305
    .end local v6    # "toggles":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4a
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 306
    .local v8, "id":Ljava/lang/Integer;
    sget-object v9, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7a

    .line 307
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 308
    const/4 v0, 0x1

    .line 310
    .end local v8    # "id":Ljava/lang/Integer;
    :cond_7a
    goto :goto_4e

    .line 311
    :cond_7b
    if-nez v0, :cond_7e

    return-void

    .line 312
    :cond_7e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 313
    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v7

    .line 312
    invoke-static {v6, v3, v4, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 314
    return-void
.end method

.method public static blacklist zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 651
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 652
    .local v7, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 653
    .local v8, "height":I
    invoke-static/range {p1 .. p1}, Lmiui/app/ToggleManagerCompatibility;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 654
    .local v9, "oldbmp":Landroid/graphics/Bitmap;
    if-nez v9, :cond_10

    const/4 v0, 0x0

    return-object v0

    .line 655
    :cond_10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v10, v0

    .line 656
    .local v10, "matrix":Landroid/graphics/Matrix;
    move/from16 v11, p2

    int-to-float v0, v11

    int-to-float v1, v7

    div-float v12, v0, v1

    .line 657
    .local v12, "scaleWidth":F
    move/from16 v13, p3

    int-to-float v0, v13

    int-to-float v1, v8

    div-float v14, v0, v1

    .line 658
    .local v14, "scaleHeight":F
    invoke-virtual {v10, v12, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 659
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    move v3, v7

    move v4, v8

    move-object v5, v10

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 661
    .local v0, "newbmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public blacklist onDestroy()V
    .registers 4

    .line 439
    :try_start_0
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 440
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 441
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 442
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 443
    invoke-virtual {v0}, Lmiui/app/ToggleManager;->onDestroy()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_83

    .line 445
    :try_start_1d
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "sToggleManager"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 446
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 447
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_32} :catch_33

    .line 450
    .end local v0    # "field":Ljava/lang/reflect/Field;
    goto :goto_37

    .line 448
    :catch_33
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/Exception;
    :try_start_34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    :goto_37
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    if-eqz v0, :cond_3e

    .line 453
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 455
    :cond_3e
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    if-eqz v0, :cond_45

    .line 456
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 458
    :cond_45
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_4c

    .line 459
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 461
    :cond_4c
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    if-eqz v0, :cond_53

    .line 462
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 464
    :cond_53
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    if-eqz v0, :cond_5a

    .line 465
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 467
    :cond_5a
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    if-eqz v0, :cond_61

    .line 468
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 470
    :cond_61
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    if-eqz v0, :cond_68

    .line 471
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 473
    :cond_68
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_6f

    .line 474
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 476
    :cond_6f
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_76

    .line 477
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 479
    :cond_76
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7d

    .line 480
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 482
    :cond_7d
    sput-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    .line 483
    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->resetInstance()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_82} :catch_83

    .line 485
    goto :goto_84

    .line 484
    :catch_83
    move-exception v0

    .line 486
    :goto_84
    return-void
.end method

.method public blacklist performToggle(I)Z
    .registers 3
    .param p1, "id"    # I

    .line 710
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_6

    .line 711
    const/4 v0, 0x1

    return v0

    .line 713
    :cond_6
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->performToggle(I)Z

    move-result v0

    return v0
.end method

.method public blacklist queryCustomToggles()V
    .registers 2

    .line 138
    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mEnableCustom:Z

    if-eqz v0, :cond_11

    .line 139
    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    if-eqz v0, :cond_d

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->queryCustomToggles(Z)V

    goto :goto_11

    .line 142
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->queryCustomToggles(Z)V

    .line 145
    :cond_11
    :goto_11
    return-void
.end method

.method public blacklist removeCustomToggleChangeListener(Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;)V
    .registers 3
    .param p1, "l"    # Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;

    .line 432
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 433
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 435
    :cond_d
    return-void
.end method

.method public blacklist removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .registers 3
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 414
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 415
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 417
    :cond_d
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_14

    .line 418
    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V

    .line 420
    :cond_14
    return-void
.end method

.method public blacklist removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .registers 3
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .line 423
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 424
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 426
    :cond_d
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_14

    .line 427
    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V

    .line 429
    :cond_14
    return-void
.end method

.method public blacklist setOnCustomToggleChangeListener(Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;)V
    .registers 3
    .param p1, "l"    # Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;

    .line 408
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 409
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_d
    return-void
.end method

.method public blacklist setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .registers 4
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 400
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_11

    .line 402
    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V

    .line 404
    :cond_11
    return-void
.end method

.method public blacklist setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .registers 3
    .param p1, "l"    # Lmiui/app/ToggleManager$OnToggleOrderChangedListener;

    .line 391
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 392
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_d
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_14

    .line 395
    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V

    .line 397
    :cond_14
    return-void
.end method

.method public blacklist setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 806
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    .line 807
    return-void
.end method

.method public blacklist updateCustomToggleImageAndText(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/List;Z)V
    .registers 13
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "labelName"    # Ljava/lang/String;
    .param p5, "toggleStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 223
    .local p4, "toggleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    invoke-static {p1}, Lmiui/app/ToggleManagerCompatibility;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "customToggleSpec":Ljava/lang/String;
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 226
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 227
    .local v3, "id":Ljava/lang/Integer;
    sget-object v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 228
    if-eqz p4, :cond_7d

    invoke-interface {p4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_7d

    .line 229
    :cond_38
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p5}, Lmiui/app/ToggleManagerCompatibility;->updateToggleStatus(IZ)V

    .line 232
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7d

    .line 233
    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_59
    if-ltz v2, :cond_7b

    .line 234
    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 235
    .local v4, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/app/ToggleManager$OnToggleChangedListener;

    .line 236
    .local v5, "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    if-nez v5, :cond_71

    .line 237
    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_78

    .line 239
    :cond_71
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lmiui/app/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V

    .line 233
    .end local v4    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/app/ToggleManager$OnToggleChangedListener;>;"
    .end local v5    # "l":Lmiui/app/ToggleManager$OnToggleChangedListener;
    :goto_78
    add-int/lit8 v2, v2, -0x1

    goto :goto_59

    .end local v2    # "i":I
    :cond_7b
    goto :goto_7d

    .line 245
    .end local v3    # "id":Ljava/lang/Integer;
    :cond_7c
    goto :goto_15

    .line 247
    .end local v1    # "customToggleSpec":Ljava/lang/String;
    :cond_7d
    :goto_7d
    monitor-exit v0

    .line 248
    return-void

    .line 247
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_7f

    throw v1
.end method

.method protected blacklist updateToggleDisabled(IZ)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "disabled"    # Z

    .line 534
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_5

    .line 535
    return-void

    .line 537
    :cond_5
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    .line 539
    return-void
.end method
