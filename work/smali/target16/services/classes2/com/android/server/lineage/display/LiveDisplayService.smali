.class public Lcom/android/server/lineage/display/LiveDisplayService;
.super Lcom/android/server/SystemService;
.source "LiveDisplayService.java"


# static fields
.field public static ALL_CHANGED:I = 0xff

.field public static DISPLAY_CHANGED:I = 0x2

.field public static MODE_CHANGED:I = 0x1

.field public static TWILIGHT_CHANGED:I = 0x4


# instance fields
.field public mAwaitingNudge:Z

.field public final mBinder:Landroid/os/IBinder;

.field public mCTC:Lcom/android/server/lineage/display/ColorTemperatureController;

.field public mConfig:Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

.field public final mContext:Landroid/content/Context;

.field public mDHC:Lcom/android/server/lineage/display/DisplayHardwareController;

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mFeatures:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerThread:Lcom/android/server/ServiceThread;

.field public mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

.field public mModeObserver:Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;

.field public mOMC:Lcom/android/server/lineage/display/OutdoorModeController;

.field public mPAC:Lcom/android/server/lineage/display/PictureAdjustmentController;

.field public final mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

.field public mSunset:Z

.field public final mTwilightListener:Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;

.field public final mTwilightTracker:Lcom/android/server/lineage/display/TwilightTracker;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAwaitingNudge(Lcom/android/server/lineage/display/LiveDisplayService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mAwaitingNudge:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCTC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/ColorTemperatureController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mCTC:Lcom/android/server/lineage/display/ColorTemperatureController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfig(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/internal/lineage/hardware/LiveDisplayConfig;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mConfig:Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDHC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/DisplayHardwareController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mDHC:Lcom/android/server/lineage/display/DisplayHardwareController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFeatures(Lcom/android/server/lineage/display/LiveDisplayService;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModeObserver(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mModeObserver:Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOMC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/OutdoorModeController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mOMC:Lcom/android/server/lineage/display/OutdoorModeController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPAC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/PictureAdjustmentController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mPAC:Lcom/android/server/lineage/display/PictureAdjustmentController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$State;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTwilightTracker(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/TwilightTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mTwilightTracker:Lcom/android/server/lineage/display/TwilightTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetInt(Lcom/android/server/lineage/display/LiveDisplayService;Ljava/lang/String;I)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/lineage/display/LiveDisplayService;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misScreenOn(Lcom/android/server/lineage/display/LiveDisplayService;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnudge(Lcom/android/server/lineage/display/LiveDisplayService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->nudge()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mputInt(Lcom/android/server/lineage/display/LiveDisplayService;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/lineage/display/LiveDisplayService;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopNudgingMe(Lcom/android/server/lineage/display/LiveDisplayService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->stopNudgingMe()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFeatures(Lcom/android/server/lineage/display/LiveDisplayService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/LiveDisplayService;->updateFeatures(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mAwaitingNudge:Z

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mSunset:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    .line 123
    new-instance v1, Lcom/android/server/lineage/display/LiveDisplayService$State;

    invoke-direct {v1}, Lcom/android/server/lineage/display/LiveDisplayService$State;-><init>()V

    iput-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    .line 228
    new-instance v1, Lcom/android/server/lineage/display/LiveDisplayService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lineage/display/LiveDisplayService$2;-><init>(Lcom/android/server/lineage/display/LiveDisplayService;)V

    iput-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mBinder:Landroid/os/IBinder;

    .line 389
    new-instance v1, Lcom/android/server/lineage/display/LiveDisplayService$3;

    invoke-direct {v1, p0}, Lcom/android/server/lineage/display/LiveDisplayService$3;-><init>(Lcom/android/server/lineage/display/LiveDisplayService;)V

    iput-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 413
    new-instance v1, Lcom/android/server/lineage/display/LiveDisplayService$4;

    invoke-direct {v1, p0}, Lcom/android/server/lineage/display/LiveDisplayService$4;-><init>(Lcom/android/server/lineage/display/LiveDisplayService;)V

    iput-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 473
    new-instance v1, Lcom/android/server/lineage/display/LiveDisplayService$5;

    invoke-direct {v1, p0}, Lcom/android/server/lineage/display/LiveDisplayService$5;-><init>(Lcom/android/server/lineage/display/LiveDisplayService;)V

    iput-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mTwilightListener:Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;

    .line 128
    iput-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 130
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "LiveDisplay"

    invoke-direct {v1, v2, v0, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 132
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Lcom/android/server/lineage/display/TwilightTracker;

    invoke-direct {v0, p1}, Lcom/android/server/lineage/display/TwilightTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mTwilightTracker:Lcom/android/server/lineage/display/TwilightTracker;

    return-void
.end method

.method private isScreenOn()Z
    .registers 3

    .line 483
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 484
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v0
.end method


# virtual methods
.method public final getInt(Ljava/lang/String;I)I
    .registers 4

    .line 567
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final getSunsetCounter()I
    .registers 4

    .line 490
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x3

    const/4 v1, -0x2

    const-string v2, "live_display_hinted"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final nudge()V
    .registers 7

    .line 521
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mTwilightTracker:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-virtual {v0}, Lcom/android/server/lineage/display/TwilightTracker;->getCurrentState()Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    move-result-object v0

    .line 522
    iget-boolean v1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mAwaitingNudge:Z

    if-eqz v1, :cond_aa

    if-nez v0, :cond_e

    goto/16 :goto_aa

    .line 526
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->getSunsetCounter()I

    move-result v1

    .line 529
    invoke-virtual {v0}, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->isNight()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mSunset:Z

    if-nez v2, :cond_20

    move v2, v4

    goto :goto_21

    :cond_20
    move v2, v3

    .line 530
    :goto_21
    invoke-virtual {v0}, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mSunset:Z

    if-nez v2, :cond_2b

    goto/16 :goto_aa

    :cond_2b
    if-gtz v1, :cond_32

    add-int/lit8 v1, v1, 0x1

    .line 537
    invoke-virtual {p0, v1}, Lcom/android/server/lineage/display/LiveDisplayService;->updateSunsetCounter(I)V

    :cond_32
    if-nez v1, :cond_aa

    .line 541
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.LIVEDISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 546
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 547
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 549
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080473

    .line 551
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v5, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    .line 552
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 553
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 552
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 555
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 556
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    .line 559
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 560
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 562
    invoke-virtual {p0, v4}, Lcom/android/server/lineage/display/LiveDisplayService;->updateSunsetCounter(I)V

    :cond_aa
    :goto_aa
    return-void
.end method

.method public onBootPhase(I)V
    .registers 23

    move-object/from16 v0, p0

    const/16 v1, 0x3e8

    move/from16 v2, p1

    if-ne v2, v1, :cond_173

    .line 147
    invoke-virtual {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->getSunsetCounter()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    iput-boolean v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mAwaitingNudge:Z

    .line 149
    new-instance v1, Lcom/android/server/lineage/display/DisplayHardwareController;

    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lcom/android/server/lineage/display/DisplayHardwareController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mDHC:Lcom/android/server/lineage/display/DisplayHardwareController;

    .line 150
    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/android/server/lineage/display/ColorTemperatureController;

    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mDHC:Lcom/android/server/lineage/display/DisplayHardwareController;

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/lineage/display/ColorTemperatureController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/lineage/display/DisplayHardwareController;)V

    iput-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mCTC:Lcom/android/server/lineage/display/ColorTemperatureController;

    .line 153
    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/android/server/lineage/display/OutdoorModeController;

    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lcom/android/server/lineage/display/OutdoorModeController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mOMC:Lcom/android/server/lineage/display/OutdoorModeController;

    .line 156
    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lcom/android/server/lineage/display/PictureAdjustmentController;

    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lcom/android/server/lineage/display/PictureAdjustmentController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mPAC:Lcom/android/server/lineage/display/PictureAdjustmentController;

    .line 159
    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    .line 163
    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_62
    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/lineage/display/LiveDisplayFeature;

    .line 165
    invoke-virtual {v4, v6}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getCapabilities(Ljava/util/BitSet;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_62

    .line 171
    :cond_78
    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10e0071

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 174
    new-instance v5, Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mCTC:Lcom/android/server/lineage/display/ColorTemperatureController;

    .line 175
    invoke-virtual {v1}, Lcom/android/server/lineage/display/ColorTemperatureController;->getDefaultDayTemperature()I

    move-result v8

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mCTC:Lcom/android/server/lineage/display/ColorTemperatureController;

    invoke-virtual {v1}, Lcom/android/server/lineage/display/ColorTemperatureController;->getDefaultNightTemperature()I

    move-result v9

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mOMC:Lcom/android/server/lineage/display/OutdoorModeController;

    .line 176
    invoke-virtual {v1}, Lcom/android/server/lineage/display/OutdoorModeController;->getDefaultAutoOutdoorMode()Z

    move-result v10

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mDHC:Lcom/android/server/lineage/display/DisplayHardwareController;

    invoke-virtual {v1}, Lcom/android/server/lineage/display/DisplayHardwareController;->getDefaultAutoContrast()Z

    move-result v11

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mDHC:Lcom/android/server/lineage/display/DisplayHardwareController;

    .line 177
    invoke-virtual {v1}, Lcom/android/server/lineage/display/DisplayHardwareController;->getDefaultCABC()Z

    move-result v12

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mDHC:Lcom/android/server/lineage/display/DisplayHardwareController;

    invoke-virtual {v1}, Lcom/android/server/lineage/display/DisplayHardwareController;->getDefaultColorEnhancement()Z

    move-result v13

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mCTC:Lcom/android/server/lineage/display/ColorTemperatureController;

    .line 178
    invoke-virtual {v1}, Lcom/android/server/lineage/display/ColorTemperatureController;->getColorTemperatureRange()Landroid/util/Range;

    move-result-object v14

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mCTC:Lcom/android/server/lineage/display/ColorTemperatureController;

    invoke-virtual {v1}, Lcom/android/server/lineage/display/ColorTemperatureController;->getColorBalanceRange()Landroid/util/Range;

    move-result-object v15

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mPAC:Lcom/android/server/lineage/display/PictureAdjustmentController;

    .line 179
    invoke-virtual {v1}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getHueRange()Landroid/util/Range;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mPAC:Lcom/android/server/lineage/display/PictureAdjustmentController;

    invoke-virtual {v1}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getSaturationRange()Landroid/util/Range;

    move-result-object v17

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mPAC:Lcom/android/server/lineage/display/PictureAdjustmentController;

    .line 180
    invoke-virtual {v1}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getIntensityRange()Landroid/util/Range;

    move-result-object v18

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mPAC:Lcom/android/server/lineage/display/PictureAdjustmentController;

    invoke-virtual {v1}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getContrastRange()Landroid/util/Range;

    move-result-object v19

    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mPAC:Lcom/android/server/lineage/display/PictureAdjustmentController;

    .line 181
    invoke-virtual {v1}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getSaturationThresholdRange()Landroid/util/Range;

    move-result-object v20

    invoke-direct/range {v5 .. v20}, Lcom/android/internal/lineage/hardware/LiveDisplayConfig;-><init>(Ljava/util/BitSet;IIIZZZZLandroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    iput-object v5, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mConfig:Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    .line 184
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "display"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 186
    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 187
    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    .line 188
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_ff

    move v4, v3

    goto :goto_100

    :cond_ff
    move v4, v2

    :goto_100
    iput-boolean v4, v1, Lcom/android/server/lineage/display/LiveDisplayService$State;->mScreenOn:Z

    .line 190
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    .line 191
    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v1, v4}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 193
    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    .line 194
    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    iput-boolean v1, v4, Lcom/android/server/lineage/display/LiveDisplayService$State;->mLowPowerMode:Z

    .line 196
    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mTwilightTracker:Lcom/android/server/lineage/display/TwilightTracker;

    iget-object v3, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mTwilightListener:Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;

    iget-object v4, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/lineage/display/TwilightTracker;->registerListener(Lcom/android/server/lineage/display/TwilightTracker$TwilightListener;Landroid/os/Handler;)V

    .line 197
    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    iget-object v3, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mTwilightTracker:Lcom/android/server/lineage/display/TwilightTracker;

    invoke-virtual {v3}, Lcom/android/server/lineage/display/TwilightTracker;->getCurrentState()Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/lineage/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    .line 199
    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mConfig:Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    invoke-virtual {v1}, Lcom/android/internal/lineage/hardware/LiveDisplayConfig;->hasModeSupport()Z

    move-result v1

    if-eqz v1, :cond_145

    .line 200
    new-instance v1, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;

    iget-object v3, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v3}, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;-><init>(Lcom/android/server/lineage/display/LiveDisplayService;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mModeObserver:Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;

    .line 201
    iget-object v3, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mState:Lcom/android/server/lineage/display/LiveDisplayService$State;

    invoke-virtual {v1}, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result v1

    iput v1, v3, Lcom/android/server/lineage/display/LiveDisplayService$State;->mMode:I

    .line 205
    :cond_145
    :goto_145
    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_15b

    .line 206
    iget-object v1, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mFeatures:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lineage/display/LiveDisplayFeature;

    invoke-virtual {v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_145

    .line 209
    :cond_15b
    sget v1, Lcom/android/server/lineage/display/LiveDisplayService;->ALL_CHANGED:I

    invoke-virtual {v0, v1}, Lcom/android/server/lineage/display/LiveDisplayService;->updateFeatures(I)V

    .line 211
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lineageos.intent.action.INITIALIZE_LIVEDISPLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v0, v0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_173
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 140
    const-string v0, "lineagelivedisplay"

    iget-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .registers 4

    .line 572
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final stopNudgingMe()V
    .registers 2

    .line 506
    iget-boolean v0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mAwaitingNudge:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 507
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/LiveDisplayService;->updateSunsetCounter(I)V

    :cond_8
    return-void
.end method

.method public final updateFeatures(I)V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/lineage/display/LiveDisplayService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/lineage/display/LiveDisplayService$1;-><init>(Lcom/android/server/lineage/display/LiveDisplayService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateSunsetCounter(I)V
    .registers 5

    .line 498
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "live_display_hinted"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-lez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 502
    :goto_11
    iput-boolean p1, p0, Lcom/android/server/lineage/display/LiveDisplayService;->mAwaitingNudge:Z

    return-void
.end method
