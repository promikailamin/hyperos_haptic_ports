.class public Lcom/android/server/lineage/health/ChargingControlController;
.super Lcom/android/server/lineage/health/LineageHealthFeature;
.source "ChargingControlController.java"


# instance fields
.field public final ENABLED_URI:Landroid/net/Uri;

.field public final LIMIT_URI:Landroid/net/Uri;

.field public final MODE_URI:Landroid/net/Uri;

.field public final START_TIME_URI:Landroid/net/Uri;

.field public final TARGET_TIME_URI:Landroid/net/Uri;

.field public mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mBattReceiver:Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;

.field public mBatteryPct:F

.field public final mChargingControl:Lvendor/lineage/health/IChargingControl;

.field public mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

.field public mDeadline:Lcom/android/server/lineage/health/ccprovider/Deadline;

.field public mDefaultEnabled:Z

.field public mDefaultLimit:I

.field public mDefaultMode:I

.field public mDefaultStartTime:I

.field public mDefaultTargetTime:I

.field public mIsControlCancelledOnce:Z

.field public mIsEnabled:Z

.field public mIsPowerConnected:Z

.field public mLimit:Lcom/android/server/lineage/health/ccprovider/Limit;

.field public mToggle:Lcom/android/server/lineage/health/ccprovider/Toggle;


