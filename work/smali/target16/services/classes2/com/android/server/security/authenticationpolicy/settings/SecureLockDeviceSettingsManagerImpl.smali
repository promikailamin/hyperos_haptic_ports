.class public Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;
.super Ljava/lang/Object;
.source "SecureLockDeviceSettingsManagerImpl.java"

# interfaces
.implements Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;


# static fields
.field public static final DEBUG:Z

.field public static final DEVICE_POLICY_RESTRICTIONS:Ljava/util/Set;

.field public static final GLOBAL_SETTINGS:Ljava/util/Set;

.field public static final SECURE_SETTINGS_SECURE_LOCK_DEVICE_VALUES:Ljava/util/Map;

.field public static final SYSTEM_SETTINGS_SECURE_LOCK_DEVICE_VALUES:Ljava/util/Map;


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mDevicePolicyRestrictionsController:Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;

.field public final mDisableFlagsController:Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;

.field public final mGlobalSettingController:Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;

.field public final mManagedSettings:Ljava/util/Map;

.field public final mManagedSettingsLock:Ljava/lang/Object;

.field public final mNfcSettingController:Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;

.field public final mSecureSettingController:Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;

.field public final mSystemSettingController:Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;

.field public final mUsbSettingController:Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;

.field public final mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public static synthetic $r8$lambda$zCasNkLOQZfWYPj5ua7s5Lxwyo4(ILjava/lang/String;Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;)V
    .registers 3

    .line 247
    invoke-virtual {p2, p0}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->restoreFromOriginalValue(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 21

    .line 51
    const-string v0, "SLDSettingsManagerImpl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->DEBUG:Z

    .line 77
    const-string/jumbo v5, "no_sms"

    const-string/jumbo v6, "no_user_switch"

    .line 78
    const-string/jumbo v1, "no_usb_file_transfer"

    const-string/jumbo v2, "no_debugging_features"

    const-string/jumbo v3, "no_change_wifi_state"

    const-string/jumbo v4, "no_config_wifi"

    invoke-static/range {v1 .. v6}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->DEVICE_POLICY_RESTRICTIONS:Ljava/util/Set;

    const/4 v0, 0x0

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x1

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 95
    const-string v17, "lock_screen_show_qr_code_scanner"

    .line 96
    const-string v19, "glanceable_hub_enabled"

    .line 87
    const-string v1, "lock_screen_show_notifications"

    const-string v3, "double_tap_power_button_gesture_enabled"

    const-string v5, "camera_gesture_disabled"

    const-string v7, "camera_double_tap_power_gesture_disabled"

    const-string v9, "camera_lift_trigger_enabled"

    const-string v11, "lockscreen_weather_enabled"

    const-string v13, "lockscreen_show_controls"

    const-string v15, "lockscreen_show_wallet"

    move-object v4, v2

    move-object v8, v6

    move-object v10, v2

    move-object v12, v2

    move-object v14, v2

    move-object/from16 v16, v2

    move-object/from16 v18, v2

    move-object/from16 v20, v2

    invoke-static/range {v1 .. v20}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->SECURE_SETTINGS_SECURE_LOCK_DEVICE_VALUES:Ljava/util/Map;

    .line 99
    const-string v0, "bluetooth_discoverability"

    .line 101
    const-string v1, "lock_to_app_enabled"

    .line 100
    invoke-static {v0, v2, v1, v2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->SYSTEM_SETTINGS_SECURE_LOCK_DEVICE_VALUES:Ljava/util/Map;

    .line 104
    const-string/jumbo v0, "user_switcher_enabled"

    const-string v1, "allow_user_switching_when_system_user_locked"

    .line 105
    const-string v2, "adb_enabled"

    const-string v3, "adb_wifi_enabled"

    const-string v4, "add_users_when_locked"

    invoke-static {v2, v3, v4, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->GLOBAL_SETTINGS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActivityTaskManager;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/internal/app/IVoiceInteractionManagerService;)V
    .registers 6

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettingsLock:Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    .line 122
    new-instance v0, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;

    invoke-direct {v0}, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mDevicePolicyRestrictionsController:Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;

    .line 125
    new-instance v0, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;

    invoke-direct {v0}, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mUsbSettingController:Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;

    .line 136
    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 137
    iput-object p4, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 138
    new-instance p2, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4, p3}, Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;-><init>(Ljava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V

    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mDisableFlagsController:Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;

    .line 140
    new-instance p2, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;

    invoke-direct {p2, p1}, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mNfcSettingController:Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 142
    new-instance p3, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;

    invoke-direct {p3, p1}, Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mSecureSettingController:Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;

    .line 143
    new-instance p3, Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;

    invoke-direct {p3, p1}, Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mSystemSettingController:Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;

    .line 144
    new-instance p1, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;

    invoke-direct {p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;-><init>(Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mGlobalSettingController:Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;

    .line 145
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->resetManagedSettings()V

    return-void
.end method


# virtual methods
.method public final applySecureLockDeviceSettings(I)V
    .registers 7

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v0}, Landroid/app/ActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    .line 261
    const-string v1, "SLDSettingsManagerImpl"

    const-string v2, "Error stopping system lock task mode"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    :goto_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabled(Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception v0

    .line 268
    const-string v1, "SLDSettingsManagerImpl"

    const-string v2, "Error disabling assistant access"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    :goto_1d
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_20
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;

    .line 273
    sget-boolean v2, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_53

    .line 274
    const-string v2, "SLDSettingsManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Applying secure lock device value to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :catchall_51
    move-exception p0

    goto :goto_59

    .line 276
    :cond_53
    :goto_53
    invoke-virtual {v1, p1}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->applySecureLockDeviceValue(I)V

    goto :goto_2a

    .line 278
    :cond_57
    monitor-exit v0

    return-void

    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_20 .. :try_end_5a} :catchall_51

    throw p0
.end method

.method public enableSecurityFeatures(I)V
    .registers 5

    .line 228
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->DEBUG:Z

    const-string v1, "SLDSettingsManagerImpl"

    if-eqz v0, :cond_b

    .line 229
    const-string v2, "enableSecurityFeatures: not enabling from boot, initialize managed settings and store current state of settings."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->resetManagedSettings()V

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->storeOriginalSettings(I)V

    if-eqz v0, :cond_18

    .line 237
    const-string v0, "enableSecurityFeatures: applying secure lock device values to settings."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->applySecureLockDeviceSettings(I)V

    return-void
.end method

.method public enableSecurityFeaturesFromBoot(I)V
    .registers 4

    .line 218
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 219
    const-string v0, "SLDSettingsManagerImpl"

    const-string v1, "enableSecurityFeaturesFromBoot: enabling from boot, original settings values already loaded from file. Applying secure lock device values to settings."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->applySecureLockDeviceSettings(I)V

    return-void
.end method

.method public getManagedSettings()Ljava/util/Map;
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    .line 153
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public initSettingsControllerDependencies(Landroid/app/admin/DevicePolicyManager;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/IUsbManagerInternal;)V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mDevicePolicyRestrictionsController:Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;

    invoke-virtual {v0, p1}, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->setDevicePolicyManager(Landroid/app/admin/DevicePolicyManager;)V

    .line 161
    iget-object p1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mUsbSettingController:Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;

    invoke-virtual {p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->setUsbManager(Landroid/hardware/usb/UsbManager;)V

    .line 162
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mUsbSettingController:Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;

    invoke-virtual {p0, p3}, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->setUsbManagerInternal(Landroid/hardware/usb/IUsbManagerInternal;)V

    return-void
.end method

.method public resetManagedSettings()V
    .registers 11

    .line 167
    const-string v0, "SLDSettingsManagerImpl"

    const-string/jumbo v1, "resetManagedSettings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_b
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 171
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    const-string/jumbo v2, "nfc_enabled"

    new-instance v3, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;

    new-instance v4, Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    const-string/jumbo v5, "nfc_enabled"

    sget-object v6, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->BOOLEAN:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    .line 172
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;-><init>(Ljava/lang/String;Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mNfcSettingController:Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;

    invoke-direct {v3, v4, v5}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;-><init>(Lcom/android/server/security/authenticationpolicy/settings/SettingState;Lcom/android/server/security/authenticationpolicy/settings/SettingController;)V

    .line 171
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    const-string/jumbo v2, "usb_enabled"

    new-instance v3, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;

    new-instance v4, Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    const-string/jumbo v5, "usb_enabled"

    sget-object v6, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->USB_PORT_MAP:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;-><init>(Ljava/lang/String;Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mUsbSettingController:Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;

    invoke-direct {v3, v4, v5}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;-><init>(Lcom/android/server/security/authenticationpolicy/settings/SettingState;Lcom/android/server/security/authenticationpolicy/settings/SettingController;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->GLOBAL_SETTINGS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    new-instance v4, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;

    new-instance v5, Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    sget-object v6, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->INTEGER:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    const/4 v7, 0x0

    .line 183
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v2, v6, v7}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;-><init>(Ljava/lang/String;Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mGlobalSettingController:Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;

    invoke-direct {v4, v5, v6}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;-><init>(Lcom/android/server/security/authenticationpolicy/settings/SettingState;Lcom/android/server/security/authenticationpolicy/settings/SettingController;)V

    .line 182
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :catchall_74
    move-exception p0

    goto/16 :goto_131

    .line 188
    :cond_77
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    const-string v2, "device_policy_restrictions"

    new-instance v3, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;

    new-instance v4, Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    const-string v5, "device_policy_restrictions"

    sget-object v6, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->STRING_SET:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    sget-object v7, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->DEVICE_POLICY_RESTRICTIONS:Ljava/util/Set;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;-><init>(Ljava/lang/String;Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mDevicePolicyRestrictionsController:Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;

    invoke-direct {v3, v4, v5}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;-><init>(Lcom/android/server/security/authenticationpolicy/settings/SettingState;Lcom/android/server/security/authenticationpolicy/settings/SettingController;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->SECURE_SETTINGS_SECURE_LOCK_DEVICE_VALUES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 196
    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;

    new-instance v6, Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    .line 197
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->INTEGER:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v6, v7, v8, v2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;-><init>(Ljava/lang/String;Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mSecureSettingController:Lcom/android/server/security/authenticationpolicy/settings/SecureSettingController;

    invoke-direct {v5, v6, v2}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;-><init>(Lcom/android/server/security/authenticationpolicy/settings/SettingState;Lcom/android/server/security/authenticationpolicy/settings/SettingController;)V

    .line 196
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 202
    :cond_cc
    sget-object v1, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->SYSTEM_SETTINGS_SECURE_LOCK_DEVICE_VALUES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_108

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 203
    iget-object v3, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;

    new-instance v6, Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    .line 204
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->INTEGER:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v6, v7, v8, v2}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;-><init>(Ljava/lang/String;Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mSystemSettingController:Lcom/android/server/security/authenticationpolicy/settings/SystemSettingController;

    invoke-direct {v5, v6, v2}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;-><init>(Lcom/android/server/security/authenticationpolicy/settings/SettingState;Lcom/android/server/security/authenticationpolicy/settings/SettingController;)V

    .line 203
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d6

    .line 208
    :cond_108
    iget-object v1, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    const-string v2, "disable_flags"

    new-instance v3, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;

    new-instance v4, Lcom/android/server/security/authenticationpolicy/settings/SettingState;

    const-string v5, "disable_flags"

    sget-object v6, Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;->INTEGER_PAIR:Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;

    new-instance v7, Landroid/util/Pair;

    const/high16 v8, 0x6670000

    .line 210
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/security/authenticationpolicy/settings/SettingState;-><init>(Ljava/lang/String;Lcom/android/server/security/authenticationpolicy/settings/SettingState$SettingType;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mDisableFlagsController:Lcom/android/server/security/authenticationpolicy/settings/DisableFlagsController;

    invoke-direct {v3, v4, p0}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;-><init>(Lcom/android/server/security/authenticationpolicy/settings/SettingState;Lcom/android/server/security/authenticationpolicy/settings/SettingController;)V

    .line 208
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-exit v0

    return-void

    :goto_131
    monitor-exit v0
    :try_end_132
    .catchall {:try_start_b .. :try_end_132} :catchall_74

    throw p0
.end method

.method public restoreOriginalSettings(I)V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    new-instance v1, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 249
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setSkipSecurityFeaturesForTest(Z)V
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mDevicePolicyRestrictionsController:Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;

    invoke-virtual {v0, p1}, Lcom/android/server/security/authenticationpolicy/settings/DevicePolicyRestrictionsController;->setSkipSecurityFeaturesForTest(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mGlobalSettingController:Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;

    invoke-virtual {v0, p1}, Lcom/android/server/security/authenticationpolicy/settings/GlobalSettingController;->setSkipSecurityFeaturesForTest(Z)V

    .line 298
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mNfcSettingController:Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;

    invoke-virtual {v0, p1}, Lcom/android/server/security/authenticationpolicy/settings/NfcSettingController;->setSkipSecurityFeaturesForTest(Z)V

    .line 299
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mUsbSettingController:Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;

    invoke-virtual {p0, p1}, Lcom/android/server/security/authenticationpolicy/settings/UsbSettingController;->setSkipSecurityFeaturesForTest(Z)V

    return-void
.end method

.method public final storeOriginalSettings(I)V
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_3
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManagerImpl;->mManagedSettings:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;

    .line 288
    invoke-virtual {v1, p1}, Lcom/android/server/security/authenticationpolicy/settings/ManagedSetting;->storeOriginalValue(I)V

    goto :goto_d

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 290
    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method
