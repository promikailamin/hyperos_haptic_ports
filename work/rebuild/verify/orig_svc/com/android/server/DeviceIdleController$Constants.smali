.class public final Lcom/android/server/DeviceIdleController$Constants;
.super Landroid/database/ContentObserver;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# static fields
.field static final DEFAULT_IDLE_AFTER_INACTIVE_TIMEOUT_SMALL_BATTERY:J = 0xea60L

.field static final DEFAULT_INACTIVE_TIMEOUT_SMALL_BATTERY:J = 0xea60L


# instance fields
.field public FLEX_TIME_SHORT:J

.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_FACTOR:F

.field public LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

.field public LIGHT_IDLE_INCREASE_LINEARLY:Z

.field public LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

.field public LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

.field public LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

.field public LIGHT_IDLE_TIMEOUT:J

.field public LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

.field public LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

.field public LIGHT_MAX_IDLE_TIMEOUT:J

.field public LOCATING_TIMEOUT:J

.field public LOCATION_ACCURACY:F

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MIN_DEEP_MAINTENANCE_TIME:J

.field public MIN_LIGHT_MAINTENANCE_TIME:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public MOTION_INACTIVE_TIMEOUT_FLEX:J

.field public NOTIFICATION_ALLOWLIST_DURATION_MS:J

.field public QUICK_DOZE_DELAY_TIMEOUT:J

.field public SENSING_TIMEOUT:J

.field public SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

.field public USE_MODE_MANAGER:Z

.field public USE_WINDOW_ALARMS:Z

.field public WAIT_FOR_UNLOCK:Z

.field public mDefaultFlexTimeShort:J

.field public mDefaultIdleAfterInactiveTimeout:J

.field public mDefaultIdleFactor:F

.field public mDefaultIdlePendingFactor:F

.field public mDefaultIdlePendingTimeout:J

.field public mDefaultIdleTimeout:J

.field public mDefaultInactiveTimeout:J

.field public mDefaultLightIdleAfterInactiveTimeout:J

.field public mDefaultLightIdleFactor:F

.field public mDefaultLightIdleFlexLinearIncreaseFactorMs:J

.field public mDefaultLightIdleIncreaseLinearly:Z

.field public mDefaultLightIdleLinearIncreaseFactorMs:J

.field public mDefaultLightIdleMaintenanceMaxBudget:J

.field public mDefaultLightIdleMaintenanceMinBudget:J

.field public mDefaultLightIdleTimeout:J

.field public mDefaultLightIdleTimeoutInitialFlex:J

.field public mDefaultLightIdleTimeoutMaxFlex:J

.field public mDefaultLightMaxIdleTimeout:J

.field public mDefaultLocatingTimeout:J

.field public mDefaultLocationAccuracy:F

.field public mDefaultMaxIdlePendingTimeout:J

.field public mDefaultMaxIdleTimeout:J

.field public mDefaultMaxTempAppAllowlistDurationMs:J

.field public mDefaultMinDeepMaintenanceTime:J

.field public mDefaultMinLightMaintenanceTime:J

.field public mDefaultMinTimeToAlarm:J

.field public mDefaultMmsTempAppAllowlistDurationMs:J

.field public mDefaultMotionInactiveTimeout:J

.field public mDefaultMotionInactiveTimeoutFlex:J

.field public mDefaultNotificationAllowlistDurationMs:J

.field public mDefaultQuickDozeDelayTimeout:J

.field public mDefaultSensingTimeout:J

.field public mDefaultSmsTempAppAllowlistDurationMs:J

.field public mDefaultUseModeManager:Z

.field public mDefaultUseWindowAlarms:Z

.field public mDefaultWaitForUnlock:Z

.field public final mResolver:Landroid/content/ContentResolver;

.field public final mUseSmallBatteryDeviceValues:Z

