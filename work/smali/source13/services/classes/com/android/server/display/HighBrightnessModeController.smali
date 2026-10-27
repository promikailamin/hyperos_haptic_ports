.class Lcom/android/server/display/HighBrightnessModeController;
.super Ljava/lang/Object;
.source "HighBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/HighBrightnessModeController$Injector;,
        Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;,
        Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;,
        Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;,
        Lcom/android/server/display/HighBrightnessModeController$HdrListener;,
        Lcom/android/server/display/HighBrightnessModeController$HbmEvent;,
        Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_THROTTLER_STATUS:Ljava/lang/String; = "brightness_throttler_status"

.field private static final DEBUG:Z = false

.field static final HBM_TRANSITION_POINT_INVALID:F = Infinityf

.field private static final LOW_POWER_LEVEL_STATE:Ljava/lang/String; = "low_power_level_state"

.field private static final TAG:Ljava/lang/String; = "HighBrightnessModeController"


# instance fields
.field private mAmbientLux:F

.field private mBrightness:F

.field private final mBrightnessMax:F

.field private final mBrightnessMin:F

.field private final mClock:Lcom/android/server/display/DisplayManagerService$Clock;

.field private final mContext:Landroid/content/Context;

.field private mDisplayStatsId:I

.field private mDolbyEnable:Z

.field private mEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/display/HighBrightnessModeController$HbmEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHbmChangeCallback:Ljava/lang/Runnable;

.field private mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

.field private mHbmMode:I

.field private mHbmStatsState:I

.field private mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

.field private mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

.field private mHdrStateListener:Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;

.field private mHeight:I

.field private final mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

.field private mIsAutoBrightnessEnabled:Z

.field private mIsAutoBrightnessOffByState:Z

.field private mIsBlockedByLowPowerMode:Z

.field private mIsHdrLayerPresent:Z

.field private mIsInAllowedAmbientRange:Z

.field private mIsThermalStatusWithinLimit:Z

.field private mIsTimeAvailable:Z

.field private final mRecalcRunnable:Ljava/lang/Runnable;

.field private mRegisteredDisplayToken:Landroid/os/IBinder;

.field private mRunningStartTimeMillis:J

.field private final mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

.field private final mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

.field private mSupportHdrBrightenHbm:Z

.field private mThrottlingReason:I

.field private mUnthrottledBrightness:F

.field private mWidth:I


