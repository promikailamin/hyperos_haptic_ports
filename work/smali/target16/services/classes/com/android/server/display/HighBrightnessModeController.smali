.class public Lcom/android/server/display/HighBrightnessModeController;
.super Ljava/lang/Object;
.source "HighBrightnessModeController.java"


# static fields
.field public static final DEBUG:Z

.field static final HBM_TRANSITION_POINT_INVALID:F = Infinityf


# instance fields
.field public mAmbientLux:F

.field public mBrightness:F

.field public final mBrightnessMax:F

.field public final mBrightnessMin:F

.field public final mClock:Lcom/android/server/display/DisplayManagerService$Clock;

.field public final mContext:Landroid/content/Context;

.field public mDisplayStatsId:I

.field public mForceHbmChangeCallback:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHbmChangeCallback:Ljava/lang/Runnable;

.field public mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

.field public mHbmMode:I

.field public mHbmStatsState:I

.field public mHdrBoostDisabled:Z

.field public mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

.field public mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

.field public mHeight:I

.field public mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

.field public final mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

.field public mIsAutoBrightnessEnabled:Z

.field public mIsAutoBrightnessOffByState:Z

.field public mIsBlockedByLowPowerMode:Z

.field mIsHdrLayerPresent:Z

.field public mIsInAllowedAmbientRange:Z

.field public mIsTimeAvailable:Z

.field public mMaxDesiredHdrSdrRatio:F

.field public final mRecalcRunnable:Ljava/lang/Runnable;

.field public mRegisteredDisplayToken:Landroid/os/IBinder;

.field public final mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

.field public mThrottlingReason:I

.field public mUnthrottledBrightness:F

.field public mWidth:I


