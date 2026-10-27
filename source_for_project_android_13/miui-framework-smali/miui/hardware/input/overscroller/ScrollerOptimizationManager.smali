.class public Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;
.super Ljava/lang/Object;
.source "ScrollerOptimizationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;
    }
.end annotation


# static fields
.field private static volatile blacklist INSTANCE:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager; = null

.field public static final blacklist SCROLLER_MODE_UN_KNOWN:I = -0x1

.field public static final blacklist SCROLLER_NORMAL_MODE:I = 0x0

.field private static final blacklist SCROLLER_NORMAL_MODE_STR:Ljava/lang/String; = "0"

.field public static final blacklist SCROLLER_POWER_MODE:I = 0x1

.field private static final blacklist SCROLLER_POWER_MODE_STR:Ljava/lang/String; = "1"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAppConfig:Ljava/lang/String;

.field private blacklist mConfigChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mConfigListenerLock:Ljava/lang/Object;

.field private blacklist mMiuiInputManager:Lmiui/hardware/input/MiuiInputManager;

.field private blacklist mScrollerMode:I

.field private blacklist mScrollerOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

.field private blacklist mScrollerOptimizationDebug:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->INSTANCE:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerOptimizationDebug:I

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mAppConfig:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    .line 36
    iput v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerMode:I

    .line 42
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mConfigChangedListeners:Ljava/util/List;

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mConfigListenerLock:Ljava/lang/Object;

    .line 48
    sget-boolean v1, Lmiui/os/DeviceFeature;->SCROLLER_OPTIMIZATION_SUPPORT:Z

    if-nez v1, :cond_20

    .line 49
    return-void

    .line 51
    :cond_20
    const-string v1, "sys.scrolleroptimization.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerOptimizationDebug:I

    .line 52
    invoke-direct {p0, p1}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->initAppOptimizationConfig(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    sget-object v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->INSTANCE:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    if-nez v0, :cond_17

    .line 57
    const-class v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    monitor-enter v0

    .line 58
    :try_start_7
    sget-object v1, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->INSTANCE:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    if-nez v1, :cond_12

    .line 59
    new-instance v1, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    invoke-direct {v1, p0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->INSTANCE:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    .line 61
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 63
    :cond_17
    :goto_17
    sget-object v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->INSTANCE:Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;

    return-object v0
.end method

.method private blacklist initAppOptimizationConfig(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-static {}, Lmiui/hardware/input/MiuiInputManager;->getInstance()Lmiui/hardware/input/MiuiInputManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mMiuiInputManager:Lmiui/hardware/input/MiuiInputManager;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 70
    return-void

    .line 72
    :cond_11
    iget-object v1, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mMiuiInputManager:Lmiui/hardware/input/MiuiInputManager;

    if-eqz v1, :cond_28

    .line 73
    invoke-virtual {v1, v0}, Lmiui/hardware/input/MiuiInputManager;->getAppScrollerOptimizationConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "startData":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->parseRemoteData([Ljava/lang/String;)V

    .line 75
    move-object v2, v0

    .line 76
    .local v2, "finalPackageName":Ljava/lang/String;
    iget-object v3, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mMiuiInputManager:Lmiui/hardware/input/MiuiInputManager;

    new-instance v4, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$$ExternalSyntheticLambda0;-><init>(Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Lmiui/hardware/input/MiuiInputManager;->registerAppScrollerOptimizationConfigListener(Ljava/lang/String;Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;Landroid/os/Handler;)V

    .line 91
    .end local v1    # "startData":[Ljava/lang/String;
    .end local v2    # "finalPackageName":Ljava/lang/String;
    :cond_28
    return-void
.end method

.method private blacklist notifyAllConfigChangedListeners()V
    .registers 4

    .line 117
    iget-object v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 118
    .local v1, "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;

    .line 119
    .local v2, "configChangedListener":Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;
    if-eqz v2, :cond_1d

    .line 120
    invoke-interface {v2}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;->onConfigChanged()V

    .line 122
    .end local v1    # "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;>;"
    .end local v2    # "configChangedListener":Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;
    :cond_1d
    goto :goto_6

    .line 123
    :cond_1e
    return-void
.end method

.method private blacklist parseRemoteData([Ljava/lang/String;)V
    .registers 5
    .param p1, "data"    # [Ljava/lang/String;

    .line 97
    if-nez p1, :cond_9

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerMode:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mAppConfig:Ljava/lang/String;

    goto :goto_51

    .line 101
    :cond_9
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_41

    .line 102
    iput v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerMode:I

    .line 103
    aget-object v0, p1, v2

    iput-object v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mAppConfig:Ljava/lang/String;

    .line 104
    nop

    .line 105
    invoke-static {v0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationConfigUtils;->parseAppOptimizationConfig(Ljava/lang/String;)Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    move-result-object v0

    iput-object v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    .line 106
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerOptimizationDebug:I

    if-eqz v0, :cond_51

    .line 107
    sget-object v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseRemoteData: config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 109
    :cond_41
    aget-object v0, p1, v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 110
    iput v2, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerMode:I

    .line 111
    aget-object v0, p1, v2

    iput-object v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mAppConfig:Ljava/lang/String;

    .line 114
    :cond_51
    :goto_51
    return-void
.end method


# virtual methods
.method public blacklist getAppOptimizationConfig()Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;
    .registers 2

    .line 134
    iget-object v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerOptimizationConfig:Lmiui/hardware/input/overscroller/ScrollerOptimizationConfig;

    return-object v0
.end method

.method public blacklist getScrollerMode()I
    .registers 2

    .line 126
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerMode:I

    return v0
.end method

.method public blacklist isDebugEnable()Z
    .registers 2

    .line 130
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerOptimizationDebug:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method synthetic blacklist lambda$initAppOptimizationConfig$0$miui-hardware-input-overscroller-ScrollerOptimizationManager(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "finalPackageName"    # Ljava/lang/String;
    .param p2, "listenerData"    # [Ljava/lang/String;

    .line 78
    invoke-direct {p0, p2}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->parseRemoteData([Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mScrollerOptimizationDebug:I

    if-eqz v0, :cond_5a

    .line 80
    array-length v0, p2

    const/4 v1, 0x2

    const-string v2, "packageName:"

    if-ne v0, v1, :cond_3e

    .line 81
    sget-object v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", configData[0]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", configData[1]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 84
    :cond_3e
    sget-object v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", configData is null or invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_5a
    :goto_5a
    invoke-direct {p0}, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->notifyAllConfigChangedListeners()V

    .line 89
    return-void
.end method

.method public blacklist registerConfigChangedListener(Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;)V
    .registers 8
    .param p1, "listener"    # Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;

    .line 138
    sget-object v0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->TAG:Ljava/lang/String;

    const-string v1, "registerConfigChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "isContain":Z
    const/4 v1, 0x0

    .line 141
    .local v1, "configChangedListenersEmptyTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;>;>;"
    iget-object v2, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mConfigChangedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 142
    .local v3, "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;

    .line 143
    .local v4, "configChangedListener":Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;
    if-eqz v4, :cond_27

    .line 144
    if-ne v4, p1, :cond_32

    .line 145
    const/4 v0, 0x1

    goto :goto_32

    .line 148
    :cond_27
    if-nez v1, :cond_2f

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 151
    :cond_2f
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v3    # "listenerWeakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;>;"
    .end local v4    # "configChangedListener":Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;
    :cond_32
    :goto_32
    goto :goto_f

    .line 154
    :cond_33
    if-eqz v1, :cond_3a

    .line 155
    iget-object v2, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mConfigChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 157
    :cond_3a
    if-nez v0, :cond_46

    .line 158
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 159
    .local v2, "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;>;"
    iget-object v3, p0, Lmiui/hardware/input/overscroller/ScrollerOptimizationManager;->mConfigChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v2    # "listenerReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/hardware/input/overscroller/ScrollerOptimizationManager$ConfigChangedListener;>;"
    :cond_46
    return-void
.end method
