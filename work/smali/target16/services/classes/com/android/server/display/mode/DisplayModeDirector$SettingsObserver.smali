.class final Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayModeDirector.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultPeakRefreshRate:F

.field public mDefaultRefreshRate:F

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public final mHandler:Landroid/os/Handler;

.field public mIsLowPower:Z

.field public final mLowPowerModeSetting:Landroid/net/Uri;

.field public final mLowPowerRefreshRateSetting:Landroid/net/Uri;

.field public final mMatchContentFrameRateSetting:Landroid/net/Uri;

.field public final mMinRefreshRateSetting:Landroid/net/Uri;

.field public final mPeakRefreshRatePhysicalLimitEnabled:Z

.field public final mPeakRefreshRateSetting:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public static bridge synthetic -$$Nest$mremoveRefreshRateSetting(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->removeRefreshRateSetting(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLowPowerModeAllowedModesLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeAllowedModesLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateModeSwitchingTypeSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;FFFI)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFFI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .registers 6

    .line 997
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 998
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 954
    const-string/jumbo p1, "peak_refresh_rate"

    .line 955
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    .line 956
    const-string/jumbo p1, "min_refresh_rate"

    .line 957
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    .line 958
    const-string/jumbo p1, "low_power"

    .line 959
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    .line 960
    const-string/jumbo p1, "match_content_frame_rate"

    .line 961
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    .line 962
    const-string/jumbo p1, "low_power_rr_switch"

    .line 963
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerRefreshRateSetting:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 971
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    .line 973
    new-instance v0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver$1;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;)V

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 999
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    .line 1000
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 1001
    invoke-virtual {p4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPeakRefreshRatePhysicalLimitEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRatePhysicalLimitEnabled:Z

    const/4 p2, 0x0

    .line 1006
    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1277
    const-string v0, "  SettingsObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultPeakRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultPeakRefreshRate()F
    .registers 1

    .line 1091
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    return p0
.end method

.method public getDefaultRefreshRate()F
    .registers 1

    .line 1086
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    return p0
.end method

.method public observe()V
    .registers 5

    .line 1026
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1027
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerPeakRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 1028
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerMinRefreshRateObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 1029
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1031
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1033
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1035
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1037
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 1038
    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getPeakRefreshRateDefault()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_48

    .line 1040
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1043
    :cond_48
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1044
    :try_start_4f
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    .line 1047
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5a

    throw p0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 1072
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1073
    :try_start_7
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3b

    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMinRefreshRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_18

    goto :goto_3b

    .line 1075
    :cond_18
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_37

    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mLowPowerRefreshRateSetting:Landroid/net/Uri;

    .line 1076
    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_29

    goto :goto_37

    .line 1078
    :cond_29
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mMatchContentFrameRateSetting:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateModeSwitchingTypeSettingLocked()V

    goto :goto_3e

    :catchall_35
    move-exception p0

    goto :goto_40

    .line 1077
    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeSettingLocked()V

    goto :goto_3e

    .line 1074
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1081
    :cond_3e
    :goto_3e
    monitor-exit p1

    return-void

    :goto_40
    monitor-exit p1
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_35

    throw p0
.end method

.method public onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V
    .registers 5

    .line 1059
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_16

    .line 1061
    :try_start_9
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    goto :goto_26

    :catchall_14
    move-exception p0

    goto :goto_2b

    .line 1063
    :cond_16
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_26

    .line 1064
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    .line 1066
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked()V

    .line 1067
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_14

    throw p0
.end method

.method public final removeRefreshRateSetting(I)V
    .registers 5

    .line 1254
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1256
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1258
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1260
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .registers 4

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p2, :cond_f

    .line 1100
    :try_start_4
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getPeakRefreshRateDefault()F

    move-result p2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    :cond_f
    move p2, v0

    :goto_10
    cmpl-float v0, p2, v0

    if-nez v0, :cond_2d

    if-nez p1, :cond_26

    .line 1107
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e007c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :goto_23
    int-to-float p1, p1

    move p2, p1

    goto :goto_2d

    .line 1109
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object p1

    iget p1, p1, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    goto :goto_23

    .line 1112
    :cond_2d
    :goto_2d
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    return-void
.end method

.method public setRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    .line 1017
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    .line 1018
    :goto_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->setDefaultPeakRefreshRate(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    if-nez v0, :cond_1c

    .line 1020
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e007f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :goto_1a
    int-to-float p1, p1

    goto :goto_1f

    .line 1022
    :cond_1c
    iget p1, v0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    goto :goto_1a

    :goto_1f
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    return-void
.end method

.method public final updateLowPowerModeAllowedModesLocked()V
    .registers 6

    .line 1134
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    const/16 v1, 0x12

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    .line 1135
    :goto_7
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_42

    .line 1136
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v2, :cond_22

    goto :goto_3f

    .line 1141
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    .line 1142
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v4

    .line 1143
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1145
    invoke-static {v2}, Lcom/android/server/display/mode/Vote;->forSupportedRefreshRates(Ljava/util/List;)Lcom/android/server/display/mode/Vote;

    move-result-object v2

    .line 1142
    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_42
    return-void

    .line 1148
    :cond_43
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/VotesStorage;->removeAllVotesForPriority(I)V

    return-void
.end method

.method public final updateLowPowerModeSettingLocked()V
    .registers 5

    .line 1117
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    .line 1119
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "low_power_rr_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_26

    move v2, v1

    .line 1122
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    if-eqz v0, :cond_34

    if-eqz v2, :cond_34

    const/4 v0, 0x0

    const/high16 v1, 0x42700000    # 60.0f

    .line 1123
    invoke-static {v0, v1}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 1127
    :goto_35
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 1128
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mIsLowPower:Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onLowPowerModeEnabledLocked(Z)V

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateLowPowerModeAllowedModesLocked()V

    return-void
.end method

.method public final updateModeSwitchingTypeSettingLocked()V
    .registers 5

    .line 1265
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1266
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;)I

    move-result v1

    const/4 v2, -0x2

    const-string/jumbo v3, "match_content_frame_rate"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1269
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;)I

    move-result v1

    if-eq v0, v1, :cond_26

    .line 1270
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1, v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fputmModeSwitchingType(Lcom/android/server/display/mode/DisplayModeDirector;I)V

    .line 1271
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/mode/DisplayModeDirector;)V

    :cond_26
    return-void
