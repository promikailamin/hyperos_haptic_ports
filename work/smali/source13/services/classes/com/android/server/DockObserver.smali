.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;,
        Lcom/android/server/DockObserver$ExtconStateConfig;,
        Lcom/android/server/DockObserver$ExtconStateProvider;
    }
.end annotation


# static fields
.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mExtconStateConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/DockObserver$ExtconStateConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtconUEventObserver:Lcom/android/server/ExtconUEventObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActualDockState(Lcom/android/server/DockObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousDockState(Lcom/android/server/DockObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReportedDockState(Lcom/android/server/DockObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdatesStopped(Lcom/android/server/DockObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmUpdatesStopped(Lcom/android/server/DockObserver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDockStateChange(Lcom/android/server/DockObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDockStateFromProviderLocked(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDockStateLocked(Lcom/android/server/DockObserver;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 67
    iput v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 68
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 309
    new-instance v1, Lcom/android/server/DockObserver$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 355
    new-instance v1, Lcom/android/server/DockObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v1, p0, Lcom/android/server/DockObserver;->mExtconUEventObserver:Lcom/android/server/ExtconUEventObserver;

    .line 163
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 164
    const-string v4, "DockObserver"

    invoke-virtual {v3, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 168
    invoke-static {p1}, Lcom/android/server/DockObserver;->loadExtconStateConfigs(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    .line 170
    const-string v2, "DOCK"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 174
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ExtconUEventObserver$ExtconInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_97

    .line 175
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 176
    .local v0, "info":Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found extcon info devPath: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getDevicePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", statePath: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-virtual {v0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getStatePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromFile(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 181
    iget v3, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 183
    invoke-virtual {v1, v0}, Lcom/android/server/ExtconUEventObserver;->startObserving(Lcom/android/server/ExtconUEventObserver$ExtconInfo;)V

    .line 184
    .end local v0    # "info":Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    goto :goto_9c

    .line 185
    :cond_97
    const-string v0, "No extcon dock device found in this kernel."

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_9c
    return-void
.end method

.method private getDockedStateExtraValue(Lcom/android/server/DockObserver$ExtconStateProvider;)I
    .registers 10
    .param p1, "state"    # Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 322
    iget-object v0, p0, Lcom/android/server/DockObserver;->mExtconStateConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DockObserver$ExtconStateConfig;

    .line 323
    .local v1, "config":Lcom/android/server/DockObserver$ExtconStateConfig;
    const/4 v3, 0x1

    .line 324
    .local v3, "match":Z
    iget-object v4, v1, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 325
    .local v5, "keyValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/DockObserver$ExtconStateProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, "stateValue":Ljava/lang/String;
    if-eqz v3, :cond_3c

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    move v7, v2

    goto :goto_3d

    :cond_3c
    const/4 v7, 0x0

    :goto_3d
    move v3, v7

    .line 327
    if-nez v3, :cond_41

    .line 328
    goto :goto_42

    .line 330
    .end local v5    # "keyValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "stateValue":Ljava/lang/String;
    :cond_41
    goto :goto_1a

    .line 332
    :cond_42
    :goto_42
    if-eqz v3, :cond_47

    .line 333
    iget v0, v1, Lcom/android/server/DockObserver$ExtconStateConfig;->extraStateValue:I

    return v0

    .line 335
    .end local v1    # "config":Lcom/android/server/DockObserver$ExtconStateConfig;
    .end local v3    # "match":Z
    :cond_47
    goto :goto_6

    .line 337
    :cond_48
    return v2
.end method

.method private handleDockStateChange()V
    .registers 14

    .line 237
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_3
    const-string v1, "DockObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock state changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 241
    .local v1, "previousDockState":I
    iget v2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 244
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 245
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_49

    .line 247
    const-string v3, "DockObserver"

    const-string v4, "Device not provisioned, skipping dock broadcast"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    monitor-exit v0

    return-void

    .line 252
    :cond_49
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    const-string v5, "android.intent.extra.DOCK_STATE"

    iget v6, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string v5, "dock_sounds_enabled"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_67

    move v5, v6

    goto :goto_68

    :cond_67
    move v5, v4

    .line 258
    .local v5, "dockSoundsEnabled":Z
    :goto_68
    const-string v7, "dock_sounds_enabled_when_accessbility"

    invoke-static {v2, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_72

    move v7, v6

    goto :goto_73

    :cond_72
    move v7, v4

    .line 260
    .local v7, "dockSoundsEnabledWhenAccessibility":Z
    :goto_73
    const-string v8, "accessibility_enabled"

    invoke-static {v2, v8, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_7c

    move v4, v6

    .line 265
    .local v4, "accessibilityEnabled":Z
    :cond_7c
    if-nez v5, :cond_82

    if-eqz v4, :cond_dd

    if-eqz v7, :cond_dd

    .line 267
    :cond_82
    const/4 v8, 0x0

    .line 268
    .local v8, "whichSound":Ljava/lang/String;
    iget v9, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-nez v9, :cond_9b

    .line 269
    if-eq v1, v6, :cond_97

    if-eq v1, v12, :cond_97

    if-ne v1, v11, :cond_91

    goto :goto_97

    .line 273
    :cond_91
    if-ne v1, v10, :cond_ab

    .line 274
    const-string v9, "car_undock_sound"

    move-object v8, v9

    goto :goto_ab

    .line 272
    :cond_97
    :goto_97
    const-string v9, "desk_undock_sound"

    move-object v8, v9

    goto :goto_ab

    .line 277
    :cond_9b
    if-eq v9, v6, :cond_a8

    if-eq v9, v12, :cond_a8

    if-ne v9, v11, :cond_a2

    goto :goto_a8

    .line 281
    :cond_a2
    if-ne v9, v10, :cond_ab

    .line 282
    const-string v9, "car_dock_sound"

    move-object v8, v9

    goto :goto_ab

    .line 280
    :cond_a8
    :goto_a8
    const-string v9, "desk_dock_sound"

    move-object v8, v9

    .line 286
    :cond_ab
    :goto_ab
    if-eqz v8, :cond_dd

    .line 287
    invoke-static {v2, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, "soundPath":Ljava/lang/String;
    if-eqz v9, :cond_dd

    .line 289
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 290
    .local v10, "soundUri":Landroid/net/Uri;
    if-eqz v10, :cond_dd

    .line 291
    nop

    .line 292
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 291
    invoke-static {v11, v10}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v11

    .line 293
    .local v11, "sfx":Landroid/media/Ringtone;
    if-eqz v11, :cond_dd

    .line 294
    invoke-virtual {v11, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 295
    invoke-virtual {v11}, Landroid/media/Ringtone;->play()V

    .line 305
    .end local v8    # "whichSound":Ljava/lang/String;
    .end local v9    # "soundPath":Ljava/lang/String;
    .end local v10    # "soundUri":Landroid/net/Uri;
    .end local v11    # "sfx":Landroid/media/Ringtone;
    :cond_dd
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 306
    .end local v1    # "previousDockState":I
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "accessibilityEnabled":Z
    .end local v5    # "dockSoundsEnabled":Z
    .end local v7    # "dockSoundsEnabledWhenAccessibility":Z
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_e8
    move-exception v1

    monitor-exit v0
    :try_end_ea
    .catchall {:try_start_3 .. :try_end_ea} :catchall_e8

    throw v1
.end method

.method private static loadExtconStateConfigs(Landroid/content/Context;)Ljava/util/List;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/DockObserver$ExtconStateConfig;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "rows":[Ljava/lang/String;
    :try_start_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v1, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DockObserver$ExtconStateConfig;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_6c

    aget-object v5, v0, v4

    .line 142
    .local v5, "row":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "rowFields":[Ljava/lang/String;
    new-instance v7, Lcom/android/server/DockObserver$ExtconStateConfig;

    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/android/server/DockObserver$ExtconStateConfig;-><init>(I)V

    .line 144
    .local v7, "config":Lcom/android/server/DockObserver$ExtconStateConfig;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_29
    array-length v9, v6

    if-ge v8, v9, :cond_65

    .line 145
    aget-object v9, v6, v8

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "keyValueFields":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4a

    .line 149
    iget-object v10, v7, Lcom/android/server/DockObserver$ExtconStateConfig;->keyValuePairs:Ljava/util/List;

    aget-object v11, v9, v3

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    nop

    .end local v9    # "keyValueFields":[Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 147
    .restart local v9    # "keyValueFields":[Ljava/lang/String;
    :cond_4a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key-value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v6, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "rows":[Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    throw v2

    .line 151
    .end local v8    # "i":I
    .end local v9    # "keyValueFields":[Ljava/lang/String;
    .restart local v0    # "rows":[Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_65
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_68} :catch_6d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_68} :catch_6d

    .line 141
    nop

    .end local v5    # "row":Ljava/lang/String;
    .end local v6    # "rowFields":[Ljava/lang/String;
    .end local v7    # "config":Lcom/android/server/DockObserver$ExtconStateConfig;
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 153
    :cond_6c
    return-object v1

    .line 154
    .end local v1    # "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/DockObserver$ExtconStateConfig;>;"
    :catch_6d
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "DockObserver"

    const-string v3, "Could not parse extcon state config"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method private setActualDockStateLocked(I)V
    .registers 3
    .param p1, "newState"    # I

    .line 209
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 210
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_9

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 213
    :cond_9
    return-void
.end method

.method private setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .registers 5
    .param p1, "provider"    # Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "state":I
    const-string v1, "DOCK"

    invoke-virtual {p1, v1}, Lcom/android/server/DockObserver$ExtconStateProvider;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 350
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->getDockedStateExtraValue(Lcom/android/server/DockObserver$ExtconStateProvider;)I

    move-result v0

    .line 352
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 353
    return-void
.end method

.method private setDockStateLocked(I)V
    .registers 6
    .param p1, "newState"    # I

    .line 216
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_2e

    .line 217
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 218
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_2e

    .line 220
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_20

    .line 221
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "theater_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2b

    .line 223
    :cond_20
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "android.server:DOCK"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 226
    :cond_2b
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 229
    :cond_2e
    return-void
.end method

.method private updateLocked()V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 233
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 196
    const/16 v0, 0x226

    if-ne p1, v0, :cond_16

    .line 197
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 201
    iget v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v1, :cond_11

    .line 202
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 204
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1

    .line 206
    :cond_16
    :goto_16
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 191
    new-instance v0, Lcom/android/server/DockObserver$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService-IA;)V

    const-string v1, "DockObserver"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 192
    return-void
.end method

.method setDockStateFromProviderForTesting(Lcom/android/server/DockObserver$ExtconStateProvider;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/DockObserver$ExtconStateProvider;

    .line 342
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateFromProviderLocked(Lcom/android/server/DockObserver$ExtconStateProvider;)V

    .line 344
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
