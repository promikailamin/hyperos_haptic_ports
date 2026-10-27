.class public Lcom/android/server/display/ExternalDisplayStatsService$Injector;
.super Ljava/lang/Object;
.source "ExternalDisplayStatsService.java"


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsExtendedDisplayEnabled:Ljava/util/function/BooleanSupplier;

.field public mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/function/BooleanSupplier;)V
    .registers 4

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    .line 611
    iput-object p2, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    .line 612
    iput-object p3, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mIsExtendedDisplayEnabled:Ljava/util/function/BooleanSupplier;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 659
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public isExtendedDisplayEnabled()Z
    .registers 1

    .line 616
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mIsExtendedDisplayEnabled:Ljava/util/function/BooleanSupplier;

    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    return p0
.end method

.method public isInteractive(I)Z
    .registers 4

    .line 650
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_10

    .line 651
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    .line 654
    :cond_10
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p0, :cond_1d

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->isInteractive(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method public registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V
    .registers 4

    .line 631
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 632
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    .line 634
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_19

    .line 635
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    :cond_19
    return-void
.end method

.method public registerInteractivityReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 9

    .line 621
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V
    .registers 4

    .line 641
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 642
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    .line 644
    :cond_10
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_17

    .line 645
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    :cond_17
    return-void
.end method

.method public unregisterInteractivityReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 2

    .line 626
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public writeLog(IIIZ)V
    .registers 5

    .line 664
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    return-void
.end method
