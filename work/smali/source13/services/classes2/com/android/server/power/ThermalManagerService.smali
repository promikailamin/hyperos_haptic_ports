.class public Lcom/android/server/power/ThermalManagerService;
.super Lcom/android/server/SystemService;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;,
        Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;,
        Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

.field private mIsStatusOverride:Z

.field private final mLock:Ljava/lang/Object;

.field final mService:Landroid/os/IThermalService$Stub;

.field private mStatus:I

.field private mTemperatureMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end field

.field final mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

.field private final mThermalEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IThermalEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mThermalStatusListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IThermalStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$EFa1q7lNzNJKR9kHjyMZOluNpXA(Lcom/android/server/power/ThermalManagerService;Landroid/os/Temperature;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChangedCallback(Landroid/os/Temperature;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHalReady(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHalWrapper(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsStatusOverride(Lcom/android/server/power/ThermalManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatus(Lcom/android/server/power/ThermalManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemperatureMap(Lcom/android/server/power/ThermalManagerService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThermalEventListeners(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThermalStatusListeners(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsStatusOverride(Lcom/android/server/power/ThermalManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monTemperatureMapChangedLocked(Lcom/android/server/power/ThermalManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostEventListenerCurrentTemperatures(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ThermalManagerService;->postEventListenerCurrentTemperatures(Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostStatusListener(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->postStatusListener(Landroid/os/IThermalStatusListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStatusLocked(Lcom/android/server/power/ThermalManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 73
    const-class v0, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ThermalManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    .line 115
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halWrapper"    # Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 87
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance v0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    .line 311
    new-instance v0, Lcom/android/server/power/ThermalManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$1;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    .line 120
    iput-object p2, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 122
    return-void
.end method

.method static synthetic lambda$postEventListener$1(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V
    .registers 5
    .param p0, "listener"    # Landroid/os/IThermalEventListener;
    .param p1, "temperature"    # Landroid/os/Temperature;

    .line 240
    :try_start_0
    invoke-interface {p0, p1}, Landroid/os/IThermalEventListener;->notifyThrottling(Landroid/os/Temperature;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 243
    goto :goto_c

    .line 241
    :catch_4
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Thermal callback failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private notifyEventListenersLocked(Landroid/os/Temperature;)V
    .registers 7
    .param p1, "temperature"    # Landroid/os/Temperature;

    .line 251
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 253
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_26

    .line 254
    :try_start_9
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 255
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IThermalEventListener;

    .line 256
    .local v2, "listener":Landroid/os/IThermalEventListener;
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    .line 257
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 258
    .local v3, "type":Ljava/lang/Integer;
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/power/ThermalManagerService;->postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1f

    .line 253
    .end local v2    # "listener":Landroid/os/IThermalEventListener;
    .end local v3    # "type":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 261
    .end local v1    # "i":I
    :catchall_1f
    move-exception v1

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 262
    throw v1

    .line 261
    :cond_26
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 262
    nop

    .line 263
    const/16 v1, 0xab1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 264
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/os/Temperature;->getValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 263
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 265
    return-void
.end method

.method private notifyStatusListenersLocked()V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 188
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 189
    :try_start_9
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    .line 190
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IThermalStatusListener;

    .line 191
    .local v2, "listener":Landroid/os/IThermalStatusListener;
    invoke-direct {p0, v2}, Lcom/android/server/power/ThermalManagerService;->postStatusListener(Landroid/os/IThermalStatusListener;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_17

    .line 188
    .end local v2    # "listener":Landroid/os/IThermalStatusListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 194
    .end local v1    # "i":I
    :catchall_17
    move-exception v1

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 195
    throw v1

    .line 194
    :cond_1e
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mThermalStatusListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 195
    nop

    .line 196
    return-void
.end method

.method private onActivityManagerReady()V
    .registers 9

    .line 137
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    move v1, v3

    .line 140
    .local v1, "halConnected":Z
    :goto_c
    if-nez v1, :cond_1a

    .line 141
    new-instance v4, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    invoke-direct {v4}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;-><init>()V

    iput-object v4, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 142
    invoke-virtual {v4}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v4

    move v1, v4

    .line 144
    :cond_1a
    if-nez v1, :cond_28

    .line 145
    new-instance v4, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;

    invoke-direct {v4}, Lcom/android/server/power/ThermalManagerService$ThermalHal11Wrapper;-><init>()V

    iput-object v4, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 146
    invoke-virtual {v4}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v4

    move v1, v4

    .line 148
    :cond_28
    if-nez v1, :cond_36

    .line 149
    new-instance v4, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;

    invoke-direct {v4}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;-><init>()V

    iput-object v4, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    .line 150
    invoke-virtual {v4}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->connectToHal()Z

    move-result v4

    move v1, v4

    .line 152
    :cond_36
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    new-instance v5, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    invoke-virtual {v4, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->setCallback(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$TemperatureChangedCallback;)V

    .line 153
    if-nez v1, :cond_4b

    .line 154
    sget-object v2, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v3, "No Thermal HAL service on this device"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    monitor-exit v0

    return-void

    .line 157
    :cond_4b
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService;->mHalWrapper:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    invoke-virtual {v4, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v4

    .line 159
    .local v4, "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 160
    .local v5, "count":I
    if-nez v5, :cond_5e

    .line 161
    sget-object v6, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v7, "Thermal HAL reported invalid data, abort connection"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_5e
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5f
    if-ge v6, v5, :cond_6d

    .line 164
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Temperature;

    invoke-direct {p0, v7, v3}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 166
    .end local v6    # "i":I
    :cond_6d
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 167
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureWatcher:Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;

    invoke-virtual {v3}, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher;->updateSevereThresholds()V

    .line 168
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mHalReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    .end local v1    # "halConnected":Z
    .end local v4    # "temperatures":Ljava/util/List;, "Ljava/util/List<Landroid/os/Temperature;>;"
    .end local v5    # "count":I
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method private onTemperatureChanged(Landroid/os/Temperature;Z)V
    .registers 7
    .param p1, "temperature"    # Landroid/os/Temperature;
    .param p2, "sendStatus"    # Z

    .line 289
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->shutdownIfNeeded(Landroid/os/Temperature;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_6
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Temperature;

    .line 292
    .local v1, "old":Landroid/os/Temperature;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/os/Temperature;->getStatus()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v3

    if-eq v2, v3, :cond_21

    .line 293
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/power/ThermalManagerService;->notifyEventListenersLocked(Landroid/os/Temperature;)V

    .line 295
    :cond_21
    if-eqz p2, :cond_26

    .line 296
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onTemperatureMapChangedLocked()V

    .line 298
    .end local v1    # "old":Landroid/os/Temperature;
    :cond_26
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private onTemperatureChangedCallback(Landroid/os/Temperature;)V
    .registers 5
    .param p1, "temperature"    # Landroid/os/Temperature;

    .line 303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 305
    .local v0, "token":J
    const/4 v2, 0x1

    :try_start_5
    invoke-direct {p0, p1, v2}, Lcom/android/server/power/ThermalManagerService;->onTemperatureChanged(Landroid/os/Temperature;Z)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 307
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    nop

    .line 309
    return-void

    .line 307
    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    throw v2
.end method

.method private onTemperatureMapChangedLocked()V
    .registers 7

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "newStatus":I
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 201
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_26

    .line 202
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Temperature;

    .line 203
    .local v3, "t":Landroid/os/Temperature;
    invoke-virtual {v3}, Landroid/os/Temperature;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_23

    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v4

    if-lt v4, v0, :cond_23

    .line 204
    invoke-virtual {v3}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    .line 201
    .end local v3    # "t":Landroid/os/Temperature;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 208
    .end local v2    # "i":I
    :cond_26
    iget-boolean v2, p0, Lcom/android/server/power/ThermalManagerService;->mIsStatusOverride:Z

    if-nez v2, :cond_2d

    .line 209
    invoke-direct {p0, v0}, Lcom/android/server/power/ThermalManagerService;->setStatusLocked(I)V

    .line 211
    :cond_2d
    return-void
.end method

.method private postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "temperature"    # Landroid/os/Temperature;
    .param p2, "listener"    # Landroid/os/IThermalEventListener;
    .param p3, "type"    # Ljava/lang/Integer;

    .line 235
    if-eqz p3, :cond_d

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 236
    return-void

    .line 238
    :cond_d
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p1}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/os/IThermalEventListener;Landroid/os/Temperature;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 245
    .local v0, "thermalCallbackQueued":Z
    if-nez v0, :cond_23

    .line 246
    sget-object v1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Thermal callback failed to queue"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_23
    return-void
.end method

.method private postEventListenerCurrentTemperatures(Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "listener"    # Landroid/os/IThermalEventListener;
    .param p2, "type"    # Ljava/lang/Integer;

    .line 222
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 224
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1a

    .line 225
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService;->mTemperatureMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Temperature;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/power/ThermalManagerService;->postEventListener(Landroid/os/Temperature;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 228
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1a
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private postStatusListener(Landroid/os/IThermalStatusListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/IThermalStatusListener;

    .line 173
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/ThermalManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    .line 180
    .local v0, "thermalCallbackQueued":Z
    if-nez v0, :cond_16

    .line 181
    sget-object v1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Thermal callback failed to queue"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_16
    return-void
.end method

.method private setStatusLocked(I)V
    .registers 3
    .param p1, "newStatus"    # I

    .line 214
    iget v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    if-eq p1, v0, :cond_9

    .line 215
    iput p1, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    .line 216
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->notifyStatusListenersLocked()V

    .line 218
    :cond_9
    return-void
.end method

.method private shutdownIfNeeded(Landroid/os/Temperature;)V
    .registers 5
    .param p1, "temperature"    # Landroid/os/Temperature;

    .line 268
    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    .line 269
    return-void

    .line 271
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 272
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/os/Temperature;->getType()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_2c

    goto :goto_2b

    .line 283
    :sswitch_1d
    const-string/jumbo v1, "thermal,battery"

    invoke-virtual {v0, v2, v1, v2}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    goto :goto_2b

    .line 280
    :sswitch_24
    const-string/jumbo v1, "thermal"

    invoke-virtual {v0, v2, v1, v2}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    .line 281
    nop

    .line 286
    :goto_2b
    return-void

    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_24
        0x1 -> :sswitch_24
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_24
        0x9 -> :sswitch_24
    .end sparse-switch
.end method


# virtual methods
.method synthetic lambda$postStatusListener$0$com-android-server-power-ThermalManagerService(Landroid/os/IThermalStatusListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/os/IThermalStatusListener;

    .line 175
    :try_start_0
    iget v0, p0, Lcom/android/server/power/ThermalManagerService;->mStatus:I

    invoke-interface {p1, v0}, Landroid/os/IThermalStatusListener;->onStatusChange(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    .line 178
    goto :goto_e

    .line 176
    :catch_6
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/power/ThermalManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Thermal callback failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 131
    const/16 v0, 0x226

    if-ne p1, v0, :cond_7

    .line 132
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService;->onActivityManagerReady()V

    .line 134
    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService;->mService:Landroid/os/IThermalService$Stub;

    const-string/jumbo v1, "thermalservice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/ThermalManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 127
    return-void
.end method