.field public final mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;Z)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    .line 1442
    iput-object v2, v0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    move-object/from16 v2, p2

    .line 1443
    invoke-direct {v0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-wide/32 v2, 0xea60

    .line 1097
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    const-wide/32 v4, 0x3a980

    .line 1099
    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    const-wide/32 v6, 0x493e0

    .line 1101
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 1103
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    const-wide/32 v8, 0xdbba0

    .line 1105
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    const/high16 v10, 0x40000000    # 2.0f

    .line 1107
    iput v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    .line 1109
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    .line 1110
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    .line 1112
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 1114
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    .line 1116
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    const-wide/16 v11, 0x1388

    .line 1118
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    const-wide/16 v13, 0x7530

    .line 1120
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    const-wide/32 v11, 0x1b7740

    .line 1122
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 1126
    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 1128
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    const/high16 v15, 0x41a00000    # 20.0f

    .line 1130
    iput v15, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    const-wide/32 v8, 0x927c0

    .line 1131
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    .line 1133
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    .line 1135
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 1139
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 1141
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    .line 1143
    iput v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    .line 1144
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    const-wide/32 v8, 0x36ee80

    .line 1146
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    const-wide/32 v8, 0x1499700

    .line 1148
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 1150
    iput v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    .line 1151
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    .line 1153
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    .line 1154
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    const-wide/16 v8, 0x4e20

    .line 1155
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    .line 1156
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    const/4 v8, 0x1

    .line 1157
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    .line 1158
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    const/4 v9, 0x0

    .line 1159
    iput-boolean v9, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 1166
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 1174
    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1181
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 1190
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    const-wide/32 v8, 0xdbba0

    .line 1197
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 1204
    iput v10, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 1218
    iget-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    iput-boolean v10, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 1226
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 1234
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 1242
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 1251
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 1262
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    const-wide/16 v8, 0x1388

    .line 1273
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 1283
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 1292
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 1301
    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 1308
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 1316
    iput v15, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    const-wide/32 v4, 0x927c0

    .line 1324
    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 1331
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 1339
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1347
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 1353
    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    const/high16 v4, 0x40000000    # 2.0f

    .line 1360
    iput v4, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 1368
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    const-wide/32 v8, 0x36ee80

    .line 1375
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    const-wide/32 v8, 0x1499700

    .line 1381
    iput-wide v8, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 1387
    iput v4, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 1394
    iput-wide v11, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 1402
    iput-wide v6, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1408
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    const-wide/16 v4, 0x4e20

    .line 1414
    iput-wide v4, v0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1422
    iput-wide v13, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    const/4 v4, 0x1

    .line 1424
    iput-boolean v4, v0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 1430
    iput-boolean v4, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    const/4 v5, 0x0

    .line 1435
    iput-boolean v5, v0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    .line 1439
    new-instance v5, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;

    const/16 v6, 0x2c

    invoke-direct {v5, v6}, Lcom/android/server/utils/UserSettingDeviceConfigMediator$SettingsOverridesIndividualMediator;-><init>(C)V

    iput-object v5, v0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    .line 1444
    iput-object v1, v0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    .line 1445
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Constants;->initDefault()V

    if-eqz p4, :cond_ed

    .line 1447
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Constants;->isWatch()Z

    move-result v6

    if-nez v6, :cond_ed

    move v8, v4

    goto :goto_ee

    :cond_ed
    const/4 v8, 0x0

    :goto_ee
    iput-boolean v8, v0, Lcom/android/server/DeviceIdleController$Constants;->mUseSmallBatteryDeviceValues:Z

    if-eqz v8, :cond_f6

    .line 1449
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 1450
    iput-wide v2, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1453
    :cond_f6
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 1452
    const-string v3, "device_idle"

    invoke-static {v3, v2, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1454
    const-string v2, "device_idle_constants"

    .line 1455
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    .line 1454
    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1458
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Constants;->updateSettingsConstantLocked()V

    .line 1459
    new-array v1, v4, [Ljava/lang/String;

    .line 1460
    invoke-static {v3, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 1459
    invoke-virtual {v5, v1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->setDeviceConfigProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 1461
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1774
    const-string v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flex_time_short"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1777
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1778
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1780
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1781
    const-string/jumbo v2, "light_after_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1783
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1784
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1786
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1787
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1788
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1790
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_to_initial_flex"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1791
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1792
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1794
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_max_idle_to_flex"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1795
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1796
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1798
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1799
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1800
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1802
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_increase_linearly"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1804
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1806
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_linear_increase_factor_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1807
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1808
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1809
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1811
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_flex_linear_increase_factor_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1813
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1814
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1816
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_max_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1818
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1820
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_maintenance_min_budget"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1821
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1822
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1824
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "light_idle_maintenance_max_budget"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1825
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1826
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1828
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_light_maintenance_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1829
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1830
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1832
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_deep_maintenance_time"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1834
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1836
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1837
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1838
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1840
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sensing_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1841
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1842
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1844
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "locating_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1845
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1846
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1848
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "location_accuracy"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1849
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v2, "m"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1852
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "motion_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1853
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1854
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1856
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "motion_inactive_to_flex"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1857
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1858
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1860
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_after_inactive_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1861
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1862
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1864
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_pending_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1865
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1866
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1868
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_idle_pending_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1869
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1870
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1872
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_pending_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1873
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1875
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "quick_doze_delay_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1876
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1877
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1879
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1880
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1881
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1883
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_idle_to"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1884
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1885
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1887
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "idle_factor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1888
    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1890
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "min_time_to_alarm"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1891
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1892
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1894
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "max_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1895
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1896
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1898
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mms_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1899
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1900
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1902
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sms_temp_app_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1903
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1904
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1906
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "notification_allowlist_duration_ms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1907
    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1908
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1910
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "wait_for_unlock"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1911
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1913
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "use_window_alarms"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1914
    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1916
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "use_mode_manager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1917
    iget-boolean p0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final getTimeout(JJ)J
    .registers 5

    .line 0
    return-wide p1
.end method

.method public final initDefault()V
    .registers 6

    .line 1465
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0197

    .line 1468
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    .line 1467
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    const v1, 0x10e019e

    .line 1470
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    const v1, 0x10e01a6

    .line 1474
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    .line 1473
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    const v1, 0x10e01a4

    .line 1477
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    .line 1476
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    const v1, 0x10e01a5

    .line 1481
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    .line 1480
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    const v1, 0x10e019f

    .line 1484
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    const v1, 0x11102e1

    .line 1486
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    const v1, 0x10e01a1

    .line 1488
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    const v1, 0x10e01a0

    .line 1492
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    const v1, 0x10e01a7

    .line 1497
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    .line 1496
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    const v1, 0x10e01a3

    .line 1499
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    const v1, 0x10e01a2

    .line 1502
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    const v1, 0x10e01ae

    .line 1505
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    const v1, 0x10e01ad

    .line 1508
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    const v1, 0x10e019d

    .line 1512
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 1511
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    const v1, 0x10e01b5

    .line 1515
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    .line 1514
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    const v1, 0x10e01a8

    .line 1518
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    .line 1517
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    const v1, 0x10e01a9

    .line 1520
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    const v1, 0x10e01b2

    .line 1522
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    const v1, 0x10e01b1

    .line 1525
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    const v1, 0x10e0198

    .line 1528
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    const v1, 0x10e019b

    .line 1532
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    .line 1531
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    const v1, 0x10e01aa

    .line 1534
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    const v1, 0x10e019a

    .line 1537
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    const v1, 0x10e01b4

    .line 1539
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    const v1, 0x10e019c

    .line 1543
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    .line 1542
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    const v1, 0x10e01ab

    .line 1546
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    .line 1545
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    const v1, 0x10e0199

    .line 1548
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    const v1, 0x10e01af

    .line 1550
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/DeviceIdleController$Constants;->getTimeout(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    const v1, 0x10e01ac

    .line 1553
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    const v1, 0x10e01b0

    .line 1555
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    const v1, 0x10e01b6

    .line 1557
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    const v1, 0x10e01b3

    .line 1559
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    const v1, 0x11102e4

    .line 1561
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    const v1, 0x11102e3

    .line 1563
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    const v1, 0x11102e2

    .line 1565
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    .line 1568
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 1569
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1570
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 1571
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 1572
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 1573
    iget v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 1574
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 1575
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 1576
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 1577
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 1578
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 1579
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 1580
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 1581
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 1582
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 1583
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 1584
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 1585
    iget v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 1586
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 1587
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 1588
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1589
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 1590
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 1591
    iget v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 1592
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 1593
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 1594
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 1595
    iget v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 1596
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 1597
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1598
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1599
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1600
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 1601
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 1602
    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 1603
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    return-void
.end method

.method public final isWatch()Z
    .registers 2

    .line 1770
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 1612
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    .line 1613
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateSettingsConstantLocked()V

    .line 1614
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    .line 1615
    monitor-exit p1

    return-void

    :catchall_b
    move-exception p0

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4

    .line 1631
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 1632
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->setDeviceConfigProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 1633
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstantsLocked()V

    .line 1634
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final updateConstantsLocked()V
    .registers 7

    .line 1638
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v1, "flex_time_short"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultFlexTimeShort:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->FLEX_TIME_SHORT:J

    .line 1641
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_after_inactive_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleAfterInactiveTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1645
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    .line 1648
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_to_initial_flex"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutInitialFlex:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_INITIAL_FLEX:J

    .line 1652
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_max_idle_to_flex"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleTimeoutMaxFlex:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT_MAX_FLEX:J

    .line 1656
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_factor"

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFactor:F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    .line 1659
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_increase_linearly"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleIncreaseLinearly:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_INCREASE_LINEARLY:Z

    .line 1663
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_linear_increase_factor_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleLinearIncreaseFactorMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_LINEAR_INCREASE_FACTOR_MS:J

    .line 1667
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_flex_linear_increase_factor_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleFlexLinearIncreaseFactorMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FLEX_LINEAR_INCREASE_FACTOR_MS:J

    .line 1671
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_max_idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightMaxIdleTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    .line 1674
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_maintenance_min_budget"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMinBudget:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    .line 1678
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "light_idle_maintenance_max_budget"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLightIdleMaintenanceMaxBudget:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    .line 1682
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "min_light_maintenance_time"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinLightMaintenanceTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 1686
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "min_deep_maintenance_time"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinDeepMaintenanceTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 1690
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUseSmallBatteryDeviceValues:Z

    const-wide/32 v1, 0xea60

    if-eqz v0, :cond_c4

    move-wide v3, v1

    goto :goto_c6

    .line 1692
    :cond_c4
    iget-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultInactiveTimeout:J

    .line 1693
    :goto_c6
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v5, "inactive_to"

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    .line 1696
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v3, "sensing_to"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSensingTimeout:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    .line 1699
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v3, "locating_to"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocatingTimeout:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    .line 1702
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v3, "location_accuracy"

    iget v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultLocationAccuracy:F

    invoke-virtual {v0, v3, v4}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    .line 1705
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v3, "motion_inactive_to"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeout:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    .line 1708
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v3, "motion_inactive_to_flex"

    iget-wide v4, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMotionInactiveTimeoutFlex:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT_FLEX:J

    .line 1712
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUseSmallBatteryDeviceValues:Z

    if-eqz v0, :cond_116

    goto :goto_118

    .line 1714
    :cond_116
    iget-wide v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleAfterInactiveTimeout:J

    .line 1715
    :goto_118
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v3, "idle_after_inactive_to"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    .line 1719
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v1, "idle_pending_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    .line 1722
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "max_idle_pending_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdlePendingTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    .line 1725
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v1, "idle_pending_factor"

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdlePendingFactor:F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    .line 1728
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "quick_doze_delay_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultQuickDozeDelayTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->QUICK_DOZE_DELAY_TIMEOUT:J

    .line 1731
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v1, "idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    .line 1734
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "max_idle_to"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxIdleTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    .line 1737
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string v1, "idle_factor"

    iget v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultIdleFactor:F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    .line 1740
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "min_time_to_alarm"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMinTimeToAlarm:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    .line 1743
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "max_temp_app_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMaxTempAppAllowlistDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1747
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "mms_temp_app_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultMmsTempAppAllowlistDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1751
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "sms_temp_app_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultSmsTempAppAllowlistDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_ALLOWLIST_DURATION_MS:J

    .line 1755
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "notification_allowlist_duration_ms"

    iget-wide v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultNotificationAllowlistDurationMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_ALLOWLIST_DURATION_MS:J

    .line 1759
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "wait_for_unlock"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultWaitForUnlock:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->WAIT_FOR_UNLOCK:Z

    .line 1762
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "use_window_alarms"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseWindowAlarms:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_WINDOW_ALARMS:Z

    .line 1765
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    const-string/jumbo v1, "use_mode_manager"

    iget-boolean v2, p0, Lcom/android/server/DeviceIdleController$Constants;->mDefaultUseModeManager:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->USE_MODE_MANAGER:Z

    return-void
.end method

.method public final updateSettingsConstantLocked()V
    .registers 3

    .line 1620
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mUserSettingDeviceConfigMediator:Lcom/android/server/utils/UserSettingDeviceConfigMediator;

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "device_idle_constants"

    .line 1621
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1620
    invoke-virtual {v0, p0}, Lcom/android/server/utils/UserSettingDeviceConfigMediator;->setSettingsString(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 1625
    const-string v0, "DeviceIdleController"

    const-string v1, "Bad device idle settings"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
