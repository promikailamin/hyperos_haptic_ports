.class final Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# static fields
.field private static final EXTERNAL_DISPLAY_CONNECTED:Ljava/lang/String; = "external_display_connected"

.field public static final MIUI_OPTIMIZATION:Ljava/lang/String; = "miui_optimization"

.field public static final MIUI_OPTIMIZATION_PROP:Ljava/lang/String; = "persist.sys.miui_optimization"

.field public static final MIUI_REFRESH_RATE:Ljava/lang/String; = "miui_refresh_rate"

.field public static final MIUI_THERMAL_LIMIT_REFRESH_RATE:Ljava/lang/String; = "thermal_limit_refresh_rate"

.field public static final MIUI_USER_REFRESH_RATE:Ljava/lang/String; = "user_refresh_rate"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPeakRefreshRate:F

.field private mDefaultRefreshRate:F

.field private final mExternalDisplayRefreshRateSetting:Landroid/net/Uri;

.field private final mLowPowerModeSetting:Landroid/net/Uri;

.field private final mMatchContentFrameRateSetting:Landroid/net/Uri;

.field private final mMinRefreshRateSetting:Landroid/net/Uri;

.field private final mMiuiOptimizationSetting:Landroid/net/Uri;

.field private final mMiuiRefreshRateSetting:Landroid/net/Uri;

.field private final mPeakRefreshRateSetting:Landroid/net/Uri;

.field private final mThermalRefreshRateSetting:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method static bridge synthetic -$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;FFF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFF)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1224
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 1225
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1203
    const-string/jumbo v0, "miui_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMiuiRefreshRateSetting:Landroid/net/Uri;

    .line 1204
    nop

    .line 1205
    const-string/jumbo v0, "thermal_limit_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mThermalRefreshRateSetting:Landroid/net/Uri;

    .line 1206
    const-string/jumbo v0, "miui_optimization"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMiuiOptimizationSetting:Landroid/net/Uri;

    .line 1208
    nop

    .line 1209
    const-string v0, "external_display_connected"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mExternalDisplayRefreshRateSetting:Landroid/net/Uri;

    .line 1211
    nop

    .line 1212
    const-string/jumbo v0, "peak_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    .line 1213
    nop

    .line 1214
    const-string/jumbo v0, "min_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    .line 1215
    nop

    .line 1216
    const-string/jumbo v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 1217
    nop

    .line 1218
    const-string/jumbo v0, "match_content_frame_rate"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    .line 1226
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 1227
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1229
    nop

    .line 1230
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    .line 1231
    return-void
.end method

.method private clearAospSettingVote()V
    .registers 4

    .line 1377
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1378
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1379
    return-void
.end method

.method private clearMiuiSettingVote()V
    .registers 4

    .line 1372
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1373
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v1, 0xd

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1374
    return-void
.end method

