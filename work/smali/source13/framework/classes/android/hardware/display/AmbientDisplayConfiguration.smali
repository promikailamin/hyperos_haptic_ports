.class public Landroid/hardware/display/AmbientDisplayConfiguration;
.super Ljava/lang/Object;
.source "AmbientDisplayConfiguration.java"


# static fields
.field private static final blacklist DOZE_SETTINGS:[Ljava/lang/String;

.field private static final blacklist IS_FOD_SENSOR:Z

.field private static final blacklist NON_USER_CONFIGURABLE_DOZE_SETTINGS:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "AmbientDisplayConfig"


# instance fields
.field private final blacklist mAlwaysOnByDefault:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field final blacklist mUsersInitialValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 50
    nop

    .line 51
    const-string/jumbo v0, "ro.hardware.fp.fod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/display/AmbientDisplayConfiguration;->IS_FOD_SENSOR:Z

    .line 56
    const-string v1, "doze_enabled"

    const-string v2, "doze_always_on"

    const-string v3, "doze_pulse_on_pick_up"

    const-string v4, "doze_pulse_on_long_press"

    const-string v5, "doze_pulse_on_double_tap"

    const-string v6, "doze_wake_screen_gesture"

    const-string v7, "doze_wake_display_gesture"

    const-string v8, "doze_tap_gesture"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/display/AmbientDisplayConfiguration;->DOZE_SETTINGS:[Ljava/lang/String;

    .line 68
    const-string v0, "doze_quick_pickup_gesture"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/display/AmbientDisplayConfiguration;->NON_USER_CONFIGURABLE_DOZE_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    .line 77
    iput-object p1, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mAlwaysOnByDefault:Z

    .line 79
    return-void
.end method

.method private blacklist alwaysOnDisplayAvailable()Z
    .registers 3

    .line 324
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private blacklist alwaysOnDisplayDebuggingEnabled()Z
    .registers 3

    .line 328
    const-string v0, "debug.doze.aod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private blacklist animateOnNotificationEnabled(I)Z
    .registers 7
    .param p1, "user"    # I

    .line 101
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    invoke-direct {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->isSupportAodAnimateDevice()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    .line 101
    :goto_11
    const-string/jumbo v4, "wakeup_for_keyguard_notification"

    invoke-static {v0, v4, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    return v3
.end method

.method private blacklist boolSetting(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I
    .param p3, "def"    # I

    .line 340
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist boolSettingDefaultOff(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private blacklist boolSettingDefaultOn(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private blacklist fingerApplyForKeyguard(I)Z
    .registers 5
    .param p1, "user"    # I

    .line 120
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_keyguard"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private blacklist getDozeSetting(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 384
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist inScreenFingerprintEnable(I)Z
    .registers 4
    .param p1, "user"    # I

    .line 112
    sget-boolean v0, Landroid/hardware/display/AmbientDisplayConfiguration;->IS_FOD_SENSOR:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 113
    return v1

    .line 116
    :cond_6
    invoke-direct {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->isEnterFingerprint()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->fingerApplyForKeyguard(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method private blacklist isEnterFingerprint()Z
    .registers 4

    .line 125
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 128
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 132
    :cond_1e
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 133
    return v1

    .line 136
    :cond_24
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_31

    const/4 v1, 0x1

    :cond_31
    return v1
.end method

.method private blacklist isSupportAodAnimateDevice()Z
    .registers 2

    .line 107
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    return v0
.end method

.method private blacklist pulseOnLongPressAvailable()Z
    .registers 2

    .line 268
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 388
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 389
    return-void
.end method


# virtual methods
.method public blacklist accessibilityInversionEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 310
    const-string v0, "accessibility_display_inversion_enabled"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist alwaysOnAvailable()Z
    .registers 2

    .line 289
    invoke-direct {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnDisplayDebuggingEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 290
    :cond_c
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 289
    :goto_15
    return v0
.end method

.method public blacklist alwaysOnAvailableForUser(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 300
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->accessibilityInversionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist alwaysOnEnabled(I)Z
    .registers 4
    .param p1, "user"    # I

    .line 278
    iget-boolean v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mAlwaysOnByDefault:Z

    const-string v1, "doze_always_on"

    invoke-direct {p0, v1, p1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSetting(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 279
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->accessibilityInversionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 278
    :goto_19
    return v0
.end method

.method public blacklist ambientDisplayAvailable()Z
    .registers 2

    .line 315
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist ambientDisplayComponent()Ljava/lang/String;
    .registers 3

    .line 305
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist disableDozeSettings(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->disableDozeSettings(ZI)V

    .line 347
    return-void
.end method

.method public blacklist disableDozeSettings(ZI)V
    .registers 11
    .param p1, "shouldDisableNonUserConfigurable"    # Z
    .param p2, "userId"    # I

    .line 352
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 353
    .local v0, "initialValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_19

    .line 354
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Don\'t call #disableDozeSettings more than once,without first calling #restoreDozeSettings"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_19
    :goto_19
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 358
    sget-object v1, Landroid/hardware/display/AmbientDisplayConfiguration;->DOZE_SETTINGS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_24
    const-string v5, "0"

    if-ge v4, v2, :cond_37

    aget-object v6, v1, v4

    .line 359
    .local v6, "name":Ljava/lang/String;
    invoke-direct {p0, v6, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->getDozeSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-direct {p0, v6, v5, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 362
    :cond_37
    if-eqz p1, :cond_4d

    .line 363
    sget-object v1, Landroid/hardware/display/AmbientDisplayConfiguration;->NON_USER_CONFIGURABLE_DOZE_SETTINGS:[Ljava/lang/String;

    array-length v2, v1

    :goto_3c
    if-ge v3, v2, :cond_4d

    aget-object v4, v1, v3

    .line 364
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->getDozeSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-direct {p0, v4, v5, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 368
    :cond_4d
    iget-object v1, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    return-void
.end method

.method public blacklist doubleTapGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 181
    const-string v0, "doze_pulse_on_double_tap"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 182
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 181
    :goto_11
    return v0
.end method

.method public blacklist doubleTapSensorAvailable()Z
    .registers 2

    .line 187
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist doubleTapSensorType()Ljava/lang/String;
    .registers 3

    .line 229
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040275

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dozePickupSensorAvailable()Z
    .registers 3

    .line 160
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist dozeSuppressed(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 320
    const-string/jumbo v0, "suppress_doze"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist enabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 83
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 84
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnLongPressEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 85
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 86
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeLockScreenGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 87
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeDisplayGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 88
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pickupGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 89
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 90
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapGestureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 91
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 92
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->screenOffUdfpsEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 94
    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->inScreenFingerprintEnable(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 95
    invoke-direct {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->animateOnNotificationEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_4b

    :cond_49
    const/4 v0, 0x0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v0, 0x1

    .line 83
    :goto_4c
    return v0
.end method

.method public blacklist getWakeLockScreenDebounce()J
    .registers 3

    .line 224
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist longPressSensorType()Ljava/lang/String;
    .registers 3

    .line 248
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040276

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist pickupGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 154
    const-string v0, "doze_pulse_on_pick_up"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 155
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 154
    :goto_11
    return v0
.end method

.method public blacklist pulseOnLongPressEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 263
    invoke-direct {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnLongPressAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "doze_pulse_on_long_press"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist pulseOnNotificationAvailable()Z
    .registers 2

    .line 149
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    return v0
.end method

.method public blacklist pulseOnNotificationEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 143
    const-string v0, "doze_enabled"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 144
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 143
    :goto_11
    return v0
.end method

.method public blacklist quickPickupSensorEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 192
    const-string v0, "doze_quick_pickup_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 193
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 194
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pickupGestureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 195
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 192
    :goto_21
    return v0
.end method

.method public blacklist quickPickupSensorType()Ljava/lang/String;
    .registers 3

    .line 258
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist restoreDozeSettings(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 374
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 375
    .local v0, "initialValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 376
    sget-object v1, Landroid/hardware/display/AmbientDisplayConfiguration;->DOZE_SETTINGS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 377
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v4, v5, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->putDozeSetting(Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    .end local v4    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 379
    :cond_24
    iget-object v1, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mUsersInitialValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 381
    :cond_29
    return-void
.end method

.method public blacklist screenOffUdfpsEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 200
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->udfpsLongPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 201
    const-string/jumbo v0, "screen_off_udfps_enabled"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOff(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 200
    :goto_16
    return v0
.end method

.method public blacklist tapGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 165
    const-string v0, "doze_tap_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 166
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 165
    :goto_11
    return v0
.end method

.method public blacklist tapSensorAvailable()Z
    .registers 7

    .line 171
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorTypeMapping()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 172
    .local v4, "tapType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 173
    const/4 v0, 0x1

    return v0

    .line 171
    .end local v4    # "tapType":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 176
    :cond_16
    return v2
.end method

.method public blacklist tapSensorTypeMapping()[Ljava/lang/String;
    .registers 6

    .line 236
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "postureMapping":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 239
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    .line 240
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040277

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 239
    return-object v1

    .line 243
    :cond_27
    return-object v0
.end method

.method public blacklist udfpsLongPressSensorType()Ljava/lang/String;
    .registers 3

    .line 253
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040278

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist wakeDisplayGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 218
    const-string v0, "doze_wake_display_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 219
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 218
    :goto_11
    return v0
.end method

.method public blacklist wakeLockScreenGestureEnabled(I)Z
    .registers 3
    .param p1, "user"    # I

    .line 212
    const-string v0, "doze_wake_screen_gesture"

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;->boolSettingDefaultOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 213
    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 212
    :goto_11
    return v0
.end method

.method public blacklist wakeScreenGestureAvailable()Z
    .registers 3

    .line 206
    iget-object v0, p0, Landroid/hardware/display/AmbientDisplayConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    const v1, 0x111011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 206
    return v0
.end method