# direct methods
.method public static synthetic $r8$lambda$yl94PRiW-f7m4RO5bHtT-VWcNds(Lcom/android/server/display/HighBrightnessModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBrightness(Lcom/android/server/display/HighBrightnessModeController;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/HighBrightnessModeController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/HighBrightnessModeController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHbmData(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsHdrLayerPresent(Lcom/android/server/display/HighBrightnessModeController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThrottlingReason(Lcom/android/server/display/HighBrightnessModeController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnthrottledBrightness(Lcom/android/server/display/HighBrightnessModeController;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsHdrLayerPresent(Lcom/android/server/display/HighBrightnessModeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsThermalStatusWithinLimit(Lcom/android/server/display/HighBrightnessModeController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyHdrStateListner(Lcom/android/server/display/HighBrightnessModeController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->notifyHdrStateListner(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHbmMode(Lcom/android/server/display/HighBrightnessModeController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Landroid/content/Context;)V
    .registers 25
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "displayToken"    # Landroid/os/IBinder;
    .param p5, "displayUniqueId"    # Ljava/lang/String;
    .param p6, "brightnessMin"    # F
    .param p7, "brightnessMax"    # F
    .param p8, "hbmData"    # Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .param p9, "hdrBrightnessCfg"    # Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;
    .param p10, "hbmChangeCallback"    # Ljava/lang/Runnable;
    .param p11, "context"    # Landroid/content/Context;

    .line 135
    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$Injector;

    invoke-direct {v1}, Lcom/android/server/display/HighBrightnessModeController$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Landroid/content/Context;)V
    .registers 27
    .param p1, "injector"    # Lcom/android/server/display/HighBrightnessModeController$Injector;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "displayToken"    # Landroid/os/IBinder;
    .param p6, "displayUniqueId"    # Ljava/lang/String;
    .param p7, "brightnessMin"    # F
    .param p8, "brightnessMax"    # F
    .param p9, "hbmData"    # Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .param p10, "hdrBrightnessCfg"    # Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;
    .param p11, "hbmChangeCallback"    # Ljava/lang/Runnable;
    .param p12, "context"    # Landroid/content/Context;

    .line 143
    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 87
    iput-boolean v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 88
    iput-boolean v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 89
    iput-boolean v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 96
    iput v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 99
    iput v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 100
    iput-boolean v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    .line 102
    iput-boolean v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 107
    iput v1, v7, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    .line 129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    .line 144
    iput-object v8, v7, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    .line 145
    move-object/from16 v11, p12

    iput-object v11, v7, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$Injector;->getClock()Lcom/android/server/display/DisplayManagerService$Clock;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    .line 147
    iput-object v9, v7, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    .line 148
    iput v10, v7, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 149
    iput v10, v7, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 150
    move/from16 v12, p8

    iput v12, v7, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    .line 151
    move-object/from16 v13, p11

    iput-object v13, v7, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-direct {v0, p0, p1, v9}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;)V

    iput-object v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    .line 153
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-direct {v0, p0, v9}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;-><init>(Lcom/android/server/display/HighBrightnessModeController;Landroid/os/Handler;)V

    iput-object v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    .line 154
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    iput-object v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-direct {v0, p0}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    iput-object v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    .line 157
    invoke-static {}, Lcom/android/server/display/HighBrightnessModeController;->supportHdrBrightenHbm()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrBrightenHbm:Z

    .line 159
    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    .line 160
    return-void
.end method

.method private calculateHighBrightnessMode()I
    .registers 3

    .line 609
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 610
    return v1

    .line 613
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->isAllowedDueToGalleryHdrBoost()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1c

    .line 615
    :cond_13
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->isCurrentlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 616
    const/4 v0, 0x1

    return v0

    .line 619
    :cond_1b
    return v1

    .line 614
    :cond_1c
    :goto_1c
    const/4 v0, 0x2

    return v0
.end method

.method private calculateRemainingTime(J)J
    .registers 15
    .param p1, "currentTime"    # J

    .line 415
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    .line 416
    return-wide v1

    .line 419
    :cond_9
    const-wide/16 v3, 0x0

    .line 423
    .local v3, "timeAlreadyUsed":J
    iget-wide v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    cmp-long v0, v5, v1

    if-lez v0, :cond_3f

    .line 424
    cmp-long v0, v5, p1

    if-lez v0, :cond_3b

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start time set to the future. curr: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", start: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "HighBrightnessModeController"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iput-wide p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    .line 429
    :cond_3b
    iget-wide v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    sub-long v3, p1, v5

    .line 437
    :cond_3f
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v5, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    sub-long v5, p1, v5

    .line 438
    .local v5, "windowstartTimeMillis":J
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 439
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/display/HighBrightnessModeController$HbmEvent;>;"
    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 440
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    .line 443
    .local v7, "event":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    iget-wide v8, v7, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    cmp-long v8, v8, v5

    if-gez v8, :cond_61

    .line 444
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 445
    goto :goto_4b

    .line 448
    :cond_61
    iget-wide v8, v7, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 449
    .local v8, "startTimeMillis":J
    iget-wide v10, v7, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    sub-long/2addr v10, v8

    add-long/2addr v3, v10

    .line 450
    .end local v7    # "event":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    .end local v8    # "startTimeMillis":J
    goto :goto_4b

    .line 456
    :cond_6c
    iget-object v7, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v7, v7, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    sub-long/2addr v7, v3

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HighBrightnessModeController$HbmEvent;)J
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "event"    # Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    .line 376
    iget-wide v0, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    iget-wide v2, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    sub-long/2addr v0, v2

    .line 377
    .local v0, "duration":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    event: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    .line 378
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    .line 379
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 380
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    iget-wide v2, p2, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    return-wide v2
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 333
    const-string v0, "HighBrightnessModeController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnthrottledBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 340
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    const-string v2, ""

    const/4 v3, 0x2

    if-ne v1, v3, :cond_bf

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c0

    :cond_bf
    move-object v1, v2

    :goto_c0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmStatsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    invoke-direct {p0, v1}, Lcom/android/server/display/HighBrightnessModeController;->hbmStatsStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-eqz v1, :cond_115

    goto :goto_117

    :cond_115
    const-string v2, " (old/invalid)"

    :goto_117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsInAllowedAmbientRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAutoBrightnessEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAutoBrightnessOffByState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsHdrLayerPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  remainingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsTimeAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRunningStartTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsThermalStatusWithinLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsBlockedByLowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  width*height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    const-string v0, "  mEvents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 360
    .local v0, "currentTime":J
    move-wide v2, v0

    .line 361
    .local v2, "lastStartTime":J
    iget-wide v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_277

    .line 362
    new-instance v6, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    invoke-direct {v6, v4, v5, v0, v1}, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;-><init>(JJ)V

    invoke-direct {p0, p1, v6}, Lcom/android/server/display/HighBrightnessModeController;->dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HighBrightnessModeController$HbmEvent;)J

    move-result-wide v2

    .line 364
    :cond_277
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    .line 365
    .local v5, "event":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    iget-wide v6, v5, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_2ad

    .line 366
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    event: [normal brightness]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v5, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->endTimeMillis:J

    sub-long v7, v2, v7

    .line 367
    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    :cond_2ad
    invoke-direct {p0, p1, v5}, Lcom/android/server/display/HighBrightnessModeController;->dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HighBrightnessModeController$HbmEvent;)J

    move-result-wide v2

    .line 370
    .end local v5    # "event":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    goto :goto_27d

    .line 372
    :cond_2b2
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {v4, p1}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->dump(Ljava/io/PrintWriter;)V

    .line 373
    return-void
.end method

.method private hbmStatsStateToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "hbmStatsState"    # I

    .line 596
    packed-switch p1, :pswitch_data_12

    .line 604
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 602
    :pswitch_8
    const-string v0, "HBM_ON_SUNLIGHT"

    return-object v0

    .line 600
    :pswitch_b
    const-string v0, "HBM_ON_HDR"

    return-object v0

    .line 598
    :pswitch_e
    const-string v0, "HBM_OFF"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private isAllowedDueToGalleryHdrBoost()Z
    .registers 2

    .line 404
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerServiceStub;->isGalleryHdrEnable()Z

    move-result v0

    return v0
.end method

.method private isCurrentlyAllowed()Z
    .registers 2

    .line 396
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private notifyHdrStateListner(Z)V
    .registers 5
    .param p1, "isHdrLayerPresent"    # Z

    .line 685
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrStateListener:Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;

    if-eqz v0, :cond_17

    .line 686
    invoke-interface {v0, p1}, Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;->onHdrStateChanged(Z)V

    .line 687
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrBrightenHbm:Z

    if-eqz v0, :cond_17

    .line 688
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 690
    const/4 v1, -0x2

    .line 688
    const-string v2, "brightness_throttler_status"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 693
    :cond_17
    return-void
.end method

.method private recalculateTimeAllowance()V
    .registers 16

    .line 463
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 464
    .local v0, "currentTime":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    move-result-wide v2

    .line 468
    .local v2, "remainingTime":J
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v4, v4, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_16

    move v4, v5

    goto :goto_17

    :cond_16
    move v4, v6

    .line 469
    .local v4, "isAllowedWithoutRestrictions":Z
    :goto_17
    if-nez v4, :cond_2b

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_2b

    iget v7, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v8, v8, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2b

    move v7, v5

    goto :goto_2c

    :cond_2b
    move v7, v6

    .line 471
    .local v7, "isOnlyAllowedToStayOn":Z
    :goto_2c
    if-nez v4, :cond_32

    if-eqz v7, :cond_31

    goto :goto_32

    :cond_31
    move v5, v6

    :cond_32
    :goto_32
    iput-boolean v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 475
    const-wide/16 v5, -0x1

    .line 476
    .local v5, "nextTimeout":J
    iget v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v9, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v9, v9, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_43

    .line 478
    add-long v5, v0, v2

    goto :goto_6d

    .line 479
    :cond_43
    iget-boolean v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-nez v8, :cond_6d

    iget-object v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_6d

    .line 483
    iget-object v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v8, v8, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    sub-long v8, v0, v8

    .line 484
    .local v8, "windowstartTimeMillis":J
    iget-object v10, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    .line 485
    .local v10, "lastEvent":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    iget-wide v11, v10, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;->startTimeMillis:J

    .line 486
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iget-object v13, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-wide v13, v13, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    add-long/2addr v11, v13

    .line 488
    .local v11, "startTimePlusMinMillis":J
    sub-long v13, v11, v8

    add-long/2addr v13, v0

    sub-long/2addr v13, v2

    .line 490
    .local v13, "timeWhenMinIsGainedBack":J
    move-wide v5, v13

    .line 515
    .end local v8    # "windowstartTimeMillis":J
    .end local v10    # "lastEvent":Lcom/android/server/display/HighBrightnessModeController$HbmEvent;
    .end local v11    # "startTimePlusMinMillis":J
    .end local v13    # "timeWhenMinIsGainedBack":J
    :cond_6d
    :goto_6d
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-eqz v8, :cond_84

    .line 516
    iget-object v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 517
    iget-object v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1

    add-long/2addr v10, v5

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 520
    :cond_84
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    .line 521
    return-void
.end method

.method private registerHdrListener(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 623
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-ne v0, p1, :cond_5

    .line 624
    return-void

    .line 627
    :cond_5
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    .line 628
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    .line 629
    if-eqz p1, :cond_11

    .line 630
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->register(Landroid/os/IBinder;)V

    .line 632
    :cond_11
    return-void
.end method

.method private static supportHdrBrightenHbm()Z
    .registers 3

    .line 870
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "miui.os.DeviceFeature"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SUPPORT_HDR_HBM_BRIGHTEN"

    .line 871
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 872
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    .line 870
    return v0

    .line 873
    :catch_17
    move-exception v1

    .line 874
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method private unregisterHdrListener()V
    .registers 3

    .line 635
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    .line 636
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-virtual {v1, v0}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->unregister(Landroid/os/IBinder;)V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    .line 639
    :cond_c
    return-void
.end method

.method private updateHbmMode()V
    .registers 3

    .line 524
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->calculateHighBrightnessMode()I

    move-result v0

    .line 525
    .local v0, "newHbmMode":I
    invoke-direct {p0, v0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmStats(I)V

    .line 526
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    if-eq v1, v0, :cond_12

    .line 527
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 528
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 530
    :cond_12
    return-void
.end method

.method private updateHbmStats(I)V
    .registers 11
    .param p1, "newMode"    # I

    .line 533
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 534
    .local v0, "transitionPoint":F
    const/4 v1, 0x1

    .line 535
    .local v1, "state":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_13

    .line 536
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_13

    .line 537
    const/4 v1, 0x2

    goto :goto_1c

    .line 538
    :cond_13
    if-ne p1, v2, :cond_1c

    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1c

    .line 540
    const/4 v1, 0x3

    .line 542
    :cond_1c
    :goto_1c
    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    if-ne v1, v3, :cond_21

    .line 543
    return-void

    .line 546
    :cond_21
    const/4 v4, 0x0

    .line 548
    .local v4, "reason":I
    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v3, v5, :cond_28

    move v3, v2

    goto :goto_29

    :cond_28
    move v3, v6

    .line 550
    .local v3, "oldHbmSv":Z
    :goto_29
    if-ne v1, v5, :cond_2d

    move v5, v2

    goto :goto_2e

    :cond_2d
    move v5, v6

    .line 552
    .local v5, "newHbmSv":Z
    :goto_2e
    if-eqz v3, :cond_80

    if-nez v5, :cond_80

    .line 557
    iget-boolean v7, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    xor-int/2addr v7, v2

    .line 558
    .local v7, "internalThermalThrottling":Z
    iget v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    cmpl-float v8, v8, v0

    if-lez v8, :cond_46

    iget v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    cmpg-float v8, v8, v0

    if-gtz v8, :cond_46

    iget v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    if-ne v8, v2, :cond_46

    goto :goto_47

    :cond_46
    move v2, v6

    .line 565
    .local v2, "externalThermalThrottling":Z
    :goto_47
    iget-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-nez v6, :cond_51

    iget-boolean v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    if-eqz v8, :cond_51

    .line 566
    const/4 v4, 0x6

    goto :goto_80

    .line 568
    :cond_51
    if-nez v6, :cond_55

    .line 569
    const/4 v4, 0x7

    goto :goto_80

    .line 571
    :cond_55
    iget-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-nez v6, :cond_5b

    .line 572
    const/4 v4, 0x1

    goto :goto_80

    .line 573
    :cond_5b
    iget-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-nez v6, :cond_61

    .line 574
    const/4 v4, 0x2

    goto :goto_80

    .line 575
    :cond_61
    if-nez v7, :cond_7f

    if-eqz v2, :cond_66

    goto :goto_7f

    .line 578
    :cond_66
    iget-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-eqz v6, :cond_6c

    .line 579
    const/4 v4, 0x4

    goto :goto_80

    .line 581
    :cond_6c
    iget-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-eqz v6, :cond_72

    .line 582
    const/4 v4, 0x5

    goto :goto_80

    .line 584
    :cond_72
    iget v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v8, v8, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_80

    .line 586
    const/16 v4, 0x9

    goto :goto_80

    .line 576
    :cond_7f
    :goto_7f
    const/4 v4, 0x3

    .line 591
    .end local v2    # "externalThermalThrottling":Z
    .end local v7    # "internalThermalThrottling":Z
    :cond_80
    :goto_80
    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    iget v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    invoke-virtual {v2, v6, v1, v4}, Lcom/android/server/display/HighBrightnessModeController$Injector;->reportHbmStateChange(III)V

    .line 592
    iput v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    .line 593
    return-void
.end method


# virtual methods
.method deviceSupportsHbm()Z
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 324
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 325
    return-void
.end method

.method getCurrentBrightnessMax()F
    .registers 3

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->isCurrentlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 198
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    return v0

    .line 188
    :cond_12
    :goto_12
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerServiceStub;->isSupportPeakBrightness()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 190
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerServiceStub;->getMaxHbmBrightnessForPeak()F

    move-result v0

    .line 191
    .local v0, "maxHbmBrightnessForPeak":F
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    invoke-static {v1, v0}, Landroid/util/MathUtils;->min(FF)F

    move-result v1

    return v1

    .line 194
    .end local v0    # "maxHbmBrightnessForPeak":F
    :cond_2b
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    return v0
.end method

.method getCurrentBrightnessMin()F
    .registers 2

    .line 178
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    return v0
.end method

.method protected getHbmData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .registers 2

    .line 852
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    return-object v0
.end method

.method getHdrBrightnessValue()F
    .registers 6

    .line 207
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    if-eqz v0, :cond_3e

    .line 208
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-interface {v0, v1}, Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;->getHdrBrightnessFromSdr(F)F

    move-result v0

    .line 209
    .local v0, "hdrBrightness":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3e

    .line 212
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->isAllowedDueToGalleryHdrBoost()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 213
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-interface {v1, v2}, Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;->getGalleryHdrBrightness(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    return v1

    .line 215
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isDolbyEnable()Z

    move-result v1

    if-nez v1, :cond_3d

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrBrightenHbm:Z

    if-eqz v1, :cond_32

    goto :goto_3d

    .line 218
    :cond_32
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    return v1

    .line 216
    :cond_3d
    :goto_3d
    return v0

    .line 228
    .end local v0    # "hdrBrightness":F
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    iget v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    return v0
.end method

.method getHdrListener()Lcom/android/server/display/HighBrightnessModeController$HdrListener;
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    return-object v0
.end method

.method getHighBrightnessMode()I
    .registers 2

    .line 277
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    return v0
.end method

.method getNormalBrightnessMax()F
    .registers 2

    .line 203
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    goto :goto_d

    :cond_b
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    :goto_d
    return v0
.end method

.method getTransitionPoint()F
    .registers 2

    .line 281
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 282
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    return v0

    .line 284
    :cond_b
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0
.end method

.method protected isDolbyEnable()Z
    .registers 2

    .line 860
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mDolbyEnable:Z

    return v0
.end method

.method protected isHdrLayerPresent()Z
    .registers 2

    .line 864
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    return v0
.end method

.method synthetic lambda$dump$0$com-android-server-display-HighBrightnessModeController(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 324
    invoke-direct {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method onAmbientLuxChange(F)V
    .registers 4
    .param p1, "ambientLux"    # F

    .line 233
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    .line 234
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-nez v0, :cond_d

    goto :goto_22

    .line 238
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 239
    .local v0, "isHighLux":Z
    :goto_18
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eq v0, v1, :cond_21

    .line 240
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 241
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 243
    :cond_21
    return-void

    .line 235
    .end local v0    # "isHighLux":Z
    :cond_22
    :goto_22
    return-void
.end method

.method onBrightnessChanged(FFI)V
    .registers 14
    .param p1, "brightness"    # F
    .param p2, "unthrottledBrightness"    # F
    .param p3, "throttlingReason"    # I

    .line 247
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-nez v0, :cond_7

    .line 248
    return-void

    .line 250
    :cond_7
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 251
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    .line 252
    iput p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 256
    iget-wide v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v4

    .line 257
    .local v0, "wasHbmDrainingAvailableTime":Z
    :goto_1a
    iget-object v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v5, v5, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_27

    iget-boolean v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-nez v5, :cond_27

    goto :goto_28

    :cond_27
    move v1, v4

    .line 259
    .local v1, "shouldHbmDrainAvailableTime":Z
    :goto_28
    if-eq v0, v1, :cond_43

    .line 260
    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v4}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v4

    .line 261
    .local v4, "currentTime":J
    if-eqz v1, :cond_35

    .line 262
    iput-wide v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    goto :goto_43

    .line 264
    :cond_35
    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mEvents:Ljava/util/LinkedList;

    new-instance v7, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;

    iget-wide v8, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    invoke-direct {v7, v8, v9, v4, v5}, Lcom/android/server/display/HighBrightnessModeController$HbmEvent;-><init>(JJ)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 265
    iput-wide v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mRunningStartTimeMillis:J

    .line 273
    .end local v4    # "currentTime":J
    :cond_43
    :goto_43
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 274
    return-void
.end method

.method protected registerListener(Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;

    .line 680
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrStateListener:Lcom/android/server/display/HighBrightnessModeController$HdrStateListener;

    .line 681
    return-void
.end method

.method resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "displayToken"    # Landroid/os/IBinder;
    .param p4, "displayUniqueId"    # Ljava/lang/String;
    .param p5, "hbmData"    # Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .param p6, "hdrBrightnessCfg"    # Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    .line 296
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 297
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 298
    iput-object p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 299
    iput-object p6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    .line 300
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    .line 302
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    .line 303
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->stopObserving()V

    .line 304
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->stopObserving()V

    .line 305
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 306
    invoke-direct {p0, p3}, Lcom/android/server/display/HighBrightnessModeController;->registerHdrListener(Landroid/os/IBinder;)V

    .line 307
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 308
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    if-lez v0, :cond_35

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsThermalStatusWithinLimit:Z

    .line 310
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->startObserving()V

    .line 317
    :cond_35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 318
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->startObserving()V

    .line 321
    :cond_3d
    return-void
.end method

.method setAutoBrightnessEnabled(I)V
    .registers 6
    .param p1, "state"    # I

    .line 163
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 164
    .local v2, "isEnabled":Z
    :goto_7
    const/4 v3, 0x3

    if-ne p1, v3, :cond_b

    goto :goto_c

    :cond_b
    move v1, v0

    :goto_c
    iput-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-ne v2, v1, :cond_19

    goto :goto_21

    .line 172
    :cond_19
    iput-boolean v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 173
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 174
    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 175
    return-void

    .line 167
    :cond_21
    :goto_21
    return-void
.end method

.method protected setDolbyEnable(Z)V
    .registers 2
    .param p1, "state"    # Z

    .line 856
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mDolbyEnable:Z

    .line 857
    return-void
.end method

.method stop()V
    .registers 2

    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/HighBrightnessModeController;->registerHdrListener(Landroid/os/IBinder;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSkinThermalStatusObserver:Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->stopObserving()V

    .line 291
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->stopObserving()V

    .line 292
    return-void
.end method
