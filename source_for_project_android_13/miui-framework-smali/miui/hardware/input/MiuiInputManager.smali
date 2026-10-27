.class public Lmiui/hardware/input/MiuiInputManager;
.super Ljava/lang/Object;
.source "MiuiInputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;,
        Lmiui/hardware/input/MiuiInputManager$MotionEventListener;,
        Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;,
        Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;,
        Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;,
        Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;,
        Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;,
        Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;,
        Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;,
        Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;,
        Lmiui/hardware/input/MiuiInputManager$DeviceShareStateListenerDelegate;,
        Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListener;,
        Lmiui/hardware/input/MiuiInputManager$DeviceShareMessageType;,
        Lmiui/hardware/input/MiuiInputManager$DeviceShareFlag;
    }
.end annotation


# static fields
.field public static final blacklist DEVICE_SHARE_FLAG_CURSOR_POSITION:I = 0x2

.field public static final blacklist DEVICE_SHARE_FLAG_KEY:I = 0x4

.field public static final blacklist DEVICE_SHARE_FLAG_MOTION:I = 0x8

.field public static final blacklist DEVICE_SHARE_FLAG_POINTER_COUNT:I = 0x10

.field public static final blacklist DEVICE_SHARE_FLAG_SHARE:I = 0x1

.field public static final blacklist DEVICE_SHARE_MESSAGE_TYPE_CURSOR_POSITION:I = 0x1

.field public static final blacklist DEVICE_SHARE_MESSAGE_TYPE_KEY:I = 0x2

.field public static final blacklist DEVICE_SHARE_MESSAGE_TYPE_MOTION:I = 0x3

.field public static final blacklist DEVICE_SHARE_MESSAGE_TYPE_POINTER_COUNT:I = 0x4

.field public static final blacklist DEVICE_SHARE_MESSAGE_TYPE_SHARE:I = 0x0

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "MiuiInputManager"

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiInputManager"

.field private static final blacklist VOICE_ASSIST_PACKAGE:Ljava/lang/String; = "com.miui.voiceassist"

.field private static blacklist sInstance:Lmiui/hardware/input/MiuiInputManager;

.field private static final blacklist sShortcutActionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAppScrollerListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeviceShareStateChangedListenerImpl:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;

.field private blacklist mDeviceShareStateListenerDelegate:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateListenerDelegate;

.field private blacklist mMiuiAppScrollerOptimizationConfigListener:Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;

.field private final blacklist mMiuiShortcutSettingsChangedDelegateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMiuiShortcutSettingsChangedListener:Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;

.field private blacklist mMotionEventListener:Lmiui/hardware/input/MiuiInputManager$MotionEventListener;

.field private final blacklist mMotionEventLock:Ljava/lang/Object;

.field private blacklist mOnMotionEventListenerDelegate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRegisterLocked:Ljava/lang/Object;

.field private final blacklist mScrollerListenerLock:Ljava/lang/Object;