.end method

.method public final updateRefreshRateSettingLocked()V
    .registers 3

    const/4 v0, 0x0

    .line 1157
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1158
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method public final updateRefreshRateSettingLocked(FFFI)V
    .registers 12

    .line 1198
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v0, p4}, Lcom/android/server/display/mode/DisplayModeDirector;->isExternalDisplayLocked(I)Z

    move-result v0

    const-string v1, "DisplayModeDirector"

    if-eqz v0, :cond_28

    .line 1199
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLoggingEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z

    move-result p0

    if-eqz p0, :cond_a4

    .line 1200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "skip updateRefreshRateSettingLocked for external display "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1209
    :cond_28
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mPeakRefreshRatePhysicalLimitEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_47

    cmpl-float v0, p2, v3

    if-nez v0, :cond_34

    move-object v0, v2

    goto :goto_3c

    .line 1213
    :cond_34
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1212
    invoke-static {v3, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 1214
    :goto_3c
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, p4, v5, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_47
    cmpl-float v0, p2, v3

    if-nez v0, :cond_4d

    move-object v4, v2

    goto :goto_55

    .line 1219
    :cond_4d
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v4

    .line 1220
    :goto_55
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v5}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, p4, v6, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1222
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v4

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1223
    invoke-static {p1, v5}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v5

    const/4 v6, 0x3

    .line 1222
    invoke-virtual {v4, p4, v6, v5}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    cmpl-float v4, p3, v3

    if-nez v4, :cond_75

    goto :goto_79

    .line 1226
    :cond_75
    invoke-static {v3, p3}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v2

    .line 1227
    :goto_79
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    if-nez v0, :cond_8e

    if-nez v4, :cond_8e

    .line 1235
    const-string p2, "Default and peak refresh rates are both 0. One of them should be set to a valid value."

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, p1

    goto :goto_99

    :cond_8e
    if-nez v0, :cond_92

    move p2, p3

    goto :goto_99

    :cond_92
    if-nez v4, :cond_95

    goto :goto_99

    .line 1243
    :cond_95
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :goto_99
    if-nez p4, :cond_a4

    .line 1248
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmBrightnessObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onRefreshRateSettingChangedLocked(FF)V

    :cond_a4
    return-void
.end method

.method public final updateRefreshRateSettingLocked(I)V
    .registers 8

    .line 1168
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1169
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot update refresh rate setting: no supported modes for display "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayModeDirector"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1174
    :cond_29
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mgetMaxRefreshRateLocked(Lcom/android/server/display/mode/DisplayModeDirector;I)F

    move-result v1

    .line 1176
    const-string/jumbo v2, "min_refresh_rate"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 1178
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_3f

    move v2, v1

    .line 1183
    :cond_3f
    const-string/jumbo v3, "peak_refresh_rate"

    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultPeakRefreshRate:F

    invoke-static {v0, v3, v5, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1186
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_50

    :cond_4f
    move v1, v0

    .line 1191
    :goto_50
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->mDefaultRefreshRate:F

    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(FFFI)V

    return-void
.end method