# direct methods
.method public static bridge synthetic -$$Nest$mupdateBatteryInfo(Lcom/android/server/lineage/health/ChargingControlController;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ChargingControlController;->updateBatteryInfo(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/server/lineage/health/LineageHealthFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsEnabled:Z

    .line 51
    iput-boolean p2, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultEnabled:Z

    .line 58
    const-string p2, "charging_control_mode"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/health/ChargingControlController;->MODE_URI:Landroid/net/Uri;

    .line 60
    const-string p2, "charging_control_charging_limit"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/health/ChargingControlController;->LIMIT_URI:Landroid/net/Uri;

    .line 62
    const-string p2, "charging_control_enabled"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/health/ChargingControlController;->ENABLED_URI:Landroid/net/Uri;

    .line 64
    const-string p2, "charging_control_start_time"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/health/ChargingControlController;->START_TIME_URI:Landroid/net/Uri;

    .line 66
    const-string p2, "charging_control_target_time"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/health/ChargingControlController;->TARGET_TIME_URI:Landroid/net/Uri;

    .line 83
    iget-object p2, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/health/ChargingControlController;->mContentResolver:Landroid/content/ContentResolver;

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lvendor/lineage/health/IChargingControl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/default"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-static {p2}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 84
    invoke-static {p2}, Lvendor/lineage/health/IChargingControl$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/lineage/health/IChargingControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    .line 88
    const-string v0, "LineageHealth"

    if-nez p2, :cond_5f

    .line 89
    const-string p0, "Lineage Health HAL not found"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_5f
    new-instance v1, Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-direct {v1, p1, p0}, Lcom/android/server/lineage/health/ChargingControlNotification;-><init>(Landroid/content/Context;Lcom/android/server/lineage/health/ChargingControlController;)V

    iput-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

    .line 95
    iget-object p1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1110127

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultEnabled:Z

    .line 97
    iget-object p1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e006b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultMode:I

    .line 99
    iget-object p1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e006c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultStartTime:I

    .line 101
    iget-object p1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e006d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultTargetTime:I

    .line 103
    iget-object p1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e006a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultLimit:I

    .line 107
    new-instance p1, Lcom/android/server/lineage/health/ccprovider/Deadline;

    iget-object v1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v1}, Lcom/android/server/lineage/health/ccprovider/Deadline;-><init>(Lvendor/lineage/health/IChargingControl;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDeadline:Lcom/android/server/lineage/health/ccprovider/Deadline;

    .line 108
    new-instance p1, Lcom/android/server/lineage/health/ccprovider/Limit;

    iget-object v1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v1}, Lcom/android/server/lineage/health/ccprovider/Limit;-><init>(Lvendor/lineage/health/IChargingControl;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mLimit:Lcom/android/server/lineage/health/ccprovider/Limit;

    .line 109
    new-instance p1, Lcom/android/server/lineage/health/ccprovider/Toggle;

    iget-object v1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v1}, Lcom/android/server/lineage/health/ccprovider/Toggle;-><init>(Lvendor/lineage/health/IChargingControl;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mToggle:Lcom/android/server/lineage/health/ccprovider/Toggle;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ChargingControlController;->getProviderForMode(I)Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    if-nez p1, :cond_104

    .line 113
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mLimit:Lcom/android/server/lineage/health/ccprovider/Limit;

    invoke-virtual {p1}, Lcom/android/server/lineage/health/ccprovider/Limit;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 114
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mLimit:Lcom/android/server/lineage/health/ccprovider/Limit;

    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    return-void

    .line 115
    :cond_e5
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mToggle:Lcom/android/server/lineage/health/ccprovider/Toggle;

    invoke-virtual {p1}, Lcom/android/server/lineage/health/ccprovider/Toggle;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_f2

    .line 116
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mToggle:Lcom/android/server/lineage/health/ccprovider/Toggle;

    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    return-void

    .line 117
    :cond_f2
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDeadline:Lcom/android/server/lineage/health/ccprovider/Deadline;

    invoke-virtual {p1}, Lcom/android/server/lineage/health/ccprovider/Deadline;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_ff

    .line 118
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDeadline:Lcom/android/server/lineage/health/ccprovider/Deadline;

    iput-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    return-void

    .line 120
    :cond_ff
    const-string p0, "No charging control provider is supported"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_104
    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/lineage/health/ChargingControlController;)Landroid/content/Context;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 514
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 515
    const-string v0, "ChargingControlController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  StartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getStartTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  TargetTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getTargetTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 522
    const-string v0, "ChargingControlController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBatteryPct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBatteryPct:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsPowerConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsPowerConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsNotificationPosted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-virtual {v1}, Lcom/android/server/lineage/health/ChargingControlNotification;->isPosted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsDoneNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-virtual {v1}, Lcom/android/server/lineage/health/ChargingControlNotification;->isDoneNotification()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsControlCancelledOnce: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsControlCancelledOnce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 530
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getChargeTime()Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;
    .registers 11

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/server/lineage/health/Util;->msToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LineageHealth"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getMode()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_5a

    .line 362
    iget-object v2, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AlarmManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    if-nez v2, :cond_3f

    .line 364
    const-string v0, "Failed to get alarm service!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlNotification;->cancel()V

    return-object v5

    .line 368
    :cond_3f
    invoke-virtual {v2}, Landroid/app/AlarmManager;->getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v2

    if-nez v2, :cond_50

    .line 371
    const-string v0, "No alarm found, auto charging control has no effect"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlNotification;->cancel()V

    return-object v5

    .line 375
    :cond_50
    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v4

    const-wide/32 v6, 0x1ee6280

    sub-long v6, v4, v6

    goto :goto_82

    :cond_5a
    const/4 v4, 0x2

    if-ne v2, v4, :cond_e0

    .line 381
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getStartTime()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/lineage/health/Util;->getTimeMillisFromSecondOfDay(I)J

    move-result-wide v6

    .line 382
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getTargetTime()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/lineage/health/Util;->getTimeMillisFromSecondOfDay(I)J

    move-result-wide v4

    cmp-long v2, v6, v4

    const-wide/32 v8, 0x5265c00

    if-lez v2, :cond_7c

    cmp-long v2, v0, v4

    if-lez v2, :cond_7a

    :goto_78
    add-long/2addr v4, v8

    goto :goto_82

    :cond_7a
    sub-long/2addr v6, v8

    goto :goto_82

    :cond_7c
    cmp-long v2, v0, v4

    if-ltz v2, :cond_82

    add-long/2addr v6, v8

    goto :goto_78

    .line 399
    :cond_82
    :goto_82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got target time "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v5}, Lcom/android/server/lineage/health/Util;->msToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", start time "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    .line 400
    invoke-static {v8, v6, v7}, Lcom/android/server/lineage/health/Util;->msToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", current time "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    .line 401
    invoke-static {p0, v0, v1}, Lcom/android/server/lineage/health/Util;->msToString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 399
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance p0, Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;-><init>(JJ)V

    return-object p0

    .line 395
    :cond_e0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid charging control mode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public getLimit()I
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "charging_control_charging_limit"

    iget p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultLimit:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMode()I
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "charging_control_mode"

    iget p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultMode:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getProviderForMode(I)Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_46

    const/4 v1, 0x3

    if-le p1, v1, :cond_7

    goto :goto_46

    :cond_7
    if-ne p1, v1, :cond_1f

    .line 167
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mLimit:Lcom/android/server/lineage/health/ccprovider/Limit;

    invoke-virtual {p1}, Lcom/android/server/lineage/health/ccprovider/Limit;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 168
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mLimit:Lcom/android/server/lineage/health/ccprovider/Limit;

    return-object p0

    .line 170
    :cond_14
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mToggle:Lcom/android/server/lineage/health/ccprovider/Toggle;

    invoke-virtual {p1}, Lcom/android/server/lineage/health/ccprovider/Toggle;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 171
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mToggle:Lcom/android/server/lineage/health/ccprovider/Toggle;

    return-object p0

    :cond_1f
    const/4 v1, 0x1

    if-eq p1, v1, :cond_25

    const/4 v1, 0x2

    if-ne p1, v1, :cond_46

    .line 174
    :cond_25
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDeadline:Lcom/android/server/lineage/health/ccprovider/Deadline;

    invoke-virtual {p1}, Lcom/android/server/lineage/health/ccprovider/Deadline;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 175
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDeadline:Lcom/android/server/lineage/health/ccprovider/Deadline;

    return-object p0

    .line 177
    :cond_30
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mLimit:Lcom/android/server/lineage/health/ccprovider/Limit;

    invoke-virtual {p1}, Lcom/android/server/lineage/health/ccprovider/Limit;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 178
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mLimit:Lcom/android/server/lineage/health/ccprovider/Limit;

    return-object p0

    .line 180
    :cond_3b
    iget-object p1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mToggle:Lcom/android/server/lineage/health/ccprovider/Toggle;

    invoke-virtual {p1}, Lcom/android/server/lineage/health/ccprovider/Toggle;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 181
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mToggle:Lcom/android/server/lineage/health/ccprovider/Toggle;

    return-object p0

    :cond_46
    :goto_46
    return-object v0
.end method

.method public getStartTime()I
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "charging_control_start_time"

    iget p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultStartTime:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTargetTime()I
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "charging_control_target_time"

    iget p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultTargetTime:I

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final handleSettingChange()V
    .registers 6

    .line 469
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getMode()I

    move-result v0

    .line 471
    iget-boolean v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->isEnabled()Z

    move-result v2

    const-string v3, "LineageHealth"

    if-eq v1, v2, :cond_4c

    .line 472
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 474
    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBattReceiver:Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;

    if-nez v1, :cond_23

    .line 475
    new-instance v1, Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;-><init>(Lcom/android/server/lineage/health/ChargingControlController;Lcom/android/server/lineage/health/ChargingControlController-IA;)V

    iput-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBattReceiver:Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;

    goto :goto_28

    .line 477
    :cond_23
    iget-object v2, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 479
    :goto_28
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBattReceiver:Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    const-string v1, "Enabled charging control, start monitoring battery"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 483
    :cond_3c
    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBattReceiver:Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;

    if-eqz v1, :cond_47

    .line 484
    iget-object v4, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 485
    iput-object v2, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBattReceiver:Lcom/android/server/lineage/health/ChargingControlController$LineageHealthBatteryBroadcastReceiver;

    .line 487
    :cond_47
    const-string v1, "Disabled charging control, stop monitoring battery"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_4c
    :goto_4c
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ChargingControlController;->isProvideSupportCCMode(I)Z

    move-result v1

    if-nez v1, :cond_70

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current provider does not support mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", setting to default mode"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultMode:I

    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ChargingControlController;->setMode(I)Z

    .line 498
    :cond_70
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->resetInternalState()V

    .line 501
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->updateBatteryInfo()V

    .line 504
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->updateChargeControl()V

    return-void
.end method

.method public isChargingModeSupported(I)Z
    .registers 3

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    invoke-interface {p0}, Lvendor/lineage/health/IChargingControl;->getSupportedMode()I

    move-result p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_13

    and-int/2addr p0, p1

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0

    :catch_13
    move-exception p0

    .line 285
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public isEnabled()Z
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "charging_control_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    return v1
.end method

.method public final isProvideSupportCCMode(I)Z
    .registers 2

    .line 465
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->isChargingControlModeSupported(I)Z

    move-result p0

    return p0
.end method

.method public isSupported()Z
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .registers 2

    .line 509
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->handleSettingChange()V

    return-void
.end method

.method public onStart()V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingControl:Lvendor/lineage/health/IChargingControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x5

    .line 276
    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/lineage/health/ChargingControlController;->MODE_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/lineage/health/ChargingControlController;->LIMIT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/lineage/health/ChargingControlController;->ENABLED_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/lineage/health/ChargingControlController;->START_TIME_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/lineage/health/ChargingControlController;->TARGET_TIME_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageBaseFeature;->registerSettings([Landroid/net/Uri;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->handleSettingChange()V

    return-void
.end method

.method public reset()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ChargingControlController;->setEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultMode:I

    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ChargingControlController;->setMode(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultLimit:I

    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ChargingControlController;->setLimit(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultStartTime:I

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ChargingControlController;->setStartTime(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mDefaultTargetTime:I

    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ChargingControlController;->setTargetTime(I)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public resetInternalState()V
    .registers 2

    const/4 v0, 0x0

    .line 290
    iput-boolean v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsControlCancelledOnce:Z

    .line 291
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-virtual {v0}, Lcom/android/server/lineage/health/ChargingControlNotification;->cancel()V

    .line 293
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->reset()V

    return-void
.end method

.method public setChargingCancelledOnce()V
    .registers 4

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsControlCancelledOnce:Z

    .line 299
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    invoke-virtual {v0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->requiresBatteryLevelMonitoring()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/lineage/health/ChargingControlController$1;

    invoke-direct {v2, p0}, Lcom/android/server/lineage/health/ChargingControlController$1;-><init>(Lcom/android/server/lineage/health/ChargingControlController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    :cond_1c
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    invoke-virtual {v0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->disable()V

    .line 316
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlNotification;->cancel()V

    return-void
.end method

.method public setEnabled(Z)Z
    .registers 3

    .line 136
    const-string v0, "charging_control_enabled"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/LineageBaseFeature;->putBoolean(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setLimit(I)Z
    .registers 3

    if-ltz p1, :cond_e

    const/16 v0, 0x64

    if-le p1, v0, :cond_7

    goto :goto_e

    .line 229
    :cond_7
    const-string v0, "charging_control_charging_limit"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/LineageBaseFeature;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return p0
.end method

.method public setMode(I)Z
    .registers 4

    const/4 v0, 0x0

    if-ltz p1, :cond_17

    const/4 v1, 0x3

    if-le p1, v1, :cond_7

    goto :goto_17

    .line 151
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/health/ChargingControlController;->getProviderForMode(I)Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    if-nez v1, :cond_10

    return v0

    .line 157
    :cond_10
    const-string v0, "charging_control_mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/LineageBaseFeature;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_17
    :goto_17
    return v0
.end method

.method public setStartTime(I)Z
    .registers 3

    if-ltz p1, :cond_f

    const v0, 0x15180

    if-le p1, v0, :cond_8

    goto :goto_f

    .line 199
    :cond_8
    const-string v0, "charging_control_start_time"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/LineageBaseFeature;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method

.method public setTargetTime(I)Z
    .registers 3

    if-ltz p1, :cond_f

    const v0, 0x15180

    if-le p1, v0, :cond_8

    goto :goto_f

    .line 214
    :cond_8
    const-string v0, "charging_control_target_time"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/LineageBaseFeature;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method

.method public final updateBatteryInfo()V
    .registers 5

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_19

    .line 263
    const-string p0, "LineageHealth"

    const-string v0, "batteryStatus is NULL!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 266
    :cond_19
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/health/ChargingControlController;->updateBatteryInfo(Landroid/content/Intent;)V

    return-void
.end method

.method public final updateBatteryInfo(Landroid/content/Intent;)V
    .registers 8

    .line 239
    const-string/jumbo v0, "status"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 240
    const-string/jumbo v2, "plugged"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x5

    if-ne v0, v4, :cond_15

    .line 242
    iput-boolean v3, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsControlCancelledOnce:Z

    .line 244
    :cond_15
    iget-object v4, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    invoke-virtual {v4}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->requiresBatteryLevelMonitoring()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_21

    .line 245
    iput-boolean v5, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsPowerConnected:Z

    goto :goto_2b

    :cond_21
    if-nez v2, :cond_28

    const/4 v2, 0x3

    if-eq v0, v2, :cond_29

    if-eq v0, v5, :cond_29

    :cond_28
    move v3, v5

    .line 247
    :cond_29
    iput-boolean v3, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsPowerConnected:Z

    .line 251
    :goto_2b
    const-string v0, "level"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 252
    const-string/jumbo v2, "scale"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq v0, v1, :cond_66

    if-ne p1, v1, :cond_3d

    goto :goto_66

    :cond_3d
    mul-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 256
    iput v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBatteryPct:F

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsPowerConnected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsPowerConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mBatteryPct: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBatteryPct:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LineageHealth"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    return-void
.end method

.method public updateChargeControl()V
    .registers 11

    .line 408
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-boolean v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsControlCancelledOnce:Z

    if-nez v0, :cond_95

    iget-boolean v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mIsPowerConnected:Z

    if-nez v0, :cond_10

    goto/16 :goto_95

    .line 414
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getMode()I

    move-result v7

    .line 415
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getLimit()I

    move-result v0

    .line 417
    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    invoke-virtual {v1}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->enable()V

    const/4 v1, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v1, :cond_3a

    .line 420
    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    iget v2, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBatteryPct:F

    invoke-virtual {v1, v2, v0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->update(FI)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 421
    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

    iget v2, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBatteryPct:F

    int-to-float v3, v0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_36

    move v8, v9

    :cond_36
    invoke-virtual {v1, v0, v8}, Lcom/android/server/lineage/health/ChargingControlNotification;->post(IZ)V

    goto :goto_6e

    .line 424
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlController;->getChargeTime()Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 426
    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    iget v2, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBatteryPct:F

    invoke-virtual {v0}, Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;->getStartTime()J

    move-result-wide v3

    .line 427
    invoke-virtual {v0}, Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;->getTargetTime()J

    move-result-wide v5

    .line 426
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->update(FJJI)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 428
    iget-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-virtual {v0}, Lcom/android/server/lineage/health/ChargingControlController$ChargeTime;->getTargetTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v2, p0, Lcom/android/server/lineage/health/ChargingControlController;->mBatteryPct:F

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_65

    move v8, v9

    :cond_65
    invoke-virtual {v1, v0, v8}, Lcom/android/server/lineage/health/ChargingControlNotification;->post(Ljava/lang/Long;Z)V

    goto :goto_6e

    .line 431
    :cond_69
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-virtual {v0}, Lcom/android/server/lineage/health/ChargingControlNotification;->cancel()V

    :cond_6e
    :goto_6e
    if-ne v7, v9, :cond_88

    .line 437
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_94

    .line 438
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 440
    new-instance v1, Lcom/android/server/lineage/health/ChargingControlController$2;

    invoke-direct {v1, p0}, Lcom/android/server/lineage/health/ChargingControlController$2;-><init>(Lcom/android/server/lineage/health/ChargingControlController;)V

    iput-object v1, p0, Lcom/android/server/lineage/health/ChargingControlController;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 447
    iget-object p0, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 450
    :cond_88
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_94

    .line 451
    iget-object v1, p0, Lcom/android/server/lineage/LineageBaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_94
    return-void

    .line 409
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mCurrentProvider:Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;

    invoke-virtual {v0}, Lcom/android/server/lineage/health/ccprovider/ChargingControlProvider;->disable()V

    .line 410
    iget-object p0, p0, Lcom/android/server/lineage/health/ChargingControlController;->mChargingNotification:Lcom/android/server/lineage/health/ChargingControlNotification;

    invoke-virtual {p0}, Lcom/android/server/lineage/health/ChargingControlNotification;->cancel()V

    return-void
.end method