.field private final blacklist mService:Lmiui/hardware/input/IMiuiInputManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdeliverSocketBroken(Lmiui/hardware/input/MiuiInputManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->deliverSocketBroken()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMotionEvent(Lmiui/hardware/input/MiuiInputManager;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/hardware/input/MiuiInputManager;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monScrollerOptimizationConfig(Lmiui/hardware/input/MiuiInputManager;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/hardware/input/MiuiInputManager;->onScrollerOptimizationConfig([Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSettingsChanged(Lmiui/hardware/input/MiuiInputManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/hardware/input/MiuiInputManager;->onSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsShortcutActionMap()Ljava/util/Map;
    .registers 1

    sget-object v0, Lmiui/hardware/input/MiuiInputManager;->sShortcutActionMap:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/hardware/input/MiuiInputManager;->sShortcutActionMap:Ljava/util/Map;

    .line 54
    const-string v1, "long_press_power_key"

    const-string v2, "long_press_home_key"

    const-string v3, "long_press_menu_key"

    const-string v4, "long_press_back_key"

    const-string v5, "key_none"

    const-string v6, "key_combination_power_home"

    const-string v7, "key_combination_power_menu"

    const-string v8, "key_combination_power_back"

    const-string v9, "double_knock"

    const-string v10, "knock_gesture_v"

    const-string v11, "launch_voice_assistant"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "com.miui.voiceassist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private constructor blacklist <init>(Lmiui/hardware/input/IMiuiInputManager;)V
    .registers 3
    .param p1, "service"    # Lmiui/hardware/input/IMiuiInputManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiShortcutSettingsChangedDelegateList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mRegisterLocked:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mScrollerListenerLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mAppScrollerListeners:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mMotionEventLock:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    .line 71
    return-void
.end method

.method private blacklist deliverSocketBroken()V
    .registers 3

    .line 717
    monitor-enter p0

    .line 718
    :try_start_1
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mDeviceShareStateListenerDelegate:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateListenerDelegate;

    if-nez v0, :cond_7

    .line 719
    monitor-exit p0

    return-void

    .line 721
    :cond_7
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/hardware/input/MiuiInputManager$DeviceShareStateListenerDelegate;->sendEmptyMessage(I)Z

    .line 723
    monitor-exit p0

    .line 724
    return-void

    .line 723
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public static blacklist deviceShareFlagToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "flag"    # I

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v0, "flags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 737
    and-int/lit8 p0, p0, -0x2

    .line 738
    const-string v1, "DEVICE_SHARE_FLAG_SHARE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1b

    .line 741
    and-int/lit8 p0, p0, -0x3

    .line 742
    const-string v1, "DEVICE_SHARE_FLAG_CURSOR_POSITION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_1b
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_26

    .line 745
    and-int/lit8 p0, p0, -0x5

    .line 746
    const-string v1, "DEVICE_SHARE_FLAG_KEY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_26
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_31

    .line 749
    and-int/lit8 p0, p0, -0x9

    .line 750
    const-string v1, "DEVICE_SHARE_FLAG_MOTION"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_31
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3c

    .line 753
    and-int/lit8 p0, p0, -0x11

    .line 754
    const-string v1, "DEVICE_SHARE_FLAG_POINTER_COUNT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_3c
    if-eqz p0, :cond_45

    .line 757
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_45
    const-string v1, " | "

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist findListenerIndex(Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;)I
    .registers 5
    .param p1, "target"    # Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;

    .line 414
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiShortcutSettingsChangedDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 415
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 416
    iget-object v2, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiShortcutSettingsChangedDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;

    invoke-static {v2}, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->-$$Nest$fgetmListener(Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;)Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;

    move-result-object v2

    if-ne v2, p1, :cond_18

    .line 417
    return v1

    .line 415
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 420
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findOnMotionEventListenerLocked(Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;)I
    .registers 5
    .param p1, "listener"    # Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;

    .line 487
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mOnMotionEventListenerDelegate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 488
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 489
    iget-object v2, p0, Lmiui/hardware/input/MiuiInputManager;->mOnMotionEventListenerDelegate:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;

    iget-object v2, v2, Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;->mListener:Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;

    if-ne v2, p1, :cond_16

    .line 490
    return v1

    .line 488
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 493
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist findScrollerListenerLocked(Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;)I
    .registers 5
    .param p1, "listener"    # Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;

    .line 293
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mAppScrollerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 294
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 295
    iget-object v2, p0, Lmiui/hardware/input/MiuiInputManager;->mAppScrollerListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;

    iget-object v2, v2, Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;->mListener:Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;

    if-ne v2, p1, :cond_16

    .line 296
    return v1

    .line 294
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 299
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist getCallingAppInfo()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 528
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 529
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_1a

    .line 533
    :cond_11
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 530
    :cond_1a
    :goto_1a
    const-string v0, "MiuiInputManager"

    const-string v1, "Application info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getInstance()Lmiui/hardware/input/MiuiInputManager;
    .registers 5

    .line 371
    const-class v0, Lmiui/hardware/input/MiuiInputManager;

    monitor-enter v0

    .line 372
    :try_start_3
    sget-object v1, Lmiui/hardware/input/MiuiInputManager;->sInstance:Lmiui/hardware/input/MiuiInputManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3a

    if-nez v1, :cond_36

    .line 374
    :try_start_7
    new-instance v1, Lmiui/hardware/input/MiuiInputManager;

    const-string v2, "MiuiInputManager"

    .line 375
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lmiui/hardware/input/IMiuiInputManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/input/IMiuiInputManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/hardware/input/MiuiInputManager;-><init>(Lmiui/hardware/input/IMiuiInputManager;)V

    sput-object v1, Lmiui/hardware/input/MiuiInputManager;->sInstance:Lmiui/hardware/input/MiuiInputManager;
    :try_end_18
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_18} :catch_19
    .catchall {:try_start_7 .. :try_end_18} :catchall_3a

    .line 378
    goto :goto_36

    .line 376
    :catch_19
    move-exception v1

    .line 377
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_1a
    const-string v2, "MiuiInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ServiceManager$ServiceNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_36
    :goto_36
    sget-object v1, Lmiui/hardware/input/MiuiInputManager;->sInstance:Lmiui/hardware/input/MiuiInputManager;

    monitor-exit v0

    return-object v1

    .line 381
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private blacklist initializeMotionEventListenerLocked()V
    .registers 5

    .line 468
    new-instance v0, Lmiui/hardware/input/MiuiInputManager$MotionEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/hardware/input/MiuiInputManager$MotionEventListener;-><init>(Lmiui/hardware/input/MiuiInputManager;Lmiui/hardware/input/MiuiInputManager$MotionEventListener-IA;)V

    .line 470
    .local v0, "listener":Lmiui/hardware/input/MiuiInputManager$MotionEventListener;
    :try_start_6
    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    invoke-interface {v1, v0}, Lmiui/hardware/input/IMiuiInputManager;->registerMiuiMotionEventListener(Lmiui/hardware/input/IMiuiMotionEventListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 473
    goto :goto_29

    .line 471
    :catch_c
    move-exception v1

    .line 472
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register MotionEventListener RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiInputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_29
    iput-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mMotionEventListener:Lmiui/hardware/input/MiuiInputManager$MotionEventListener;

    .line 475
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mOnMotionEventListenerDelegate:Ljava/util/List;

    .line 476
    return-void
.end method

.method private blacklist isLegalPerPermission()Z
    .registers 4

    .line 517
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->getCallingAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MiuiInputManager"

    if-nez v0, :cond_f

    .line 518
    const-string v0, "Current context is Exception!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return v1

    .line 520
    :cond_f
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->getCallingAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 521
    const-string v0, "Current context hasn\'t system permission!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return v1

    .line 524
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isSupportChangedAction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 508
    sget-object v0, Lmiui/hardware/input/MiuiInputManager;->sShortcutActionMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 509
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_17

    .line 513
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 510
    :cond_17
    :goto_17
    const-string v0, "MiuiInputManager"

    const-string v1, "Current application hasn\'t permission to changed this action!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 497
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mMotionEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mOnMotionEventListenerDelegate:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 499
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_20

    .line 500
    iget-object v3, p0, Lmiui/hardware/input/MiuiInputManager;->mOnMotionEventListenerDelegate:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;

    .line 501
    .local v3, "l":Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 499
    nop

    .end local v3    # "l":Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 504
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_20
    monitor-exit v0

    .line 505
    return-void

    .line 504
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private blacklist onScrollerOptimizationConfig([Ljava/lang/String;)V
    .registers 7
    .param p1, "configData"    # [Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mScrollerListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mAppScrollerListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 308
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_20

    .line 309
    iget-object v3, p0, Lmiui/hardware/input/MiuiInputManager;->mAppScrollerListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;

    .line 310
    .local v3, "listenerDelegate":Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;
    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 308
    nop

    .end local v3    # "listenerDelegate":Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 313
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_20
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private blacklist onSettingsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mRegisterLocked:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_3
    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiShortcutSettingsChangedDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;

    .line 397
    .local v2, "miuiShortcutSettingsChangedDelegate":Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;
    invoke-virtual {v2, p1}, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->isSupportAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 398
    const-string v3, "MiuiInputManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jump this notify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->-$$Nest$fgetmPackageName(Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    goto :goto_9

    .line 402
    :cond_42
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 404
    .local v3, "msg":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 405
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "function"

    invoke-virtual {v4, v5, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v5, "action"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 408
    invoke-virtual {v2, v3}, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 409
    nop

    .end local v2    # "miuiShortcutSettingsChangedDelegate":Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "bundle":Landroid/os/Bundle;
    goto :goto_9

    .line 410
    :cond_5e
    monitor-exit v0

    .line 411
    return-void

    .line 410
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method private blacklist populateScrollerListenerLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiAppScrollerOptimizationConfigListener:Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;

    if-nez v0, :cond_2f

    .line 278
    new-instance v0, Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;-><init>(Lmiui/hardware/input/MiuiInputManager;Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener-IA;)V

    .line 280
    .local v0, "miuiAppScrollerOptimizationConfigListener":Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;
    :try_start_a
    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    invoke-interface {v1, p1, v0}, Lmiui/hardware/input/IMiuiInputManager;->registerAppScrollerOptimizationConfigListener(Ljava/lang/String;Lmiui/hardware/input/IAppScrollerOptimizationConfigChangedListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    .line 284
    goto :goto_2d

    .line 282
    :catch_10
    move-exception v1

    .line 283
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiInputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2d
    iput-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiAppScrollerOptimizationConfigListener:Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;

    .line 287
    .end local v0    # "miuiAppScrollerOptimizationConfigListener":Lmiui/hardware/input/MiuiInputManager$MiuiAppScrollerOptimizationConfigListener;
    :cond_2f
    return-void
.end method

.method private blacklist populateSettingsChangedListenerLocked()V
    .registers 4

    .line 385
    new-instance v0, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;-><init>(Lmiui/hardware/input/MiuiInputManager;Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener-IA;)V

    .line 387
    .local v0, "listener":Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;
    :try_start_6
    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    invoke-interface {v1, v0}, Lmiui/hardware/input/IMiuiInputManager;->registerShortcutChangedListener(Lmiui/hardware/input/IShortcutSettingsChangedListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_f

    .line 390
    nop

    .line 391
    iput-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiShortcutSettingsChangedListener:Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;

    .line 392
    return-void

    .line 388
    :catch_f
    move-exception v1

    .line 389
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist unregisterMiuiMotionEventListener()V
    .registers 4

    .line 480
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    invoke-interface {v0}, Lmiui/hardware/input/IMiuiInputManager;->unregisterMiuiMotionEventListener()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 483
    goto :goto_23

    .line 481
    :catch_6
    move-exception v0

    .line 482
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister MotionEventListener RemoteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method


# virtual methods
.method public blacklist getAppScrollerOptimizationConfig(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_26

    .line 248
    :try_start_4
    invoke-interface {v0, p1}, Lmiui/hardware/input/IMiuiInputManager;->getAppScrollerOptimizationConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 249
    :catch_9
    move-exception v0

    .line 250
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDefaultKeyboardShortcutInfos()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_26

    .line 106
    :try_start_4
    invoke-interface {v0}, Lmiui/hardware/input/IMiuiInputManager;->getDefaultKeyboardShortcutInfos()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 107
    :catch_9
    move-exception v0

    .line 108
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist getEdgeSuppressionSize(Z)[I
    .registers 5
    .param p1, "isAbsolute"    # Z

    .line 132
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_26

    .line 134
    :try_start_4
    invoke-interface {v0, p1}, Lmiui/hardware/input/IMiuiInputManager;->getEdgeSuppressionSize(Z)[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 135
    :catch_9
    move-exception v0

    .line 136
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_26
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public blacklist getKeyboardBackLightBrightness()I
    .registers 4

    .line 330
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_26

    .line 332
    :try_start_4
    invoke-interface {v0}, Lmiui/hardware/input/IMiuiInputManager;->getKeyboardBackLightBrightness()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 333
    :catch_9
    move-exception v0

    .line 334
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getKeyboardShortcut()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_26

    .line 92
    :try_start_4
    invoke-interface {v0}, Lmiui/hardware/input/IMiuiInputManager;->getKeyboardShortcut()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 93
    :catch_9
    move-exception v0

    .line 94
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist getKeyboardType()I
    .registers 4

    .line 341
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_26

    .line 343
    :try_start_4
    invoke-interface {v0}, Lmiui/hardware/input/IMiuiInputManager;->getKeyboardType()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 344
    :catch_9
    move-exception v0

    .line 345
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMiKeyboardStatus()Ljava/lang/String;
    .registers 4

    .line 118
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_26

    .line 120
    :try_start_4
    invoke-interface {v0}, Lmiui/hardware/input/IMiuiInputManager;->getMiKeyboardStatus()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 121
    :catch_9
    move-exception v0

    .line 122
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hideCursor()Z
    .registers 3

    .line 158
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    invoke-interface {v0}, Lmiui/hardware/input/IMiuiInputManager;->hideCursor()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 159
    :catch_7
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist putStringForUser(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->isLegalPerPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->getCallingAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 180
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->getCallingAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 179
    invoke-direct {p0, p1, v0}, Lmiui/hardware/input/MiuiInputManager;->isSupportChangedAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_2e

    .line 182
    :cond_1a
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_2d

    .line 184
    :try_start_1e
    invoke-interface {v0, p1, p2}, Lmiui/hardware/input/IMiuiInputManager;->putStringForUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_22} :catch_23

    return v0

    .line 185
    :catch_23
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiInputManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2d
    return v1

    .line 181
    :cond_2e
    :goto_2e
    return v1
.end method

.method public blacklist registerAppScrollerOptimizationConfigListener(Ljava/lang/String;Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;Landroid/os/Handler;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 261
    if-nez p2, :cond_12

    .line 262
    const-string v0, "MiuiInputManager"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_12
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mScrollerListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_15
    invoke-direct {p0, p1}, Lmiui/hardware/input/MiuiInputManager;->populateScrollerListenerLocked(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, p2}, Lmiui/hardware/input/MiuiInputManager;->findScrollerListenerLocked(Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;)I

    move-result v1

    .line 267
    .local v1, "index":I
    if-gez v1, :cond_29

    .line 268
    iget-object v2, p0, Lmiui/hardware/input/MiuiInputManager;->mAppScrollerListeners:Ljava/util/ArrayList;

    new-instance v3, Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;

    const/4 v4, 0x0

    invoke-direct {v3, p2, p3, v4}, Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate;-><init>(Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListener;Landroid/os/Handler;Lmiui/hardware/input/MiuiInputManager$AppScrollerOptimizationConfigListenerDelegate-IA;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v1    # "index":I
    :cond_29
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public blacklist registerMiuiMotionEventListener(Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 427
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_32

    .line 431
    :cond_9
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->isLegalPerPermission()Z

    move-result v0

    if-eqz v0, :cond_31

    if-nez p1, :cond_12

    goto :goto_31

    .line 434
    :cond_12
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mMotionEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    :try_start_15
    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mMotionEventListener:Lmiui/hardware/input/MiuiInputManager$MotionEventListener;

    if-nez v1, :cond_1c

    .line 436
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->initializeMotionEventListenerLocked()V

    .line 438
    :cond_1c
    invoke-direct {p0, p1}, Lmiui/hardware/input/MiuiInputManager;->findOnMotionEventListenerLocked(Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;)I

    move-result v1

    .line 439
    .local v1, "idx":I
    if-gez v1, :cond_2c

    .line 440
    new-instance v2, Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;

    invoke-direct {v2, p1, p2}, Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;-><init>(Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;Landroid/os/Handler;)V

    .line 442
    .local v2, "d":Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;
    iget-object v3, p0, Lmiui/hardware/input/MiuiInputManager;->mOnMotionEventListenerDelegate:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    .end local v1    # "idx":I
    .end local v2    # "d":Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;
    :cond_2c
    monitor-exit v0

    .line 445
    return-void

    .line 444
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v1

    .line 432
    :cond_31
    :goto_31
    return-void

    .line 428
    :cond_32
    :goto_32
    const-string v0, "MiuiInputManager"

    const-string v1, "Handler is not allow null, and need to bind looper"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method public blacklist registerShortcutChangedListener(Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;Landroid/os/Handler;)V
    .registers 8
    .param p1, "listener"    # Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 223
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->isLegalPerPermission()Z

    move-result v0

    if-eqz v0, :cond_3a

    if-nez p1, :cond_9

    goto :goto_3a

    .line 226
    :cond_9
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mRegisterLocked:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_c
    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiShortcutSettingsChangedListener:Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;

    if-nez v1, :cond_13

    .line 228
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->populateSettingsChangedListenerLocked()V

    .line 230
    :cond_13
    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiShortcutSettingsChangedListener:Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;

    if-nez v1, :cond_19

    .line 231
    monitor-exit v0

    return-void

    .line 233
    :cond_19
    invoke-direct {p0, p1}, Lmiui/hardware/input/MiuiInputManager;->findListenerIndex(Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;)I

    move-result v1

    .line 234
    .local v1, "index":I
    if-gez v1, :cond_35

    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->getCallingAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 235
    iget-object v2, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiShortcutSettingsChangedDelegateList:Ljava/util/ArrayList;

    new-instance v3, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;

    .line 237
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->getCallingAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, p0, p1, p2, v4}, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;-><init>(Lmiui/hardware/input/MiuiInputManager;Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;Landroid/os/Handler;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v1    # "index":I
    :cond_35
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_37

    throw v1

    .line 224
    :cond_3a
    :goto_3a
    return-void
.end method

.method public blacklist requestRedirect(I)V
    .registers 4
    .param p1, "motionEventId"    # I

    .line 355
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_e

    .line 357
    :try_start_4
    invoke-interface {v0, p1}, Lmiui/hardware/input/IMiuiInputManager;->requestRedirect(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 360
    goto :goto_e

    .line 358
    :catch_8
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 362
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_e
    :goto_e
    return-void
.end method

.method public blacklist setCursorPosition(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 147
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    invoke-interface {v0, p1, p2}, Lmiui/hardware/input/IMiuiInputManager;->setCursorPosition(FF)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 148
    :catch_7
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDeviceShareListener(Landroid/os/ParcelFileDescriptor;ILmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListener;Landroid/os/Handler;)V
    .registers 9
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "flags"    # I
    .param p3, "listener"    # Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 660
    if-eqz p2, :cond_f

    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    goto :goto_f

    .line 661
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd or listener must not null when register listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_f
    :goto_f
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-nez v0, :cond_14

    .line 665
    return-void

    .line 667
    :cond_14
    monitor-enter p0

    .line 668
    const/4 v0, 0x0

    if-eqz p2, :cond_26

    :try_start_18
    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mDeviceShareStateChangedListenerImpl:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;

    if-nez v1, :cond_26

    .line 670
    new-instance v1, Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;

    invoke-direct {v1, p0, v0}, Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;-><init>(Lmiui/hardware/input/MiuiInputManager;Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl-IA;)V

    iput-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mDeviceShareStateChangedListenerImpl:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;

    goto :goto_2e

    .line 683
    :catchall_24
    move-exception v0

    goto :goto_60

    .line 671
    :cond_26
    if-nez p2, :cond_2e

    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mDeviceShareStateChangedListenerImpl:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;

    if-eqz v1, :cond_2e

    .line 673
    iput-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mDeviceShareStateChangedListenerImpl:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;

    .line 676
    :cond_2e
    :goto_2e
    if-nez p2, :cond_31

    .line 677
    :goto_30
    goto :goto_37

    :cond_31
    new-instance v0, Lmiui/hardware/input/MiuiInputManager$DeviceShareStateListenerDelegate;

    invoke-direct {v0, p3, p4}, Lmiui/hardware/input/MiuiInputManager$DeviceShareStateListenerDelegate;-><init>(Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListener;Landroid/os/Handler;)V

    goto :goto_30

    :goto_37
    iput-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mDeviceShareStateListenerDelegate:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateListenerDelegate;
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_24

    .line 679
    :try_start_39
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    iget-object v1, p0, Lmiui/hardware/input/MiuiInputManager;->mDeviceShareStateChangedListenerImpl:Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;

    invoke-interface {v0, p1, p2, v1}, Lmiui/hardware/input/IMiuiInputManager;->setDeviceShareListener(Landroid/os/ParcelFileDescriptor;ILmiui/hardware/input/IDeviceShareStateChangedListener;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_41
    .catchall {:try_start_39 .. :try_end_40} :catchall_24

    .line 682
    goto :goto_5e

    .line 680
    :catch_41
    move-exception v0

    .line 681
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_42
    const-string v1, "MiuiInputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_5e
    monitor-exit p0

    .line 684
    return-void

    .line 683
    :goto_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_24

    throw v0
.end method

.method public blacklist setHasEditTextOnScreen(Z)V
    .registers 4
    .param p1, "hasEditText"    # Z

    .line 169
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    invoke-interface {v0, p1}, Lmiui/hardware/input/IMiuiInputManager;->setHasEditTextOnScreen(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 172
    nop

    .line 173
    return-void

    .line 170
    :catch_7
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setKeyboardBackLightBrightness(I)V
    .registers 5
    .param p1, "brightness"    # I

    .line 320
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_25

    .line 322
    :try_start_4
    invoke-interface {v0, p1}, Lmiui/hardware/input/IMiuiInputManager;->setKeyboardBackLightBrightness(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 325
    goto :goto_25

    .line 323
    :catch_8
    move-exception v0

    .line 324
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_25
    :goto_25
    return-void
.end method

.method public blacklist setTouchpadButtonState(IZ)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "isDown"    # Z

    .line 789
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_25

    .line 791
    :try_start_4
    invoke-interface {v0, p1, p2}, Lmiui/hardware/input/IMiuiInputManager;->setTouchpadButtonState(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 794
    goto :goto_25

    .line 792
    :catch_8
    move-exception v0

    .line 793
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_25
    :goto_25
    return-void
.end method

.method public blacklist unregisterMiuiMotionEventListener(Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;)V
    .registers 7
    .param p1, "listener"    # Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;

    .line 451
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->isLegalPerPermission()Z

    move-result v0

    if-eqz v0, :cond_30

    if-nez p1, :cond_9

    goto :goto_30

    .line 454
    :cond_9
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mMotionEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_c
    invoke-direct {p0, p1}, Lmiui/hardware/input/MiuiInputManager;->findOnMotionEventListenerLocked(Lmiui/hardware/input/MiuiInputManager$MiuiMotionEventListener;)I

    move-result v1

    .line 456
    .local v1, "idx":I
    if-ltz v1, :cond_2b

    .line 457
    iget-object v2, p0, Lmiui/hardware/input/MiuiInputManager;->mOnMotionEventListenerDelegate:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;

    .line 458
    .local v2, "d":Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 459
    iget-object v4, p0, Lmiui/hardware/input/MiuiInputManager;->mOnMotionEventListenerDelegate:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 460
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->unregisterMiuiMotionEventListener()V

    .line 461
    iput-object v3, p0, Lmiui/hardware/input/MiuiInputManager;->mMotionEventListener:Lmiui/hardware/input/MiuiInputManager$MotionEventListener;

    .line 464
    .end local v1    # "idx":I
    .end local v2    # "d":Lmiui/hardware/input/MiuiInputManager$OnMotionEventListenerDelegate;
    :cond_2b
    monitor-exit v0

    .line 465
    return-void

    .line 464
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_2d

    throw v1

    .line 452
    :cond_30
    :goto_30
    return-void
.end method

.method public blacklist unregisterShortcutChangedListener(Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;)V
    .registers 7
    .param p1, "listener"    # Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;

    .line 196
    invoke-direct {p0}, Lmiui/hardware/input/MiuiInputManager;->isLegalPerPermission()Z

    move-result v0

    if-eqz v0, :cond_3d

    if-nez p1, :cond_9

    goto :goto_3d

    .line 199
    :cond_9
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mRegisterLocked:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_c
    invoke-direct {p0, p1}, Lmiui/hardware/input/MiuiInputManager;->findListenerIndex(Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsListener;)I

    move-result v1

    .line 201
    .local v1, "index":I
    const/4 v2, 0x0

    if-ltz v1, :cond_1e

    .line 202
    iget-object v3, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiShortcutSettingsChangedDelegateList:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;

    .line 204
    .local v3, "deleteTarget":Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;
    invoke-virtual {v3, v2}, Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 207
    .end local v3    # "deleteTarget":Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedDelegate;
    :cond_1e
    iget-object v3, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiShortcutSettingsChangedDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_38

    .line 208
    iput-object v2, p0, Lmiui/hardware/input/MiuiInputManager;->mMiuiShortcutSettingsChangedListener:Lmiui/hardware/input/MiuiInputManager$MiuiShortcutSettingsChangedListener;
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_3a

    .line 210
    :try_start_28
    iget-object v2, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    invoke-interface {v2}, Lmiui/hardware/input/IMiuiInputManager;->unregisterShortcutChangedListener()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_3a

    .line 213
    goto :goto_38

    .line 211
    :catch_2e
    move-exception v2

    .line 212
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2f
    const-string v3, "MiuiInputManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v1    # "index":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_38
    :goto_38
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_3a

    throw v1

    .line 197
    :cond_3d
    :goto_3d
    return-void
.end method

.method public blacklist updateKeyboardShortcut(Landroid/view/KeyboardShortcutInfo;I)V
    .registers 6
    .param p1, "info"    # Landroid/view/KeyboardShortcutInfo;
    .param p2, "type"    # I

    .line 77
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager;->mService:Lmiui/hardware/input/IMiuiInputManager;

    if-eqz v0, :cond_25

    .line 79
    :try_start_4
    invoke-interface {v0, p1, p2}, Lmiui/hardware/input/IMiuiInputManager;->updateKeyboardShortcut(Landroid/view/KeyboardShortcutInfo;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 82
    goto :goto_25

    .line 80
    :catch_8
    move-exception v0

    .line 81
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiInputManagerService RemoteException Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiInputManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_25
    :goto_25
    return-void
.end method
