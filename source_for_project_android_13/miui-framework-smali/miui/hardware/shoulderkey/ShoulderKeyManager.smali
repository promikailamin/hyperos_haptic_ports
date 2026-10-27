.class public Lmiui/hardware/shoulderkey/ShoulderKeyManager;
.super Ljava/lang/Object;
.source "ShoulderKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;,
        Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;,
        Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SHOULDERKEY_EVENT:Ljava/lang/String; = "com.miui.shoulderkey"

.field public static final blacklist EXTRA_ACTION:Ljava/lang/String; = "action"

.field public static final blacklist EXTRA_POSITION:Ljava/lang/String; = "position"

.field public static final blacklist EXTRA_POSITION_LEFT:I = 0x0

.field public static final blacklist EXTRA_POSITION_RIGHT:I = 0x1

.field public static final blacklist EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final blacklist EXTRA_TYPE_KEY:I = 0x1

.field public static final blacklist EXTRA_TYPE_SWITCH:I = 0x0

.field private static final blacklist IShoulderKeyManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lmiui/hardware/shoulderkey/IShoulderKeyManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "shoulderkey"

.field public static final blacklist SHOULDERKEY_EVENT_PRODUCT_ID:I = 0x628

.field public static blacklist SUPPORT_MIGAMEMACRO:Z = false

.field public static blacklist SUPPORT_SHOULDERKEY:Z = false

.field public static blacklist SUPPORT_SHOULDERKEY_MORE:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ShoulderKeyManager"

.field private static final blacklist UNSUPPORT_MIGAME_MACRO:Ljava/lang/String; = "dosen\'t support Mi Game Macro!"

.field private static final blacklist UNSUPPORT_SHOULEDRKEY:Ljava/lang/String; = "dosen\'t support shoulderkey feature!"


# instance fields
.field private blacklist mTouchMotionEventListener:Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;

