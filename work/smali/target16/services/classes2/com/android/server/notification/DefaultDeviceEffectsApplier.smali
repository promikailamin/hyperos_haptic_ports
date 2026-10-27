.class public Lcom/android/server/notification/DefaultDeviceEffectsApplier;
.super Ljava/lang/Object;
.source "DefaultDeviceEffectsApplier.java"

# interfaces
.implements Landroid/service/notification/DeviceEffectsApplier;


# static fields
.field private static final SATURATION_LEVEL_FULL_COLOR:I = 0x64

.field private static final SATURATION_LEVEL_GRAYSCALE:I = 0x0

.field private static final SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final SUPPRESS_AMBIENT_DISPLAY_TOKEN:Ljava/lang/String; = "DefaultDeviceEffectsApplier:SuppressAmbientDisplay"

.field private static final TAG:Ljava/lang/String; = "DeviceEffectsApplier"

.field private static final WALLPAPER_DIM_AMOUNT_DIMMED:F = 0.6f

.field private static final WALLPAPER_DIM_AMOUNT_NORMAL:F


# instance fields
.field private final mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private final mContext:Landroid/content/Context;

.field private mIsScreenOffReceiverRegistered:Z

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field protected mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

.field private final mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

.field private mPendingNightMode:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mRegisterReceiverLock:Ljava/lang/Object;

