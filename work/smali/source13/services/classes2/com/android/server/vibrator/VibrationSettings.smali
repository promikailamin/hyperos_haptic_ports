.class final Lcom/android/server/vibrator/VibrationSettings;
.super Ljava/lang/Object;
.source "VibrationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibrationSettings$UidObserver;,
        Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;,
        Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;,
        Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;
    }
.end annotation


# static fields
.field private static final BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VibrationSettings"

.field private static final USER_SWITCHED_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final VIBRATE_ON_DISABLED_USAGE_ALLOWED:I = 0x42


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatterySaverMode:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

.field private final mFallbackEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mRingerMode:I

.field final mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

.field final mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

.field private final mSystemUiPackage:Ljava/lang/String;

.field final mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

.field private mVibrateInputDevices:Z

.field private mVibrateOn:Z

.field private final mVibrationConfig:Landroid/os/vibrator/VibrationConfig;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/vibrator/VibrationSettings;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBatterySaverMode(Lcom/android/server/vibrator/VibrationSettings;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyListeners(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRingerMode(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 13

    .line 82
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    .line 84
    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 85
    const/16 v4, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 86
    const/16 v6, 0x31

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 87
    const/16 v6, 0x41

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v1, v8

    .line 88
    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v1, v10

    .line 89
    const/16 v11, 0x22

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v1, v12

    .line 83
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v12, [Ljava/lang/Integer;

    .line 99
    aput-object v2, v1, v3

    .line 100
    aput-object v4, v1, v5

    .line 101
    aput-object v6, v1, v7

    .line 102
    aput-object v11, v1, v8

    .line 103
    aput-object v9, v1, v10

    .line 98
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 121
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/Integer;

    .line 123
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 124
    aput-object v11, v1, v5

    .line 125
    aput-object v9, v1, v7

    .line 122
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 135
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/Integer;

    .line 137
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 138
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    .line 136
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->USER_SWITCHED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/vibrator/VibrationSettings;->INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 186
    new-instance v0, Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/vibrator/VibrationSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V

    .line 187
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/vibrator/VibrationConfig;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "config"    # Landroid/os/vibrator/VibrationConfig;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    .line 176
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    .line 191
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    .line 192
    iput-object p3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 193
    new-instance v0, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    .line 194
    new-instance v0, Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibrationSettings$UidObserver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    .line 195
    new-instance v0, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    .line 197
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 198
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    .line 200
    const v0, 0x10700c7

    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 202
    .local v0, "clickEffect":Landroid/os/VibrationEffect;
    const v1, 0x1070061

    invoke-direct {p0, v1}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 204
    .local v1, "doubleClickEffect":Landroid/os/VibrationEffect;
    const v2, 0x1070081

    invoke-direct {p0, v2}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 206
    .local v2, "heavyClickEffect":Landroid/os/VibrationEffect;
    const v3, 0x107002f

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v3

    .line 209
    .local v3, "tickEffect":Landroid/os/VibrationEffect;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    .line 210
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    const/4 v6, 0x2

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    const/4 v7, 0x5

    invoke-virtual {v4, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    nop

    .line 215
    invoke-static {v6, v5}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 214
    const/16 v6, 0x15

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 219
    return-void
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .registers 4
    .param p1, "resId"    # I

    .line 651
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 652
    .local v0, "timings":[J
    invoke-static {v0}, Lcom/android/server/vibrator/VibrationSettings;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .registers 4
    .param p0, "timings"    # [J

    .line 657
    if-eqz p0, :cond_18

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_18

    .line 659
    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_13

    .line 660
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 662
    :cond_13
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 658
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .line 667
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 668
    .local v0, "ar":[I
    if-nez v0, :cond_8

    .line 669
    const/4 v1, 0x0

    return-object v1

    .line 671
    :cond_8
    array-length v1, v0

    new-array v1, v1, [J

    .line 672
    .local v1, "out":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_17

    .line 673
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 672
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 675
    .end local v2    # "i":I
    :cond_17
    return-object v1
.end method

.method private static intensityToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "intensity"    # I

    .line 598
    packed-switch p0, :pswitch_data_24

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN INTENSITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 606
    :pswitch_17
    const-string v0, "HIGH"

    return-object v0

    .line 604
    :pswitch_1a
    const-string v0, "MEDIUM"

    return-object v0

    .line 602
    :pswitch_1d
    const-string v0, "LOW"

    return-object v0

    .line 600
    :pswitch_20
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private loadBooleanSetting(Ljava/lang/String;)Z
    .registers 5
    .param p1, "settingKey"    # Ljava/lang/String;

    .line 630
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method private loadSystemSetting(Ljava/lang/String;I)I
    .registers 5
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 635
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private notifyListeners()V
    .registers 4

    .line 589
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 591
    .local v1, "currentListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 592
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 593
    .local v2, "listener":Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;
    invoke-interface {v2}, Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;->onChange()V

    .line 594
    .end local v2    # "listener":Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;
    goto :goto_f

    .line 595
    :cond_1f
    return-void

    .line 591
    .end local v1    # "currentListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;>;"
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private registerSettingsChangeReceiver(Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;

    .line 646
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingChangeReceiver:Lcom/android/server/vibrator/VibrationSettings$SettingsBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 647
    return-void
.end method

.method private registerSettingsObserver(Landroid/net/Uri;)V
    .registers 6
    .param p1, "settingUri"    # Landroid/net/Uri;

    .line 640
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mSettingObserver:Lcom/android/server/vibrator/VibrationSettings$SettingsContentObserver;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 643
    return-void
.end method

.method private shouldVibrateForRingerModeLocked(I)Z
    .registers 4
    .param p1, "usageHint"    # I

    .line 447
    const/4 v0, 0x1

    const/16 v1, 0x21

    if-eq p1, v1, :cond_a

    const/16 v1, 0x31

    if-eq p1, v1, :cond_a

    .line 449
    return v0

    .line 451
    :cond_a
    iget v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    if-eqz v1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private toIntensity(II)I
    .registers 4
    .param p1, "value"    # I
    .param p2, "defaultValue"    # I

    .line 622
    if-ltz p1, :cond_7

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    goto :goto_7

    .line 626
    :cond_6
    return p1

    .line 624
    :cond_7
    :goto_7
    return p2
.end method

.method private toPositiveIntensity(II)I
    .registers 4
    .param p1, "value"    # I
    .param p2, "defaultValue"    # I

    .line 614
    if-nez p1, :cond_3

    .line 615
    return p2

    .line 617
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v0

    return v0
.end method

.method private updateRingerMode()V
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_9

    .line 526
    const/4 v1, 0x0

    goto :goto_d

    .line 527
    :cond_9
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    :goto_d
    iput v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 528
    monitor-exit v0

    .line 529
    return-void

    .line 528
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private updateSettings()V
    .registers 19

    .line 462
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 463
    :try_start_5
    const-string/jumbo v0, "vibrate_input_devices"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-lez v0, :cond_12

    move v0, v4

    goto :goto_13

    :cond_12
    move v0, v3

    :goto_13
    iput-boolean v0, v1, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    .line 464
    const-string/jumbo v0, "vibrate_on"

    invoke-direct {v1, v0, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1f

    goto :goto_20

    :cond_1f
    move v4, v3

    :goto_20
    iput-boolean v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    .line 466
    const-string v0, "alarm_vibration_intensity"

    .line 467
    const/4 v4, -0x1

    invoke-direct {v1, v0, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v0

    .line 468
    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v6

    .line 466
    invoke-direct {v1, v0, v6}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v0

    .line 469
    .local v0, "alarmIntensity":I
    const/16 v6, 0x12

    invoke-virtual {v1, v6}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v7

    .line 470
    .local v7, "defaultHapticFeedbackIntensity":I
    const-string v8, "haptic_feedback_intensity"

    .line 471
    invoke-direct {v1, v8, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v8

    .line 470
    invoke-direct {v1, v8, v7}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v8

    .line 473
    .local v8, "hapticFeedbackIntensity":I
    invoke-direct {v1, v8, v7}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v9

    .line 475
    .local v9, "positiveHapticFeedbackIntensity":I
    const-string v10, "hardware_haptic_feedback_intensity"

    .line 476
    invoke-direct {v1, v10, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v10

    .line 475
    invoke-direct {v1, v10, v9}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v10

    .line 478
    .local v10, "hardwareFeedbackIntensity":I
    const-string/jumbo v11, "media_vibration_intensity"

    .line 479
    invoke-direct {v1, v11, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v11

    .line 480
    const/16 v12, 0x13

    invoke-virtual {v1, v12}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v13

    .line 478
    invoke-direct {v1, v11, v13}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v11

    .line 481
    .local v11, "mediaIntensity":I
    const/16 v13, 0x31

    invoke-virtual {v1, v13}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v14

    .line 482
    .local v14, "defaultNotificationIntensity":I
    const-string/jumbo v15, "notification_vibration_intensity"

    .line 483
    invoke-direct {v1, v15, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v15

    .line 482
    invoke-direct {v1, v15, v14}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v15

    .line 485
    .local v15, "notificationIntensity":I
    invoke-direct {v1, v15, v14}, Lcom/android/server/vibrator/VibrationSettings;->toPositiveIntensity(II)I

    move-result v16

    move/from16 v17, v16

    .line 487
    .local v17, "positiveNotificationIntensity":I
    const-string/jumbo v6, "ring_vibration_intensity"

    .line 488
    invoke-direct {v1, v6, v4}, Lcom/android/server/vibrator/VibrationSettings;->loadSystemSetting(Ljava/lang/String;I)I

    move-result v4

    .line 489
    const/16 v6, 0x21

    invoke-virtual {v1, v6}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 487
    invoke-direct {v1, v4, v3}, Lcom/android/server/vibrator/VibrationSettings;->toIntensity(II)I

    move-result v3

    .line 491
    .local v3, "ringIntensity":I
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    .line 492
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 493
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v13, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 494
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v12, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 495
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 496
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 499
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v5, 0x41

    move/from16 v6, v17

    .end local v17    # "positiveNotificationIntensity":I
    .local v6, "positiveNotificationIntensity":I
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 504
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 505
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 514
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v5, 0x12

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 517
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 518
    .end local v0    # "alarmIntensity":I
    .end local v3    # "ringIntensity":I
    .end local v6    # "positiveNotificationIntensity":I
    .end local v7    # "defaultHapticFeedbackIntensity":I
    .end local v8    # "hapticFeedbackIntensity":I
    .end local v9    # "positiveHapticFeedbackIntensity":I
    .end local v10    # "hardwareFeedbackIntensity":I
    .end local v11    # "mediaIntensity":I
    .end local v14    # "defaultNotificationIntensity":I
    .end local v15    # "notificationIntensity":I
    monitor-exit v2

    .line 519
    return-void

    .line 518
    :catchall_d0
    move-exception v0

    monitor-exit v2
    :try_end_d2
    .catchall {:try_start_5 .. :try_end_d2} :catchall_d0

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 290
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 292
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_10
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 557
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    const-wide v1, 0x10800000018L

    :try_start_8
    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 559
    const-wide v1, 0x10800000006L

    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 560
    const-wide v1, 0x10500000012L

    .line 561
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 560
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 562
    const-wide v1, 0x10500000013L

    .line 563
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 562
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 564
    const-wide v1, 0x10500000016L

    .line 565
    const/16 v3, 0x32

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 564
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 566
    const-wide v1, 0x10500000017L

    .line 567
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 566
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 568
    const-wide v1, 0x10500000007L

    .line 569
    const/16 v3, 0x12

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 568
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 570
    const-wide v1, 0x10500000008L

    .line 571
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 570
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 572
    const-wide v1, 0x10500000014L

    .line 573
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 572
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 574
    const-wide v1, 0x10500000015L

    .line 575
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 574
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 576
    const-wide v1, 0x10500000009L

    .line 577
    const/16 v3, 0x31

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 576
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 578
    const-wide v1, 0x1050000000aL

    .line 579
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 578
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 580
    const-wide v1, 0x1050000000bL

    .line 581
    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v4

    .line 580
    invoke-virtual {p1, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 582
    const-wide v1, 0x1050000000cL

    .line 583
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v3

    .line 582
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 584
    monitor-exit v0

    .line 585
    return-void

    .line 584
    :catchall_b5
    move-exception v1

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_8 .. :try_end_b7} :catchall_b5

    throw v1
.end method

.method public getCurrentIntensity(I)I
    .registers 5
    .param p1, "usageHint"    # I

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v0

    .line 339
    .local v0, "defaultIntensity":I
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_7
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    monitor-exit v1

    return v2

    .line 341
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v2
.end method

.method public getDefaultIntensity(I)I
    .registers 3
    .param p1, "usageHint"    # I

    .line 328
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v0

    return v0
.end method

.method public getFallbackEffect(I)Landroid/os/VibrationEffect;
    .registers 3
    .param p1, "effectId"    # I

    .line 352
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public getRampDownDuration()I
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->getRampDownDurationMs()I

    move-result v0

    return v0
.end method

.method public getRampStepDuration()I
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->getRampStepDurationMs()I

    move-result v0

    return v0
.end method

.method public onSystemReady()V
    .registers 9

    .line 222
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 223
    .local v0, "pm":Landroid/os/PowerManagerInternal;
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 224
    .local v1, "am":Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    .line 226
    .local v2, "ringerMode":I
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 227
    :try_start_19
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 228
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 229
    iput v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mRingerMode:I

    .line 230
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_9a

    .line 233
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    .line 238
    goto :goto_2e

    .line 236
    :catch_2d
    move-exception v3

    .line 240
    :goto_2e
    new-instance v3, Lcom/android/server/vibrator/VibrationSettings$1;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/VibrationSettings$1;-><init>(Lcom/android/server/vibrator/VibrationSettings;)V

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 260
    sget-object v3, Lcom/android/server/vibrator/VibrationSettings;->USER_SWITCHED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsChangeReceiver(Landroid/content/IntentFilter;)V

    .line 261
    sget-object v3, Lcom/android/server/vibrator/VibrationSettings;->INTERNAL_RINGER_MODE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsChangeReceiver(Landroid/content/IntentFilter;)V

    .line 264
    const-string/jumbo v3, "vibrate_input_devices"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 265
    const-string/jumbo v3, "vibrate_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 266
    const-string v3, "haptic_feedback_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 268
    const-string v3, "alarm_vibration_intensity"

    .line 269
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 268
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 270
    const-string v3, "haptic_feedback_intensity"

    .line 271
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 270
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 272
    const-string v3, "hardware_haptic_feedback_intensity"

    .line 273
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 272
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 274
    const-string/jumbo v3, "media_vibration_intensity"

    .line 275
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 274
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 276
    const-string/jumbo v3, "notification_vibration_intensity"

    .line 277
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 276
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 278
    const-string/jumbo v3, "ring_vibration_intensity"

    .line 279
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 278
    invoke-direct {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->registerSettingsObserver(Landroid/net/Uri;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 283
    return-void

    .line 230
    :catchall_9a
    move-exception v4

    :try_start_9b
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v4
.end method

.method public removeListener(Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/vibrator/VibrationSettings$OnVibratorSettingsChanged;

    .line 299
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 301
    monitor-exit v0

    .line 302
    return-void

    .line 301
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public shouldCancelVibrationOnScreenOff(ILjava/lang/String;IJ)Z
    .registers 13
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "usage"    # I
    .param p4, "vibrationStartUptimeMillis"    # J

    .line 412
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 414
    .local v1, "pm":Landroid/os/PowerManagerInternal;
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6a

    .line 415
    const/4 v0, 0x0

    if-eqz v1, :cond_4c

    .line 420
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getLastGoToSleep()Landroid/os/PowerManager$SleepData;

    move-result-object v2

    .line 421
    .local v2, "sleepData":Landroid/os/PowerManager$SleepData;
    iget-wide v3, v2, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    cmp-long v3, v3, p4

    if-ltz v3, :cond_21

    sget-object v3, Lcom/android/server/vibrator/VibrationSettings;->POWER_MANAGER_SLEEP_REASON_ALLOWLIST:Ljava/util/Set;

    iget v4, v2, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 422
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 425
    :cond_21
    const-string v3, "VibrationSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring screen off event triggered at uptime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Landroid/os/PowerManager$SleepData;->goToSleepUptimeMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/os/PowerManager$SleepData;->goToSleepReason:I

    .line 427
    invoke-static {v5}, Landroid/os/PowerManager;->sleepReasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v0

    .line 431
    .end local v2    # "sleepData":Landroid/os/PowerManager$SleepData;
    :cond_4c
    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->SYSTEM_VIBRATION_SCREEN_OFF_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5a

    .line 433
    return v3

    .line 436
    :cond_5a
    const/16 v2, 0x3e8

    if-eq p1, v2, :cond_69

    if-eqz p1, :cond_69

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mSystemUiPackage:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    move v0, v3

    :cond_69
    return v0

    .line 414
    .end local v1    # "pm":Landroid/os/PowerManagerInternal;
    :catchall_6a
    move-exception v1

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method public shouldIgnoreVibration(ILandroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "attrs"    # Landroid/os/VibrationAttributes;

    .line 368
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 369
    .local v0, "usage":I
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_7
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    invoke-virtual {v2, p1}, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->isUidForeground(I)Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->BACKGROUND_PROCESS_USAGE_ALLOWLIST:Ljava/util/Set;

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 372
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_BACKGROUND:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object v2

    .line 375
    :cond_1f
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    if-eqz v2, :cond_33

    sget-object v2, Lcom/android/server/vibrator/VibrationSettings;->BATTERY_SAVER_USAGE_ALLOWLIST:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 376
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_POWER:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object v2

    .line 379
    :cond_33
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v2

    if-nez v2, :cond_50

    .line 380
    iget-boolean v2, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    if-nez v2, :cond_46

    const/16 v2, 0x42

    if-eq v2, v0, :cond_46

    .line 381
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object v2

    .line 384
    :cond_46
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentIntensity(I)I

    move-result v2

    if-nez v2, :cond_50

    .line 385
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_SETTINGS:Lcom/android/server/vibrator/Vibration$Status;

    monitor-exit v1

    return-object v2

    .line 395
    :cond_50
    monitor-exit v1

    .line 396
    const/4 v1, 0x0

    return-object v1

    .line 395
    :catchall_53
    move-exception v2

    monitor-exit v1
    :try_end_55
    .catchall {:try_start_7 .. :try_end_55} :catchall_53

    throw v2
.end method

.method public shouldVibrateInputDevices()Z
    .registers 2

    .line 357
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 533
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .local v1, "vibrationIntensitiesString":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 536
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 537
    .local v3, "usage":I
    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 538
    .local v4, "intensity":I
    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=("

    .line 539
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",default:"

    .line 540
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getDefaultIntensity(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/vibrator/VibrationSettings;->intensityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), "

    .line 541
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    nop

    .end local v3    # "usage":I
    .end local v4    # "intensity":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 543
    .end local v2    # "i":I
    :cond_51
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VibrationSettings{mVibratorConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mVibrateInputDevices="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateInputDevices:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBatterySaverMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mBatterySaverMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mVibrateOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mVibrateOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mVibrationIntensities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mProcStatesCache="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vibrator/VibrationSettings;->mUidObserver:Lcom/android/server/vibrator/VibrationSettings$UidObserver;

    invoke-static {v4}, Lcom/android/server/vibrator/VibrationSettings$UidObserver;->-$$Nest$fgetmProcStatesCache(Lcom/android/server/vibrator/VibrationSettings$UidObserver;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 552
    .end local v1    # "vibrationIntensitiesString":Ljava/lang/StringBuilder;
    :catchall_af
    move-exception v1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_3 .. :try_end_b1} :catchall_af

    throw v1
.end method

.method update()V
    .registers 1

    .line 456
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateSettings()V

    .line 457
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->updateRingerMode()V

    .line 458
    invoke-direct {p0}, Lcom/android/server/vibrator/VibrationSettings;->notifyListeners()V

    .line 459
    return-void
.end method