# direct methods
.method public static synthetic $r8$lambda$Ch4tw554EqFz0NWU9cX3C2f2K7s(Lcom/android/server/display/HighBrightnessModeController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    return-void
.end method

.method public static synthetic $r8$lambda$P9bufWROwnLfROHxW5qwb2tgs3M(Lcom/android/server/display/HighBrightnessModeController;Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->lambda$dump$0(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightness(Lcom/android/server/display/HighBrightnessModeController;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/HighBrightnessModeController;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/HighBrightnessModeController;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHbmData(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/config/HighBrightnessModeData;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdrBrightnessCfg(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxDesiredHdrSdrRatio(Lcom/android/server/display/HighBrightnessModeController;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThrottlingReason(Lcom/android/server/display/HighBrightnessModeController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUnthrottledBrightness(Lcom/android/server/display/HighBrightnessModeController;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmForceHbmChangeCallback(Lcom/android/server/display/HighBrightnessModeController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsBlockedByLowPowerMode(Lcom/android/server/display/HighBrightnessModeController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxDesiredHdrSdrRatio(Lcom/android/server/display/HighBrightnessModeController;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateHbmMode(Lcom/android/server/display/HighBrightnessModeController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 61
    const-string v0, "HighBrightnessModeController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V
    .registers 27

    .line 137
    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$Injector;

    invoke-direct {v1}, Lcom/android/server/display/HighBrightnessModeController$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V
    .registers 16

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 102
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 105
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 106
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 109
    iput v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    .line 110
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    const/4 v1, 0x1

    .line 116
    iput v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    .line 131
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBoostDisabled:Z

    .line 146
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    .line 147
    iput-object p13, p0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$Injector;->getClock()Lcom/android/server/display/DisplayManagerService$Clock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    .line 149
    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    .line 150
    iput p7, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 151
    iput p7, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    .line 152
    iput p8, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    .line 153
    iput-object p11, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    .line 154
    iput-object p12, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 155
    new-instance p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-direct {p1, p0, p2}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;-><init>(Lcom/android/server/display/HighBrightnessModeController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    .line 156
    new-instance p1, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    .line 157
    new-instance p1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-direct {p1, p0}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    move-object p2, p0

    move-object p7, p9

    move-object p8, p10

    .line 159
    invoke-virtual/range {p2 .. p8}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    return-void
.end method


# virtual methods
.method public final calculateHighBrightnessMode()I
    .registers 3

    .line 605
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 607
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-eqz v0, :cond_e

    const/4 p0, 0x2

    return p0

    .line 609
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public final calculateRemainingTime(J)J
    .registers 14

    .line 408
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    return-wide v1

    .line 416
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeMetadata;->getRunningStartTimeMillis()J

    move-result-wide v3

    cmp-long v0, v3, v1

    .line 417
    const-string v5, "HighBrightnessModeController"

    if-lez v0, :cond_3e

    cmp-long v0, v3, p1

    if-lez v0, :cond_3b

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start time set to the future. curr: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", start: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/HighBrightnessModeMetadata;->setRunningStartTimeMillis(J)V

    move-wide v3, p1

    :cond_3b
    sub-long v3, p1, v3

    goto :goto_3f

    :cond_3e
    move-wide v3, v1

    .line 427
    :goto_3f
    sget-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz v0, :cond_57

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time already used after current session: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_57
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide v6, v0, Lcom/android/server/display/config/HighBrightnessModeData;->timeWindowMillis:J

    sub-long/2addr p1, v6

    .line 433
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeMetadata;->getHbmEventQueue()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 434
    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 435
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/HbmEvent;

    .line 438
    invoke-virtual {v6}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, p1

    if-gez v7, :cond_7e

    .line 439
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_66

    .line 443
    :cond_7e
    invoke-virtual {v6}, Lcom/android/server/display/HbmEvent;->getStartTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 445
    invoke-virtual {v6}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    add-long/2addr v3, v9

    goto :goto_66

    .line 448
    :cond_8d
    sget-boolean p1, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz p1, :cond_a5

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Time already used after all sessions: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_a5
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeMaxMillis:J

    sub-long/2addr p0, v3

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public deviceSupportsHbm()Z
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public disableHdrBoost()V
    .registers 2

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBoostDisabled:Z

    .line 392
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/io/PrintWriter;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HbmEvent;)J
    .registers 7

    .line 365
    invoke-virtual {p2}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/display/HbmEvent;->getStartTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    event: ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p2}, Lcom/android/server/display/HbmEvent;->getStartTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p2}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Lcom/android/server/display/HbmEvent;->getStartTimeMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public final dumpLocal(Ljava/io/PrintWriter;)V
    .registers 9

    .line 316
    const-string v0, "HighBrightnessModeController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnthrottledBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    const/4 v2, 0x2

    const-string v3, ""

    if-ne v1, v2, :cond_b0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b1

    :cond_b0
    move-object v1, v3

    :goto_b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmStatsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/HighBrightnessModeController;->hbmStatsStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 328
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-eqz v1, :cond_ff

    goto :goto_101

    :cond_ff
    const-string v3, " (old/invalid)"

    :goto_101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsInAllowedAmbientRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAutoBrightnessEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAutoBrightnessOffByState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsHdrLayerPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  remainingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsTimeAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsBlockedByLowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  width*height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrBoostDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBoostDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    if-eqz v0, :cond_292

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRunningStartTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 344
    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeMetadata;->getRunningStartTimeMillis()J

    move-result-wide v1

    .line 343
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    const-string v0, "  mEvents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v0}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v0

    .line 348
    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v2}, Lcom/android/server/display/HighBrightnessModeMetadata;->getRunningStartTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_251

    .line 350
    new-instance v4, Lcom/android/server/display/HbmEvent;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/android/server/display/HbmEvent;-><init>(JJ)V

    invoke-virtual {p0, p1, v4}, Lcom/android/server/display/HighBrightnessModeController;->dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HbmEvent;)J

    move-result-wide v0

    .line 352
    :cond_251
    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v2}, Lcom/android/server/display/HighBrightnessModeMetadata;->getHbmEventQueue()Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_291

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/HbmEvent;

    .line 353
    invoke-virtual {v3}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_28c

    .line 354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    event: [normal brightness]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v3}, Lcom/android/server/display/HbmEvent;->getEndTimeMillis()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    :cond_28c
    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/HighBrightnessModeController;->dumpHbmEvent(Ljava/io/PrintWriter;Lcom/android/server/display/HbmEvent;)J

    move-result-wide v0

    goto :goto_25b

    :cond_291
    return-void

    .line 360
    :cond_292
    const-string p0, "  mHighBrightnessModeMetadata=null"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentBrightnessMax()F
    .registers 2

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 190
    :cond_d
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    return p0

    .line 186
    :cond_12
    :goto_12
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    return p0
.end method

.method public getCurrentBrightnessMin()F
    .registers 1

    .line 178
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    return p0
.end method

.method public getHdrBrightnessValue()F
    .registers 5

    .line 199
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    if-eqz v0, :cond_15

    .line 202
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;->getHdrBrightnessFromSdr(FFF)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_15

    return v0

    .line 214
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v1

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-static {v0, v1, v2, v3, p0}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    return p0
.end method

.method public getHdrListener()Lcom/android/server/display/HighBrightnessModeController$HdrListener;
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    return-object p0
.end method

.method public getHighBrightnessMode()I
    .registers 1

    .line 266
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    return p0
.end method

.method public getNormalBrightnessMax()F
    .registers 2

    .line 195
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    return p0

    :cond_b
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    return p0
.end method

.method public getTransitionPoint()F
    .registers 2

    .line 270
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 271
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    return p0

    :cond_b
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0
.end method

.method public final hbmStatsStateToString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_14

    const/4 p0, 0x2

    if-eq p1, p0, :cond_11

    const/4 p0, 0x3

    if-eq p1, p0, :cond_e

    .line 600
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 598
    :cond_e
    const-string p0, "HBM_ON_SUNLIGHT"

    return-object p0

    .line 596
    :cond_11
    const-string p0, "HBM_ON_HDR"

    return-object p0

    .line 594
    :cond_14
    const-string p0, "HBM_OFF"

    return-object p0
.end method

.method public isHbmCurrentlyAllowed()Z
    .registers 2

    .line 381
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eqz v0, :cond_16

    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isThermalThrottlingActive()Z
    .registers 3

    .line 586
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v1, v1, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_16

    return v0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$dump$0(Ljava/io/PrintWriter;)V
    .registers 2

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onAmbientLuxChange(F)V
    .registers 3

    .line 219
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    .line 220
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-nez v0, :cond_d

    goto :goto_21

    .line 224
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumLux:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 225
    :goto_18
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eq p1, v0, :cond_21

    .line 226
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    :cond_21
    :goto_21
    return-void
.end method

.method public onBrightnessChanged(FFI)V
    .registers 10

    .line 233
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 236
    :cond_7
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    .line 237
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    .line 238
    iput p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 242
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeMetadata;->getRunningStartTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_1d

    move p3, v3

    goto :goto_1e

    :cond_1d
    move p3, v2

    .line 244
    :goto_1e
    iget v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v5, v5, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2d

    iget-boolean v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-nez v4, :cond_2d

    move v2, v3

    :cond_2d
    if-eq p3, v2, :cond_70

    .line 247
    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {p3}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v3

    if-eqz v2, :cond_3d

    .line 249
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {p1, v3, v4}, Lcom/android/server/display/HighBrightnessModeMetadata;->setRunningStartTimeMillis(J)V

    goto :goto_70

    .line 251
    :cond_3d
    new-instance p3, Lcom/android/server/display/HbmEvent;

    invoke-direct {p3, p1, p2, v3, v4}, Lcom/android/server/display/HbmEvent;-><init>(JJ)V

    .line 252
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {p1, p3}, Lcom/android/server/display/HighBrightnessModeMetadata;->addHbmEvent(Lcom/android/server/display/HbmEvent;)V

    .line 253
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/HighBrightnessModeMetadata;->setRunningStartTimeMillis(J)V

    .line 255
    sget-boolean p1, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz p1, :cond_70

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "New HBM event: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 257
    invoke-virtual {p2}, Lcom/android/server/display/HighBrightnessModeMetadata;->getHbmEventQueue()Ljava/util/ArrayDeque;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 256
    const-string p2, "HighBrightnessModeController"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_70
    :goto_70
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    return-void
.end method

.method public onHdrBoostApplied(Z)V
    .registers 3

    .line 402
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBoostDisabled:Z

    if-eqz v0, :cond_6

    .line 403
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    :cond_6
    return-void
.end method

.method public final recalculateTimeAllowance()V
    .registers 18

    move-object/from16 v0, p0

    .line 459
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/DisplayManagerService$Clock;

    invoke-interface {v1}, Lcom/android/server/display/DisplayManagerService$Clock;->uptimeMillis()J

    move-result-wide v1

    .line 460
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    move-result-wide v3

    .line 464
    iget-object v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide v6, v5, Lcom/android/server/display/config/HighBrightnessModeData;->timeMinMillis:J

    cmp-long v6, v3, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ltz v6, :cond_18

    move v6, v8

    goto :goto_19

    :cond_18
    move v6, v7

    :goto_19
    if-nez v6, :cond_2b

    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_2b

    .line 465
    iget v9, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget v5, v5, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v5, v9, v5

    if-lez v5, :cond_2b

    move v5, v8

    goto :goto_2c

    :cond_2b
    move v5, v7

    :goto_2c
    if-nez v6, :cond_30

    if-eqz v5, :cond_31

    :cond_30
    move v7, v8

    .line 467
    :cond_31
    iput-boolean v7, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    .line 472
    iget-object v7, v0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    invoke-virtual {v7}, Lcom/android/server/display/HighBrightnessModeMetadata;->getHbmEventQueue()Ljava/util/ArrayDeque;

    move-result-object v7

    .line 473
    iget v8, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v9, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v9, v9, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_48

    add-long v11, v1, v3

    const-wide/16 v15, -0x1

    goto :goto_75

    .line 476
    :cond_48
    iget-boolean v8, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-nez v8, :cond_72

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    if-lez v8, :cond_72

    .line 480
    iget-object v8, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide v11, v8, Lcom/android/server/display/config/HighBrightnessModeData;->timeWindowMillis:J

    sub-long v11, v1, v11

    .line 481
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/HbmEvent;

    .line 483
    invoke-virtual {v8}, Lcom/android/server/display/HbmEvent;->getStartTimeMillis()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    iget-object v8, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    const-wide/16 v15, -0x1

    iget-wide v9, v8, Lcom/android/server/display/config/HighBrightnessModeData;->timeMinMillis:J

    add-long/2addr v13, v9

    sub-long/2addr v13, v11

    add-long/2addr v13, v1

    sub-long v11, v13, v3

    goto :goto_75

    :cond_72
    const-wide/16 v15, -0x1

    move-wide v11, v15

    .line 490
    :goto_75
    sget-boolean v8, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz v8, :cond_139

    .line 491
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HBM recalculated.  IsAllowedWithoutRestrictions: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isOnlyAllowedToStayOn: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", remainingAllowedTime: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", isLuxHigh: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isHBMCurrentlyAllowed: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isHdrLayerPresent: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mMaxDesiredHdrSdrRatio: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", isAutoBrightnessEnabled: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsTimeAvailable: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsInAllowedAmbientRange: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsBlockedByLowPowerMode: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBrightness: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mUnthrottledBrightness: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mThrottlingReason: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    .line 506
    invoke-static {v3}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", RunningStartTimeMillis: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    .line 508
    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeMetadata;->getRunningStartTimeMillis()J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", nextTimeout: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v3, v11, v15

    if-eqz v3, :cond_124

    sub-long v1, v11, v1

    goto :goto_125

    :cond_124
    move-wide v1, v15

    .line 509
    :goto_125
    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", events: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    const-string v2, "HighBrightnessModeController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_139
    cmp-long v1, v11, v15

    if-eqz v1, :cond_14e

    .line 514
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 515
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1

    add-long/2addr v11, v3

    invoke-virtual {v1, v2, v11, v12}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 518
    :cond_14e
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    return-void
.end method

.method public final registerHdrListener(Landroid/os/IBinder;)V
    .registers 3

    .line 617
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBoostDisabled:Z

    if-eqz v0, :cond_5

    goto :goto_16

    .line 620
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-ne v0, p1, :cond_a

    goto :goto_16

    .line 624
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    .line 625
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz p1, :cond_16

    .line 627
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V
    .registers 7

    .line 288
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    .line 289
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    .line 290
    iput-object p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    .line 291
    iput-object p6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    .line 292
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    .line 294
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->unregisterHdrListener()V

    .line 295
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->stopObserving()V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 297
    invoke-virtual {p0, p3}, Lcom/android/server/display/HighBrightnessModeController;->registerHdrListener(Landroid/os/IBinder;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    .line 299
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-boolean p1, p1, Lcom/android/server/display/config/HighBrightnessModeData;->allowInLowPowerMode:Z

    if-nez p1, :cond_30

    const/4 p1, 0x0

    .line 300
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    .line 301
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->startObserving()V

    :cond_30
    return-void
.end method

.method public setAutoBrightnessEnabled(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    const/4 v3, 0x3

    if-ne p1, v3, :cond_b

    goto :goto_c

    :cond_b
    move v1, v0

    .line 164
    :goto_c
    iput-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result p1

    if-eqz p1, :cond_40

    iget-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-ne v2, p1, :cond_19

    goto :goto_40

    .line 169
    :cond_19
    sget-boolean p1, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz p1, :cond_39

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAutoBrightnessEnabled( "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HighBrightnessModeController"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_39
    iput-boolean v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    .line 173
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    .line 174
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    :cond_40
    :goto_40
    return-void
.end method

.method public setHighBrightnessModeMetadata(Lcom/android/server/display/HighBrightnessModeMetadata;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/server/display/HighBrightnessModeController;->registerHdrListener(Landroid/os/IBinder;)V

    .line 279
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->stopObserving()V

    return-void
.end method

.method public final unregisterHdrListener()V
    .registers 3

    .line 632
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    .line 633
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    .line 634
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    :cond_c
    return-void
.end method

.method public final updateHbmMode()V
    .registers 3

    .line 522
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->calculateHighBrightnessMode()I

    move-result v0

    .line 523
    invoke-virtual {p0, v0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmStats(I)V

    .line 524
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    if-ne v1, v0, :cond_11

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    if-eqz v1, :cond_10

    goto :goto_11

    :cond_10
    return-void

    :cond_11
    :goto_11
    const/4 v1, 0x0

    .line 525
    iput-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    .line 526
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    .line 527
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final updateHbmStats(I)V
    .registers 8

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_13

    .line 534
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v4, v4, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    move p1, v2

    goto :goto_22

    :cond_13
    if-ne p1, v1, :cond_21

    .line 536
    iget p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v3, v3, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_21

    move p1, v0

    goto :goto_22

    :cond_21
    move p1, v1

    .line 540
    :goto_22
    iget v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    if-ne p1, v3, :cond_27

    return-void

    :cond_27
    const/4 v4, 0x0

    if-ne v3, v0, :cond_2c

    move v3, v1

    goto :goto_2d

    :cond_2c
    move v3, v4

    :goto_2d
    if-ne p1, v0, :cond_31

    move v5, v1

    goto :goto_32

    :cond_31
    move v5, v4

    :goto_32
    if-eqz v3, :cond_70

    if-nez v5, :cond_70

    .line 553
    iget-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-nez v3, :cond_40

    iget-boolean v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    if-eqz v5, :cond_40

    const/4 v0, 0x6

    goto :goto_71

    :cond_40
    if-nez v3, :cond_44

    const/4 v0, 0x7

    goto :goto_71

    .line 559
    :cond_44
    iget-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-nez v3, :cond_4a

    move v0, v1

    goto :goto_71

    .line 561
    :cond_4a
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-nez v1, :cond_50

    move v0, v2

    goto :goto_71

    .line 563
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isThermalThrottlingActive()Z

    move-result v1

    if-eqz v1, :cond_57

    goto :goto_71

    .line 566
    :cond_57
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-eqz v0, :cond_5d

    const/4 v0, 0x4

    goto :goto_71

    .line 569
    :cond_5d
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-eqz v0, :cond_63

    const/4 v0, 0x5

    goto :goto_71

    .line 572
    :cond_63
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v1, v1, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_70

    const/16 v0, 0x9

    goto :goto_71

    :cond_70
    move v0, v4

    .line 579
    :goto_71
    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/display/HighBrightnessModeController$Injector;->reportHbmStateChange(III)V

    .line 580
    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    return-void
.end method