.method private getMiuiRefreshRateVote()Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 5

    .line 1349
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmExternalDisplayConnected(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1350
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .local v0, "miuiVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_62

    .line 1351
    .end local v0    # "miuiVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSceneMaxRefreshRate(Lcom/android/server/display/DisplayModeDirector;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4a

    .line 1352
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const-string/jumbo v3, "user_refresh_rate"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 1354
    .local v0, "userSetRefreshRate":F
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    cmpl-float v3, v0, v1

    if-lez v3, :cond_38

    .line 1355
    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSceneMaxRefreshRate(Lcom/android/server/display/DisplayModeDirector;)F

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_3c

    :cond_38
    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSceneMaxRefreshRate(Lcom/android/server/display/DisplayModeDirector;)F

    move-result v3

    :goto_3c
    invoke-static {v2, v3}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fputmSceneMaxRefreshRate(Lcom/android/server/display/DisplayModeDirector;F)V

    .line 1356
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmSceneMaxRefreshRate(Lcom/android/server/display/DisplayModeDirector;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .line 1357
    .local v0, "miuiVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_62

    .line 1358
    .end local v0    # "miuiVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_4a
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1359
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "miui_refresh_rate"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    .line 1360
    .local v2, "miuiRefreshRate":F
    cmpl-float v3, v2, v1

    if-nez v3, :cond_5d

    const/4 v1, 0x0

    goto :goto_61

    :cond_5d
    invoke-static {v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    :goto_61
    move-object v0, v1

    .line 1362
    .end local v2    # "miuiRefreshRate":F
    .local v0, "miuiVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_62
    return-object v0
.end method

.method private getThermalLimitRefreshRateVote()Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 4

    .line 1366
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "thermal_limit_refresh_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1368
    .local v0, "thermalRefreshRate":I
    if-nez v0, :cond_12

    const/4 v1, 0x0

    goto :goto_18

    :cond_12
    const/4 v1, 0x0

    int-to-float v2, v0

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    :goto_18
    return-object v1
.end method

.method private updateCTSMode()V
    .registers 3

    .line 1382
    nop

    .line 1383
    const-string/jumbo v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1382
    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$sfputmIsCtsMode(Z)V

    .line 1384
    return-void
.end method

.method private updateExternalDisplayConnectedLocked()V
    .registers 5

    .line 1387
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 1388
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1387
    const-string v2, "external_display_connected"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v3, 0x1

    :cond_12
    invoke-static {v0, v3}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fputmExternalDisplayConnected(Lcom/android/server/display/DisplayModeDirector;Z)V

    .line 1389
    return-void
.end method

.method private updateLowPowerModeSettingLocked()V
    .registers 5

    .line 1323
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    :cond_11
    move v0, v2

    .line 1326
    .local v0, "inLowPowerMode":Z
    if-eqz v0, :cond_1c

    .line 1327
    const/4 v1, 0x0

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .local v1, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_1d

    .line 1329
    .end local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_1c
    const/4 v1, 0x0

    .line 1331
    .restart local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_1d
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v3, 0x8

    invoke-static {v2, v3, v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1332
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onLowPowerModeEnabledLocked(Z)V

    .line 1333
    return-void
.end method

.method private updateModeSwitchingTypeSettingLocked()V
    .registers 5

    .line 1478
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1479
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;)I

    move-result v1

    .line 1481
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    .line 1479
    const-string/jumbo v3, "match_content_frame_rate"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1482
    .local v1, "switchingType":I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;)I

    move-result v2

    if-eq v1, v2, :cond_29

    .line 1483
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2, v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fputmModeSwitchingType(Lcom/android/server/display/DisplayModeDirector;I)V

    .line 1484
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/DisplayModeDirector;)V

    .line 1486
    :cond_29
    return-void
.end method

.method private updateRefreshRateSettingLocked()V
    .registers 6

    .line 1336
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1337
    .local v0, "cr":Landroid/content/ContentResolver;
    nop

    .line 1338
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 1337
    const-string/jumbo v2, "min_refresh_rate"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 1339
    .local v1, "minRefreshRate":F
    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1340
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v3

    .line 1339
    const-string/jumbo v4, "peak_refresh_rate"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 1341
    .local v2, "peakRefreshRate":F
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFF)V

    .line 1342
    return-void
.end method

