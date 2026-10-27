.class Lcom/android/server/audio/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RotationHelper$AudioDisplayListener;
    }
.end annotation


# static fields
.field private static final DEBUG_ROTATION:Z = false

.field private static final TAG:Ljava/lang/String; = "AudioService.RotationHelper"

.field private static sContext:Landroid/content/Context;

.field private static sDeviceFold:Z

.field private static sDeviceRotation:I

.field private static sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

.field private static sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field private static final sFoldStateLock:Ljava/lang/Object;

.field private static sFoldUpdateCb:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;

.field private static final sRotationLock:Ljava/lang/Object;

.field private static sRotationUpdateCb:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateLock:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/audio/RotationHelper;->sDeviceFold:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disable()V
    .registers 2

    .line 99
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 100
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 101
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 102
    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 103
    return-void
.end method

.method static enable()V
    .registers 3

    .line 89
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 91
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 93
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    sget-object v1, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/audio/RotationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/audio/RotationHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 94
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sget-object v2, Lcom/android/server/audio/RotationHelper;->sFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 96
    return-void
.end method

.method static init(Landroid/content/Context;Landroid/os/Handler;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p2, "rotationUpdateCb":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    .local p3, "foldUpdateCb":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    if-eqz p0, :cond_15

    .line 80
    sput-object p0, Lcom/android/server/audio/RotationHelper;->sContext:Landroid/content/Context;

    .line 81
    sput-object p1, Lcom/android/server/audio/RotationHelper;->sHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    invoke-direct {v0}, Lcom/android/server/audio/RotationHelper$AudioDisplayListener;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper;->sDisplayListener:Lcom/android/server/audio/RotationHelper$AudioDisplayListener;

    .line 83
    sput-object p2, Lcom/android/server/audio/RotationHelper;->sRotationUpdateCb:Ljava/util/function/Consumer;

    .line 84
    sput-object p3, Lcom/android/server/audio/RotationHelper;->sFoldUpdateCb:Ljava/util/function/Consumer;

    .line 85
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 86
    return-void

    .line 78
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$enable$0(Ljava/lang/Boolean;)V
    .registers 2
    .param p0, "folded"    # Ljava/lang/Boolean;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/RotationHelper;->updateFoldState(Z)V

    return-void
.end method

.method private static publishRotation(I)V
    .registers 3
    .param p0, "rotation"    # I

    .line 127
    packed-switch p0, :pswitch_data_24

    .line 141
    const-string v0, "AudioService.RotationHelper"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    .local v0, "rotationParam":Ljava/lang/String;
    goto :goto_1c

    .line 138
    .end local v0    # "rotationParam":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "rotation=270"

    .line 139
    .restart local v0    # "rotationParam":Ljava/lang/String;
    goto :goto_1c

    .line 135
    .end local v0    # "rotationParam":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v0, "rotation=180"

    .line 136
    .restart local v0    # "rotationParam":Ljava/lang/String;
    goto :goto_1c

    .line 132
    .end local v0    # "rotationParam":Ljava/lang/String;
    :pswitch_14
    const-string/jumbo v0, "rotation=90"

    .line 133
    .restart local v0    # "rotationParam":Ljava/lang/String;
    goto :goto_1c

    .line 129
    .end local v0    # "rotationParam":Ljava/lang/String;
    :pswitch_18
    const-string/jumbo v0, "rotation=0"

    .line 130
    .restart local v0    # "rotationParam":Ljava/lang/String;
    nop

    .line 144
    :goto_1c
    if-eqz v0, :cond_23

    .line 145
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sRotationUpdateCb:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 147
    :cond_23
    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method static updateFoldState(Z)V
    .registers 4
    .param p0, "newFolded"    # Z

    .line 153
    sget-object v0, Lcom/android/server/audio/RotationHelper;->sFoldStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    sget-boolean v1, Lcom/android/server/audio/RotationHelper;->sDeviceFold:Z

    if-eq v1, p0, :cond_15

    .line 155
    sput-boolean p0, Lcom/android/server/audio/RotationHelper;->sDeviceFold:Z

    .line 157
    if-eqz p0, :cond_e

    .line 158
    const-string v1, "device_folded=on"

    .local v1, "foldParam":Ljava/lang/String;
    goto :goto_10

    .line 160
    .end local v1    # "foldParam":Ljava/lang/String;
    :cond_e
    const-string v1, "device_folded=off"

    .line 162
    .restart local v1    # "foldParam":Ljava/lang/String;
    :goto_10
    sget-object v2, Lcom/android/server/audio/RotationHelper;->sFoldUpdateCb:Ljava/util/function/Consumer;

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 164
    .end local v1    # "foldParam":Ljava/lang/String;
    :cond_15
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method static updateOrientation()V
    .registers 3

    .line 112
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 114
    .local v0, "newRotation":I
    sget-object v1, Lcom/android/server/audio/RotationHelper;->sRotationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_e
    sget v2, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    if-eq v0, v2, :cond_17

    .line 116
    sput v0, Lcom/android/server/audio/RotationHelper;->sDeviceRotation:I

    .line 117
    invoke-static {v0}, Lcom/android/server/audio/RotationHelper;->publishRotation(I)V

    .line 119
    :cond_17
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v2
.end method
