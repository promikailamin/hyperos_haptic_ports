.class public final Lcom/android/server/vibrator/VibrationSettings;
.super Ljava/lang/Object;
.source "VibrationSettings.java"


# static fields
.field public static final BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

.field public static final BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

.field public static final POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

.field public static final SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field final mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

.field public mBatterySaverMode:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

.field public final mFallbackEffects:Landroid/util/SparseArray;

.field public final mListeners:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field final mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

.field public mOnWirelessCharger:Z

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mRingerMode:I

.field final mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

.field final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

.field public mSystemUiPackage:Ljava/lang/String;

.field final mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

.field final mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

.field public mVibrateInputDevices:Z

.field public mVibrateOn:Z

.field public final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field public mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBatteryInfo(Lcom/android/server/vibrator/VibrationSettings;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateBatteryInfo(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRingerMode(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/vibrator/VibrationSettings;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 94
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x21

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v1, 0x11

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x31

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v1, 0x41

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v1, 0x32

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v1, 0x22

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Integer;

    move-result-object v1

    .line 95
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    .line 115
    filled-new-array {v2, v3, v5, v7, v6}, [Ljava/lang/Integer;

    move-result-object v1

    .line 110
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x12

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x42

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 138
    filled-new-array {v1, v2, v7, v6}, [Ljava/lang/Integer;

    move-result-object v1

    .line 134
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 148
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    .line 149
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V
    .registers 5

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectsFromResource(Landroid/content/res/Resources;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/os/vibrator/VibrationConfig;",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    .line 194
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 212
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 213
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 214
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    .line 215
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    .line 216
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    .line 217
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    .line 218
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    .line 219
    new-instance p1, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    invoke-direct {p1, p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    .line 220
    iput-object p4, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    .line 223
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void
.end method

.method public static createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;
    .registers 2

    .line 819
    invoke-static {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object p0

    .line 820
    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .registers 4

    if-eqz p0, :cond_18

    .line 825
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_18

    .line 827
    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    .line 828
    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 830
    :cond_13
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createEffectsFromResource(Landroid/content/res/Resources;)Landroid/util/SparseArray;
    .registers 6

    const v0, 0x10700fc

    .line 786
    invoke-static {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object v0

    const v1, 0x1070079

    .line 788
    invoke-static {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object v1

    const v2, 0x10700a0

    .line 790
    invoke-static {p0, v2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object v2

    const v3, 0x107003e

    .line 792
    invoke-static {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(Landroid/content/res/Resources;I)Landroid/os/VibrationEffect;

    move-result-object p0

    .line 795
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    .line 796
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 797
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 798
    invoke-virtual {v3, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x5

    .line 799
    invoke-virtual {v3, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 p0, 0x15

    .line 801
    invoke-static {v0, v4}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 800
    invoke-virtual {v3, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v3
.end method

.method public static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 5

    .line 835
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 839
    :cond_8
    array-length p1, p0

    new-array p1, p1, [J

    const/4 v0, 0x0

    .line 840
    :goto_c
    array-length v1, p0

    if-ge v0, v1, :cond_17

    .line 841
    aget v1, p0, v0

    int-to-long v1, v1

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_17
    return-object p1
.end method

.method public static intensityToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN INTENSITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 734
    :cond_1d
    const-string p0, "HIGH"

    return-object p0

    .line 733
    :cond_20
    const-string p0, "MEDIUM"

    return-object p0

    .line 732
    :cond_23
    const-string p0, "LOW"

    return-object p0

    .line 731
    :cond_26
    const-string p0, "OFF"

    return-object p0
.end method

.method public static ringerModeToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 744
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 743
    :cond_d
    const-string/jumbo p0, "normal"

    return-object p0

    .line 742
    :cond_11
    const-string/jumbo p0, "vibrate"

    return-object p0

    .line 741
    :cond_15
    const-string/jumbo p0, "silent"

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V
    .registers 4

    .line 316
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 318
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 320
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 8

    .line 661
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_3
    const-string v1, "VibrationSettings:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateInputDevices = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "batterySaverMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ringerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWirelessCharger = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processStateCache size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->-$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 671
    const-string v1, "VibrationIntensities:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    .line 673
    :goto_a9
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_f1

    .line 674
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 675
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-static {v3}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", default: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    :catchall_ef
    move-exception p0

    goto :goto_fe

    .line 680
    :cond_f1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 682
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationConfig;->dumpWithoutDefaultSettings(Landroid/util/IndentingPrintWriter;)V

    .line 683
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 684
    monitor-exit v0

    return-void

    :goto_fe
    monitor-exit v0
    :try_end_ff
    .catchall {:try_start_3 .. :try_end_ff} :catchall_ef

    throw p0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 689
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const-wide v2, 0x10800000018L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 691
    iget-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    const-wide v2, 0x10800000006L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/16 v1, 0x11

    .line 693
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000012L

    .line 692
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 695
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000013L

    .line 694
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x32

    .line 697
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000016L

    .line 696
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 699
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000017L

    .line 698
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x12

    .line 701
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000007L

    .line 700
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 703
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000008L

    .line 702
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x13

    .line 705
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000014L

    .line 704
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 707
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x10500000015L

    .line 706
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x31

    .line 709
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x10500000009L

    .line 708
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 711
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v1

    const-wide v2, 0x1050000000aL

    .line 710
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/16 v1, 0x21

    .line 713
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    const-wide v3, 0x1050000000bL

    .line 712
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 715
    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result p0

    const-wide v1, 0x1050000000cL

    .line 714
    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 716
    monitor-exit v0

    return-void

    :catchall_b5
    move-exception p0

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_3 .. :try_end_b7} :catchall_b5

    throw p0
.end method

.method public getCurrentIntensity(I)I
    .registers 4

    # A13-PORT A13: USAGE_IME_FEEDBACK(0x52)/USAGE_GESTURE_INPUT(0x62) -> USAGE_TOUCH(0x12).
    const/16 v0, 0x52

    if-eq p1, v0, :cond_a13_gesture

    const/16 p1, 0x12

    goto :goto_a13_lookup

    :cond_a13_gesture
    const/16 v0, 0x62

    if-eq p1, v0, :goto_a13_lookup

    const/16 p1, 0x12

    :goto_a13_lookup
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a13
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_a13
    move-exception p0

    monitor-exit v1
    :try_end_a13
    .catchall {:try_start_a13 .. :try_end_a13} :catchall_a13

    throw p0
.end method

.method public getDefaultIntensity(I)I
    .registers 3

    # A13-PORT A13 has no USAGE_IME_FEEDBACK(0x52)/USAGE_GESTURE_INPUT(0x62);
    # A13-PORT keyboard and gesture feedback used USAGE_TOUCH(0x12) intensity.
    const/16 v0, 0x52

    if-eq p1, v0, :cond_a13_gesture

    const/16 p1, 0x12

    goto :goto_a13_lookup

    :cond_a13_gesture
    const/16 v0, 0x62

    if-eq p1, v0, :goto_a13_lookup

    const/16 p1, 0x12

    :goto_a13_lookup
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v0

    return v0
.end method

.method public getFallbackEffect(I)Landroid/os/VibrationEffect;
    .registers 2

    .line 402
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/VibrationEffect;

    return-object p0
.end method

.method public getFallbackEffects()Landroid/util/SparseArray;
    .registers 1

    .line 390
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getRampDownDuration()I
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    move-result p0

    return p0
.end method

.method public getRampStepDuration()I
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    move-result p0

    return p0
.end method

.method public getRequestVibrationParamsForUsages()[I
    .registers 1

    .line 385
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsForUsages()[I

    move-result-object p0

    return-object p0
.end method

.method public getRequestVibrationParamsTimeoutMs()I
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsTimeoutMs()I

    move-result p0

    return p0
.end method

.method public final isAppRunningOnAnyVirtualDevice(I)Z
    .registers 3

    .line 848
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 850
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    if-eqz p0, :cond_10

    .line 851
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0

    :catchall_12
    move-exception p0

    .line 850
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final loadBooleanSetting(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 771
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    return v0
.end method

.method public final loadSystemSetting(Ljava/lang/String;II)I
    .registers 4

    .line 775
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final notifyListeners()V
    .registers 4

    .line 721
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 723
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1f

    .line 724
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p0, :cond_1e

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 725
    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;->onChange()V

    goto :goto_10

    :cond_1e
    return-void

    :catchall_1f
    move-exception p0

    .line 723
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public onSystemReady()V
    .registers 8

    .line 227
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-class v0, Landroid/os/PowerManagerInternal;

    .line 228
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/PowerManagerInternal;

    .line 229
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 230
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/media/AudioManager;

    move-object v1, p0

    .line 227
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationSettings;->onSystemReady(Landroid/content/pm/PackageManagerInternal;Landroid/os/PowerManagerInternal;Landroid/app/IActivityManager;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Landroid/media/AudioManager;)V

    return-void
.end method

.method public onSystemReady(Landroid/content/pm/PackageManagerInternal;Landroid/os/PowerManagerInternal;Landroid/app/IActivityManager;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Landroid/media/AudioManager;)V
    .registers 9

    const/4 v0, 0x2

    if-nez p5, :cond_5

    move v1, v0

    goto :goto_9

    .line 242
    :cond_5
    invoke-virtual {p5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 243
    :goto_9
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 245
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 246
    :try_start_14
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 247
    iput-object p4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 248
    iput-object p5, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 249
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 250
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    .line 251
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_c2

    .line 254
    :try_start_1f
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    const/4 p4, -0x1

    const/4 p5, 0x0

    const/4 v1, 0x3

    invoke-interface {p3, p1, v1, p4, p5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_27

    .line 262
    :catch_27
    :try_start_27
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mUserSwitchObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUserSwitchObserver;

    const-string p4, "VibrationSettings"

    invoke-interface {p3, p1, p4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2e

    .line 267
    :catch_2e
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLowPowerModeListener:Lcom/android/server/vibrator/VibrationSettings$VibrationLowPowerModeListener;

    invoke-virtual {p2, p1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 269
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerModeBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$RingerModeBroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 274
    const-string/jumbo p1, "vibrate_input_devices"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 275
    const-string/jumbo p1, "vibrate_on"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 276
    const-string p1, "haptic_feedback_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 278
    const-string p1, "alarm_vibration_intensity"

    .line 279
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 280
    const-string p1, "haptic_feedback_intensity"

    .line 281
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 282
    const-string p1, "hardware_haptic_feedback_intensity"

    .line 283
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 284
    const-string/jumbo p1, "media_vibration_intensity"

    .line 285
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 286
    const-string/jumbo p1, "notification_vibration_intensity"

    .line 287
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 288
    const-string/jumbo p1, "ring_vibration_intensity"

    .line 289
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 290
    const-string/jumbo p1, "keyboard_vibration_enabled"

    .line 291
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 293
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/os/vibrator/VibrationConfig;->ignoreVibrationsOnWirelessCharger()Z

    move-result p1

    if-eqz p1, :cond_be

    .line 294
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatteryBroadcastReceiver:Lcom/android/server/vibrator/VibrationSettings$BatteryBroadcastReceiver;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p4, 0x4

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_be

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->updateBatteryInfo(Landroid/content/Intent;)V

    .line 308
    :cond_be
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    return-void

    :catchall_c2
    move-exception p0

    .line 251
    :try_start_c3
    monitor-exit v2
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw p0
.end method

.method public final registerSettingsObserver(Landroid/net/Uri;)V
    .registers 5

    .line 780
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public shouldCancelVibrationOnScreenOff(Lcom/android/server/vibrator/VibrationSession$CallerInfo;J)Z
    .registers 8

    .line 472
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 474
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    .line 475
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_7c

    const/4 v0, 0x0

    if-eqz v1, :cond_4c

    .line 481
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getLastGoToSleep()Landroid/os/PowerManager$SleepData;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 482
    iget-wide v2, v1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    cmp-long p2, v2, p2

    if-ltz p2, :cond_25

    sget-object p2, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    iget p3, v1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 483
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 486
    :cond_25
    const-string p0, "VibrationSettings"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring screen off event triggered at uptime "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, v1, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " for reason "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 488
    invoke-static {p2}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 492
    :cond_4c
    sget-object p2, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    iget-object p3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_7b

    .line 494
    iget p2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    const/16 v1, 0x3e8

    invoke-static {p2, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p2

    if-nez p2, :cond_7a

    iget p2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    .line 495
    invoke-static {p2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p2

    if-nez p2, :cond_7a

    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    .line 496
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    return p3

    :cond_7a
    return v0

    :cond_7b
    return p3

    :catchall_7c
    move-exception p0

    .line 475
    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method public shouldIgnoreVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 6

    .line 418
    iget-object v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_9
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    iget v3, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->isUidForeground(I)Z

    move-result v2

    if-nez v2, :cond_25

    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 421
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 422
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    :catchall_23
    move-exception p0

    goto :goto_8b

    .line 425
    :cond_25
    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    const/4 v3, -0x1

    if-eqz v2, :cond_30

    if-eq v2, v3, :cond_30

    .line 427
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    :cond_30
    if-ne v2, v3, :cond_3e

    .line 430
    iget v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    .line 431
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationSettings;->isAppRunningOnAnyVirtualDevice(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 432
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FROM_VIRTUAL_DEVICE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    .line 435
    :cond_3e
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    if-eqz v2, :cond_52

    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 436
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    .line 439
    :cond_52
    iget-object v2, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v2

    if-nez v2, :cond_65

    .line 441
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForUserSetting(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 442
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    .line 445
    :cond_65
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result p1

    if-nez p1, :cond_78

    .line 446
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->shouldVibrateForRingerModeLocked(I)Z

    move-result p1

    if-nez p1, :cond_78

    .line 447
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_FOR_RINGER_MODE:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    .line 451
    :cond_78
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/os/vibrator/VibrationConfig;->ignoreVibrationsOnWirelessCharger()Z

    move-result p1

    if-eqz p1, :cond_88

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    if-eqz p0, :cond_88

    .line 452
    sget-object p0, Lcom/android/server/vibrator/VibrationSession$Status;->IGNORED_ON_WIRELESS_CHARGER:Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-exit v1

    return-object p0

    .line 454
    :cond_88
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_9 .. :try_end_8c} :catchall_23

    throw p0
.end method

.method public final shouldVibrateForRingerModeLocked(I)Z
    .registers 4

    const/16 v0, 0x21

    const/4 v1, 0x1

    if-eq p1, v0, :cond_a

    const/16 v0, 0x31

    if-eq p1, v0, :cond_a

    return v1

    .line 514
    :cond_a
    iget p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    if-eqz p0, :cond_f

    return v1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldVibrateForUserSetting(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Z
    .registers 4

    .line 523
    iget-object p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p1

    .line 524
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const/16 v0, 0x42

    if-eq v0, p1, :cond_10

    return v1

    .line 530
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    return v1
.end method

.method public shouldVibrateInputDevices()Z
    .registers 1

    .line 407
    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    return p0
.end method

.method public final toIntensity(II)I
    .registers 3

    .line 0
    if-ltz p1, :cond_7

    const/4 p0, 0x3

    if-le p1, p0, :cond_6

    goto :goto_7

    :cond_6
    return p1

    :cond_7
    :goto_7
    return p2
.end method

.method public final toIntensity(ZI)I
    .registers 3

    .line 0
    if-eqz p1, :cond_3

    return p2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final toPositiveIntensity(II)I
    .registers 3

    if-nez p1, :cond_3

    return p2

    .line 753
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 635
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 637
    :goto_c
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d

    .line 638
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 639
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 640
    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=("

    .line 641
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",default:"

    .line 642
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), "

    .line 643
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catchall_4b
    move-exception p0

    goto :goto_b6

    :cond_4d
    const/16 v2, 0x7d

    .line 645
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VibrationSettings{mVibratorConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrateInputDevices="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mBatterySaverMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mRingerMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 651
    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mOnWirelessCharger="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mVibrationIntensities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProcStatesCache="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;

    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;->-$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$VibrationUidObserver;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 656
    :goto_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_3 .. :try_end_b7} :catchall_4b

    throw p0
.end method

.method public update()V
    .registers 2

    const/4 v0, -0x2

    .line 535
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings(I)V

    .line 536
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    .line 537
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method public final updateBatteryInfo(Landroid/content/Intent;)V
    .registers 5

    .line 627
    const-string/jumbo v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 628
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_f

    const/4 v1, 0x1

    .line 629
    :cond_f
    :try_start_f
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mOnWirelessCharger:Z

    .line 630
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final updateRingerMode()V
    .registers 3

    .line 617
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_b

    .line 620
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_13

    .line 622
    :cond_b
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 623
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_9

    throw p0
.end method

.method public final updateSettings(I)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 541
    iget-object v2, v0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 542
    :try_start_7
    const-string/jumbo v3, "vibrate_input_devices"

    const/4 v4, 0x0

    .line 543
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_14

    move v3, v5

    goto :goto_15

    :cond_14
    move v3, v4

    :goto_15
    iput-boolean v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    .line 544
    const-string/jumbo v3, "vibrate_on"

    invoke-virtual {v0, v3, v5, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v3

    if-lez v3, :cond_22

    move v3, v5

    goto :goto_23

    :cond_22
    move v3, v4

    :goto_23
    iput-boolean v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    .line 546
    const-string/jumbo v3, "keyboard_vibration_enabled"

    invoke-virtual {v0, v3, v5, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v3

    if-lez v3, :cond_2f

    goto :goto_30

    :cond_2f
    move v5, v4

    :goto_30
    const/16 v3, 0x52

    .line 549
    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v6

    .line 548
    invoke-virtual {v0, v5, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(ZI)I

    move-result v5

    .line 550
    const-string v6, "alarm_vibration_intensity"

    const/4 v7, -0x1

    .line 551
    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v6

    const/16 v8, 0x11

    .line 552
    invoke-virtual {v0, v8}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v9

    .line 550
    invoke-virtual {v0, v6, v9}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v6

    const/16 v9, 0x12

    .line 553
    invoke-virtual {v0, v9}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v10

    .line 554
    const-string v11, "haptic_feedback_intensity"

    .line 555
    invoke-virtual {v0, v11, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v11

    .line 554
    invoke-virtual {v0, v11, v10}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v11

    .line 557
    invoke-virtual {v0, v11, v10}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v10

    .line 559
    const-string v12, "hardware_haptic_feedback_intensity"

    .line 560
    invoke-virtual {v0, v12, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v12

    .line 559
    invoke-virtual {v0, v12, v10}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v12

    .line 563
    const-string/jumbo v13, "media_vibration_intensity"

    .line 564
    invoke-virtual {v0, v13, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v13

    const/16 v14, 0x13

    .line 565
    invoke-virtual {v0, v14}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v15

    .line 563
    invoke-virtual {v0, v13, v15}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v13

    const/16 v15, 0x31

    .line 566
    invoke-virtual {v0, v15}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 567
    const-string/jumbo v9, "notification_vibration_intensity"

    .line 568
    invoke-virtual {v0, v9, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v9

    .line 567
    invoke-virtual {v0, v9, v3}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v9

    .line 571
    invoke-virtual {v0, v9, v3}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v3

    .line 573
    const-string/jumbo v4, "ring_vibration_intensity"

    .line 574
    invoke-virtual {v0, v4, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v4

    const/16 v14, 0x21

    .line 575
    invoke-virtual {v0, v14}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v15

    .line 573
    invoke-virtual {v0, v4, v15}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v4

    .line 576
    const-string v15, "gesture_input_vibration_intensity"

    .line 577
    invoke-virtual {v0, v15, v7, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;II)I

    move-result v7

    const/16 v15, 0x62

    .line 579
    invoke-virtual {v0, v15}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v14

    .line 576
    invoke-virtual {v0, v7, v14}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v7

    .line 581
    iget-object v14, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v14}, Landroid/util/SparseIntArray;->clear()V

    .line 582
    iget-object v14, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 583
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v8, 0x31

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 584
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v8, 0x13

    invoke-virtual {v6, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 585
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 586
    iget-object v6, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v8, 0x21

    invoke-virtual {v6, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 587
    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v15, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 590
    iget-object v4, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v6, 0x41

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 595
    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v4, 0x32

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 596
    iget-object v3, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v4, 0x22

    invoke-virtual {v3, v4, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 598
    const-string v3, "haptic_feedback_enabled"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/vibrator/VibrationSettings;->loadBooleanSetting(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_102

    .line 600
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x12

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_109

    :catchall_100
    move-exception v0

    goto :goto_129

    :cond_102
    const/16 v3, 0x12

    .line 602
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 605
    :goto_109
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v1}, Landroid/os/vibrator/VibrationConfig;->isKeyboardVibrationSettingsSupported()Z

    move-result v1

    if-eqz v1, :cond_119

    .line 606
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v3, 0x52

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_120

    :cond_119
    const/16 v3, 0x52

    .line 608
    iget-object v1, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 612
    :goto_120
    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 613
    monitor-exit v2

    return-void

    :goto_129
    monitor-exit v2
    :try_end_12a
    .catchall {:try_start_7 .. :try_end_12a} :catchall_100

    throw v0
.end method