.field private blacklist mTouchMotionEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTouchMotionEventLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monTouchMotionEvent(Lmiui/hardware/shoulderkey/ShoulderKeyManager;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->onTouchMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 44
    nop

    .line 45
    const-string v0, "support_shoulder_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->SUPPORT_SHOULDERKEY:Z

    .line 46
    nop

    .line 47
    const-string v0, "support_shoulder_key_more"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->SUPPORT_SHOULDERKEY_MORE:Z

    .line 48
    nop

    .line 49
    const-string v0, "support_mi_game_macro"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->SUPPORT_MIGAMEMACRO:Z

    .line 55
    new-instance v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager$1;

    invoke-direct {v0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager$1;-><init>()V

    sput-object v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->IShoulderKeyManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventLock:Ljava/lang/Object;

    .line 52
    const-string v0, "ShoulderKeyManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method private blacklist findOnTouchMotionListenerLocked(Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;)I
    .registers 6
    .param p1, "listener"    # Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;

    .line 174
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListeners:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 175
    return v1

    .line 178
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 179
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_1d

    .line 180
    iget-object v3, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;

    iget-object v3, v3, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;->mListener:Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;

    if-ne v3, p1, :cond_1a

    .line 181
    return v2

    .line 179
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 184
    .end local v2    # "i":I
    :cond_1d
    return v1
.end method

.method private blacklist getService()Lmiui/hardware/shoulderkey/IShoulderKeyManager;
    .registers 2

    .line 68
    sget-object v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->IShoulderKeyManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    return-object v0
.end method

.method private blacklist initializeTouchMotionEventListenerLocked()V
    .registers 4

    .line 164
    new-instance v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;-><init>(Lmiui/hardware/shoulderkey/ShoulderKeyManager;Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal-IA;)V

    .line 166
    .local v0, "listener":Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;
    :try_start_6
    invoke-direct {p0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->getService()Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lmiui/hardware/shoulderkey/IShoulderKeyManager;->registerTouchMotionEventListener(Lmiui/hardware/shoulderkey/ITouchMotionEventListener;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_11

    .line 169
    nop

    .line 170
    iput-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListener:Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;

    .line 171
    return-void

    .line 167
    :catch_11
    move-exception v1

    .line 168
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist onTouchMotionEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 256
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 258
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 259
    iget-object v3, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListeners:Ljava/util/List;

    .line 260
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;

    .line 261
    .local v3, "listener":Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;
    invoke-virtual {v3, p1}, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;->sendTouchMotionEvent(Landroid/view/MotionEvent;)V

    .line 258
    .end local v3    # "listener":Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 263
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1a
    monitor-exit v0

    .line 264
    return-void

    .line 263
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method


# virtual methods
.method public blacklist getShoulderKeySwitchStatus(I)Z
    .registers 6
    .param p1, "position"    # I

    .line 135
    sget-boolean v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->SUPPORT_SHOULDERKEY:Z

    if-eqz v0, :cond_18

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "status":Z
    :try_start_5
    invoke-direct {p0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->getService()Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lmiui/hardware/shoulderkey/IShoulderKeyManager;->getShoulderKeySwitchStatus(I)Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_d} :catch_f

    move v0, v1

    .line 142
    goto :goto_17

    .line 140
    :catch_f
    move-exception v1

    .line 141
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ShoulderKeyManager"

    const-string v3, "getShoulderKeySwitchStatus failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    return v0

    .line 136
    .end local v0    # "status":Z
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "dosen\'t support shoulderkey feature!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist injectTouchMotionEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 120
    sget-boolean v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->SUPPORT_MIGAMEMACRO:Z

    if-eqz v0, :cond_15

    .line 124
    :try_start_4
    invoke-direct {p0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->getService()Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/hardware/shoulderkey/IShoulderKeyManager;->injectTouchMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 127
    goto :goto_14

    .line 125
    :catch_c
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ShoulderKeyManager"

    const-string v2, "injectTouchMotionEvent  failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void

    .line 121
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "dosen\'t support Mi Game Macro!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isSupportShoulderKeyFeature()Z
    .registers 2

    .line 72
    sget-boolean v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->SUPPORT_SHOULDERKEY:Z

    return v0
.end method

.method public blacklist isSupportShoulderKeyFeatureMore()Z
    .registers 2

    .line 76
    sget-boolean v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->SUPPORT_SHOULDERKEY:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->SUPPORT_SHOULDERKEY_MORE:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist loadLiftKeyMap(Ljava/util/Map;)V
    .registers 5
    .param p1, "mapper"    # Ljava/util/Map;

    .line 80
    sget-boolean v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->SUPPORT_SHOULDERKEY:Z

    if-eqz v0, :cond_15

    .line 83
    :try_start_4
    invoke-direct {p0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->getService()Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/hardware/shoulderkey/IShoulderKeyManager;->loadLiftKeyMap(Ljava/util/Map;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 86
    goto :goto_14

    .line 84
    :catch_c
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ShoulderKeyManager"

    const-string v2, "loadLiftKeyMap failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void

    .line 81
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "dosen\'t support shoulderkey feature!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist registerTouchMotionEventListener(Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 198
    const-string v0, "ShoulderKeyManager"

    const-string v1, "registerTouchMotionEventListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz p1, :cond_40

    .line 202
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_c
    iget-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListener:Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;

    if-nez v1, :cond_13

    .line 204
    invoke-direct {p0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->initializeTouchMotionEventListenerLocked()V

    .line 206
    :cond_13
    iget-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListener:Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;

    if-nez v1, :cond_20

    .line 207
    const-string v1, "ShoulderKeyManager"

    const-string v2, "registerTouchMotionEventListener failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    monitor-exit v0

    return-void

    .line 210
    :cond_20
    iget-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListeners:Ljava/util/List;

    if-nez v1, :cond_2b

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListeners:Ljava/util/List;

    .line 214
    :cond_2b
    invoke-direct {p0, p1}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->findOnTouchMotionListenerLocked(Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;)I

    move-result v1

    .line 215
    .local v1, "idx":I
    if-gez v1, :cond_3b

    .line 216
    new-instance v2, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;

    invoke-direct {v2, p1, p2}, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;-><init>(Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;Landroid/os/Handler;)V

    .line 218
    .local v2, "d":Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;
    iget-object v3, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v1    # "idx":I
    .end local v2    # "d":Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;
    :cond_3b
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_3d

    throw v1

    .line 200
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setInjectMotionEventStatus(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 105
    sget-boolean v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->SUPPORT_MIGAMEMACRO:Z

    if-eqz v0, :cond_2c

    .line 109
    :try_start_4
    invoke-direct {p0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->getService()Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiui/hardware/shoulderkey/IShoulderKeyManager;->setInjectMotionEventStatus(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 112
    goto :goto_2b

    .line 110
    :catch_c
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInjectMotionEventStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShoulderKeyManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void

    .line 106
    :cond_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "dosen\'t support Mi Game Macro!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unloadLiftKeyMap()V
    .registers 4

    .line 91
    sget-boolean v0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->SUPPORT_SHOULDERKEY:Z

    if-eqz v0, :cond_15

    .line 94
    :try_start_4
    invoke-direct {p0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->getService()Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    move-result-object v0

    invoke-interface {v0}, Lmiui/hardware/shoulderkey/IShoulderKeyManager;->unloadLiftKeyMap()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 97
    goto :goto_14

    .line 95
    :catch_c
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ShoulderKeyManager"

    const-string v2, "unloadLiftKeyMap failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void

    .line 92
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "dosen\'t support shoulderkey feature!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterTouchMotionEventListener(Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;)V
    .registers 6
    .param p1, "listener"    # Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;

    .line 230
    const-string v0, "ShoulderKeyManager"

    const-string v1, "unregisterTouchMotionEventListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz p1, :cond_41

    .line 234
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_c
    iget-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListener:Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;

    if-nez v1, :cond_12

    .line 236
    monitor-exit v0

    return-void

    .line 239
    :cond_12
    invoke-direct {p0, p1}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->findOnTouchMotionListenerLocked(Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;)I

    move-result v1

    .line 240
    .local v1, "idx":I
    const/4 v2, 0x0

    if-ltz v1, :cond_24

    .line 241
    iget-object v3, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;

    .line 242
    .local v3, "d":Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;
    invoke-virtual {v3, v2}, Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    .end local v3    # "d":Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerDelegate;
    :cond_24
    iget-object v3, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3c

    .line 246
    iput-object v2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->mTouchMotionEventListener:Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListenerInternal;
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_3e

    .line 248
    :try_start_2e
    invoke-direct {p0}, Lmiui/hardware/shoulderkey/ShoulderKeyManager;->getService()Lmiui/hardware/shoulderkey/IShoulderKeyManager;

    move-result-object v2

    invoke-interface {v2}, Lmiui/hardware/shoulderkey/IShoulderKeyManager;->unregisterTouchMotionEventListener()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_36
    .catchall {:try_start_2e .. :try_end_35} :catchall_3e

    .line 251
    goto :goto_3c

    .line 249
    :catch_36
    move-exception v2

    .line 250
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_37
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Lmiui/hardware/shoulderkey/ShoulderKeyManager;
    .end local p1    # "listener":Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;
    throw v3

    .line 253
    .end local v1    # "idx":I
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lmiui/hardware/shoulderkey/ShoulderKeyManager;
    .restart local p1    # "listener":Lmiui/hardware/shoulderkey/ShoulderKeyManager$TouchMotionEventListener;
    :cond_3c
    :goto_3c
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_3e

    throw v1

    .line 232
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