.method private updateRefreshRateSettingLocked(FFF)V
    .registers 13
    .param p1, "minRefreshRate"    # F
    .param p2, "peakRefreshRate"    # F
    .param p3, "defaultRefreshRate"    # F

    .line 1427
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->getMiuiRefreshRateVote()Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .line 1428
    .local v0, "miuiRefreshVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1429
    .local v1, "maxRefreshRate":F
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1430
    .local v2, "miuiMaxRefreshRate":F
    invoke-static {}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$sfgetmIsCtsMode()Z

    move-result v3

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    if-nez v3, :cond_3c

    .line 1431
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->getThermalLimitRefreshRateVote()Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v3

    .line 1432
    .local v3, "thermalVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v6, 0xe

    invoke-static {v5, v6, v3}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1433
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v6, 0xd

    invoke-static {v5, v6, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1434
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->clearAospSettingVote()V

    .line 1435
    const/4 p1, 0x0

    .line 1436
    if-nez v3, :cond_2a

    move v5, v4

    goto :goto_2e

    .line 1437
    :cond_2a
    iget-object v5, v3, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    :goto_2e
    nop

    .line 1438
    .local v5, "thermalRefreshRate":F
    if-nez v0, :cond_33

    move v6, v4

    goto :goto_37

    .line 1439
    :cond_33
    iget-object v6, v0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    :goto_37
    nop

    .line 1440
    .local v6, "miuiRefresh":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1442
    .end local v3    # "thermalVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    .end local v5    # "thermalRefreshRate":F
    .end local v6    # "miuiRefresh":F
    :cond_3c
    if-eqz v0, :cond_44

    invoke-static {}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$sfgetmIsCtsMode()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 1443
    :cond_44
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->clearMiuiSettingVote()V

    .line 1444
    const/4 v3, 0x0

    cmpl-float v5, p2, v3

    const/4 v6, 0x0

    if-nez v5, :cond_4f

    .line 1445
    move-object v5, v6

    goto :goto_57

    .line 1446
    :cond_4f
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v3, v5}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v5

    :goto_57
    nop

    .line 1447
    .local v5, "peakVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    iget-object v7, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v8, 0x7

    invoke-static {v7, v8, v5}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1448
    iget-object v7, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v8, 0x3

    .line 1449
    invoke-static {p1, v4}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v4

    .line 1448
    invoke-static {v7, v8, v4}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1451
    cmpl-float v4, p3, v3

    if-nez v4, :cond_6d

    goto :goto_71

    :cond_6d
    invoke-static {v3, p3}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v6

    :goto_71
    move-object v4, v6

    .line 1452
    .local v4, "defaultVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1455
    cmpl-float v6, p2, v3

    if-nez v6, :cond_89

    cmpl-float v6, p3, v3

    if-nez v6, :cond_89

    .line 1460
    const-string v3, "DisplayModeDirector"

    const-string v6, "Default and peak refresh rates are both 0. One of them should be set to a valid value."

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    move v1, p1

    goto :goto_99

    .line 1463
    :cond_89
    cmpl-float v6, p2, v3

    if-nez v6, :cond_8f

    .line 1464
    move v1, p3

    goto :goto_99

    .line 1465
    :cond_8f
    cmpl-float v3, p3, v3

    if-nez v3, :cond_95

    .line 1466
    move v1, p2

    goto :goto_99

    .line 1468
    :cond_95
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1471
    .end local v4    # "defaultVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    .end local v5    # "peakVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_99
    :goto_99
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1474
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onRefreshRateSettingChangedLocked(FF)V

    .line 1475
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1489
    const-string v0, "  SettingsObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultPeakRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    return-void
.end method

.method public observe()V
    .registers 5

    .line 1234
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1235
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$Injector;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 1237
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMiuiRefreshRateSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1239
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMiuiOptimizationSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1242
    const-string/jumbo v1, "thermal_limit_refresh_rate"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_29

    .line 1243
    const-string/jumbo v1, "thermal_limit_refresh_rate"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1245
    :cond_29
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mThermalRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1247
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mExternalDisplayRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1250
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1252
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1254
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1257
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v1

    .line 1258
    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getDefaultPeakRefreshRate()Ljava/lang/Float;

    move-result-object v1

    .line 1259
    .local v1, "deviceConfigDefaultPeakRefresh":Ljava/lang/Float;
    if-eqz v1, :cond_54

    .line 1260
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1263
    :cond_54
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1265
    :try_start_5b
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateCTSMode()V

    .line 1266
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateExternalDisplayConnectedLocked()V

    .line 1268
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1269
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    .line 1270
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    .line 1271
    monitor-exit v2

    .line 1272
    return-void

    .line 1271
    :catchall_6c
    move-exception v3

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_6c

    throw v3
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1297
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1302
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    .line 1303
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mThermalRefreshRateSetting:Landroid/net/Uri;

    .line 1304
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMiuiRefreshRateSetting:Landroid/net/Uri;

    .line 1305
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_5e

    .line 1307
    :cond_28
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMiuiOptimizationSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1308
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateCTSMode()V

    .line 1309
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    goto :goto_61

    .line 1310
    :cond_37
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mExternalDisplayRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1311
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateExternalDisplayConnectedLocked()V

    .line 1312
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    goto :goto_61

    .line 1314
    :cond_46
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1315
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    goto :goto_61

    .line 1316
    :cond_52
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1317
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    goto :goto_61

    .line 1306
    :cond_5e
    :goto_5e
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1319
    :cond_61
    :goto_61
    monitor-exit v0

    .line 1320
    return-void

    .line 1319
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_7 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V
    .registers 4
    .param p1, "defaultPeakRefreshRate"    # Ljava/lang/Float;

    .line 1282
    if-nez p1, :cond_14

    .line 1283
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1287
    :cond_14
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_33

    .line 1288
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1289
    :try_start_25
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1290
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1291
    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw v1

    .line 1293
    :cond_33
    :goto_33
    return-void
.end method

.method public setDefaultRefreshRate(F)V
    .registers 4
    .param p1, "refreshRate"    # F

    .line 1275
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1276
    :try_start_7
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    .line 1277
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1278
    monitor-exit v0

    .line 1279
    return-void

    .line 1278
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