.field private final mUiModeManager:Landroid/app/UiModeManager;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$4LDHIsj0iI2D9FidhGDL9DsNFGA(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Landroid/service/notification/ZenDeviceEffects;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->lambda$apply$0(Landroid/service/notification/ZenDeviceEffects;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GU7KgDI7UqIvmoYhYm62_3u1GIw(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->lambda$updateNightModeImmediately$1(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingNightMode(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPendingNightMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$munregisterScreenOffReceiver(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->unregisterScreenOffReceiver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateNightModeImmediately(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->updateNightModeImmediately(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 177
    new-instance v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$1;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;)V

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    .line 73
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 74
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 75
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    .line 76
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mUiModeManager:Landroid/app/UiModeManager;

    .line 77
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    if-eqz p1, :cond_57

    .line 78
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_57
    const/4 p1, 0x0

    .line 79
    :goto_58
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method private synthetic lambda$apply$0(Landroid/service/notification/ZenDeviceEffects;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeSuppressAmbientDisplay(Z)V

    .line 87
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeDisplayGrayscale(Z)V

    .line 88
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeDimWallpaper(ZI)V

    .line 89
    invoke-virtual {p1}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->maybeUseNightMode(ZI)V

    return-void
.end method

.method private synthetic lambda$updateNightModeImmediately$1(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    :try_start_0
    const-string/jumbo v0, "nightMode"

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    .line 190
    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mUiModeManager:Landroid/app/UiModeManager;

    if-eqz p1, :cond_d

    const/16 p1, 0x3e9

    goto :goto_f

    :cond_d
    const/16 p1, 0x3e8

    :goto_f
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setAttentionModeThemeOverlay(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 194
    const-string p1, "DeviceEffectsApplier"

    const-string v0, "Could not change night mode override"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private registerScreenOffReceiver()V
    .registers 6

    .line 200
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    if-nez v1, :cond_17

    .line 202
    iget-object v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->SCREEN_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 204
    iput-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    .line 206
    :cond_17
    :goto_17
    monitor-exit v0

    return-void

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_15

    throw p0
.end method

.method private unregisterScreenOffReceiver()V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mRegisterReceiverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    .line 212
    iput-boolean v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mIsScreenOffReceiverRegistered:Z

    .line 213
    iget-object v1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mNightModeWhenScreenOff:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_16

    .line 215
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_12

    throw p0
.end method

.method private updateNightModeImmediately(Z)V
    .registers 3

    .line 187
    new-instance v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private updateOrScheduleNightMode(ZI)V
    .registers 4

    .line 157
    iput-boolean p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPendingNightMode:Z

    const/4 v0, 0x1

    if-eq p2, v0, :cond_29

    const/4 v0, 0x2

    if-eq p2, v0, :cond_29

    const/4 v0, 0x3

    if-eq p2, v0, :cond_29

    const/4 v0, 0x7

    if-eq p2, v0, :cond_29

    .line 163
    iget-object p2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    .line 167
    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-eqz p2, :cond_29

    iget-object p2, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 168
    invoke-virtual {p2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p2

    if-eqz p2, :cond_1f

    goto :goto_29

    .line 172
    :cond_1f
    const-string/jumbo p2, "nightMode"

    invoke-static {p2, p1}, Lcom/android/server/notification/ZenLog;->traceScheduleApplyDeviceEffect(Ljava/lang/String;Z)V

    .line 173
    invoke-direct {p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->registerScreenOffReceiver()V

    return-void

    .line 169
    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->unregisterScreenOffReceiver()V

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->updateNightModeImmediately(Z)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/service/notification/ZenDeviceEffects;I)V
    .registers 4

    .line 84
    new-instance v0, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/DefaultDeviceEffectsApplier;Landroid/service/notification/ZenDeviceEffects;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 92
    iput-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    return-void
.end method

.method public maybeDimWallpaper(ZI)V
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_5

    goto :goto_39

    .line 129
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3f19999a    # 0.6f

    if-eq v0, p1, :cond_1f

    .line 130
    const-string p2, "dimWallpaper"

    invoke-static {p2, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    .line 131
    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz p1, :cond_1b

    move v1, v2

    :cond_1b
    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->setWallpaperDimAmount(F)V

    return-void

    :cond_1f
    const/4 v0, 0x1

    if-ne p2, v0, :cond_39

    if-nez p1, :cond_39

    .line 135
    iget-object p1, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 137
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getWallpaperDimAmount()F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_39

    .line 138
    const-string p1, "dimWallpaper (reset on boot)"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    .line 139
    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->setWallpaperDimAmount(F)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_39} :catch_3a

    :cond_39
    :goto_39
    return-void

    :catch_3a
    move-exception p0

    .line 142
    const-string p1, "DeviceEffectsApplier"

    const-string p2, "Could not change wallpaper override"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public maybeDisplayGrayscale(Z)V
    .registers 3

    .line 108
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    if-eq v0, p1, :cond_25

    .line 109
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    if-eqz v0, :cond_25

    .line 111
    :try_start_c
    const-string v0, "displayGrayscale"

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    .line 112
    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    goto :goto_19

    :cond_17
    const/16 p1, 0x64

    :goto_19
    invoke-virtual {p0, p1}, Landroid/hardware/display/ColorDisplayManager;->setSaturationLevel(I)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 117
    const-string p1, "DeviceEffectsApplier"

    const-string v0, "Could not change grayscale override"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    return-void
.end method

.method public maybeSuppressAmbientDisplay(Z)V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    if-eq v0, p1, :cond_1e

    .line 98
    :try_start_8
    const-string/jumbo v0, "suppressAmbientDisplay"

    invoke-static {v0, p1}, Lcom/android/server/notification/ZenLog;->traceApplyDeviceEffect(Ljava/lang/String;Z)V

    .line 99
    iget-object p0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mPowerManager:Landroid/os/PowerManager;

    const-string v0, "DefaultDeviceEffectsApplier:SuppressAmbientDisplay"

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->suppressAmbientDisplay(Ljava/lang/String;Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p0

    .line 102
    const-string p1, "DeviceEffectsApplier"

    const-string v0, "Could not change AOD override"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    return-void
.end method

.method public maybeUseNightMode(ZI)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->mLastAppliedEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v0

    if-eq v0, p1, :cond_14

    .line 149
    :try_start_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/DefaultDeviceEffectsApplier;->updateOrScheduleNightMode(ZI)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 151
    const-string p1, "DeviceEffectsApplier"

    const-string p2, "Could not change night mode override"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    return-void
.end method
