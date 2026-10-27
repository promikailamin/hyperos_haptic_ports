.class public Lcom/android/server/lineage/display/OutdoorModeController;
.super Lcom/android/server/lineage/display/LiveDisplayFeature;
.source "OutdoorModeController.java"


# instance fields
.field public final mDefaultAutoOutdoorMode:Z

.field public final mDefaultOutdoorLux:I

.field public final mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

.field public mIsOutdoor:Z

.field public mIsSensorEnabled:Z

.field public final mListener:Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;

.field public mLuxObserver:Lcom/android/server/lineage/display/AmbientLuxObserver;

.field public final mOutdoorLuxHysteresis:I

.field public final mSelfManaged:Z

.field public final mUseOutdoorMode:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsOutdoor(Lcom/android/server/lineage/display/OutdoorModeController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mIsOutdoor:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsOutdoor(Lcom/android/server/lineage/display/OutdoorModeController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mIsOutdoor:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateOutdoorMode(Lcom/android/server/lineage/display/OutdoorModeController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->updateOutdoorMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/lineage/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 227
    new-instance p1, Lcom/android/server/lineage/display/OutdoorModeController$1;

    invoke-direct {p1, p0}, Lcom/android/server/lineage/display/OutdoorModeController$1;-><init>(Lcom/android/server/lineage/display/OutdoorModeController;)V

    iput-object p1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mListener:Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;

    .line 58
    iget-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/16 p2, 0x100

    .line 59
    invoke-virtual {p1, p2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz p2, :cond_24

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSunlightEnhancementSelfManaged()Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    iput-boolean p1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mSelfManaged:Z

    .line 62
    iget-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e011c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mDefaultOutdoorLux:I

    .line 64
    iget-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e011d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mOutdoorLuxHysteresis:I

    .line 66
    iget-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110135

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mDefaultAutoOutdoorMode:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 131
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 132
    const-string v0, "OutdoorModeController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSelfManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v0, :cond_b8

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultOutdoorLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mDefaultOutdoorLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOutdoorLuxHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mOutdoorLuxHysteresis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 138
    const-string v0, "  OutdoorModeController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAutoOutdoorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsOutdoor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mIsOutdoor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isNight()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    hardware state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/16 v2, 0x100

    .line 143
    invoke-virtual {v1, v2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    :cond_b8
    iget-object p0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mLuxObserver:Lcom/android/server/lineage/display/AmbientLuxObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .registers 3

    .line 87
    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    .line 88
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    const/4 v0, 0x3

    .line 89
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 90
    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mSelfManaged:Z

    if-eqz v0, :cond_15

    const/16 v0, 0xe

    .line 91
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 94
    :cond_15
    iget-boolean p0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mUseOutdoorMode:Z

    return p0
.end method

.method public getDefaultAutoOutdoorMode()Z
    .registers 1

    .line 258
    iget-boolean p0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mDefaultAutoOutdoorMode:Z

    return p0
.end method

.method public isAutomaticOutdoorModeEnabled()Z
    .registers 3

    .line 252
    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mNightDisplayAvailable:Z

    if-nez v0, :cond_14

    const-string v0, "display_auto_outdoor_mode"

    .line 254
    invoke-virtual {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->getDefaultAutoOutdoorMode()Z

    move-result v1

    .line 253
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onScreenStateChanged()V
    .registers 4

    monitor-enter p0

    .line 109
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mUseOutdoorMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_26

    if-nez v0, :cond_7

    .line 110
    monitor-exit p0

    return-void

    .line 114
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->updateSensorState()V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mIsOutdoor:Z

    .line 120
    iget-object v1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/16 v2, 0x100

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->set(IZ)Z
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_26

    goto :goto_28

    :catchall_26
    move-exception v0

    goto :goto_2a

    .line 122
    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_26

    throw v0
.end method

.method public declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .registers 2

    monitor-enter p0

    .line 126
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->updateOutdoorMode()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 127
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public onStart()V
    .registers 8

    .line 72
    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-nez v0, :cond_5

    return-void

    .line 76
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v0, :cond_20

    .line 77
    new-instance v1, Lcom/android/server/lineage/display/AmbientLuxObserver;

    iget-object v2, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mDefaultOutdoorLux:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mOutdoorLuxHysteresis:I

    int-to-float v5, v0

    const/16 v6, 0xbb8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lineage/display/AmbientLuxObserver;-><init>(Landroid/content/Context;Landroid/os/Looper;FFI)V

    iput-object v1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mLuxObserver:Lcom/android/server/lineage/display/AmbientLuxObserver;

    :cond_20
    const/4 v0, 0x1

    .line 81
    new-array v0, v0, [Landroid/net/Uri;

    const-string v1, "display_auto_outdoor_mode"

    .line 82
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->registerSettings([Landroid/net/Uri;)V

    return-void
.end method

.method public onTwilightUpdated()V
    .registers 1

    .line 104
    invoke-virtual {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->updateOutdoorMode()V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 99
    invoke-virtual {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->updateOutdoorMode()V

    return-void
.end method

.method public setAutomaticOutdoorModeEnabled(Z)Z
    .registers 3

    .line 244
    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 247
    :cond_6
    const-string v0, "display_auto_outdoor_mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->putBoolean(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized updateOutdoorMode()V
    .registers 4

    monitor-enter p0

    .line 183
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mUseOutdoorMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3c

    if-nez v0, :cond_7

    .line 184
    monitor-exit p0

    return-void

    .line 187
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->updateSensorState()V

    .line 194
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 197
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 198
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getMode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1f

    goto :goto_3f

    .line 202
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 206
    iget-boolean v1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mSelfManaged:Z

    if-eqz v1, :cond_2a

    goto :goto_3f

    .line 208
    :cond_2a
    iget-boolean v1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mIsOutdoor:Z

    if-eqz v1, :cond_3e

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    goto :goto_3f

    :cond_32
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 214
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isNight()Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_3f

    :catchall_3c
    move-exception v0

    goto :goto_48

    :cond_3e
    const/4 v2, 0x0

    .line 223
    :goto_3f
    iget-object v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->set(IZ)Z
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_3c

    .line 225
    :cond_46
    monitor-exit p0

    return-void

    :goto_48
    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_3c

    throw v0
.end method

.method public final declared-synchronized updateSensorState()V
    .registers 4

    monitor-enter p0

    .line 149
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mLuxObserver:Lcom/android/server/lineage/display/AmbientLuxObserver;

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mSelfManaged:Z

    if-eqz v0, :cond_e

    goto :goto_49

    .line 158
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_35

    .line 159
    invoke-virtual {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 160
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getMode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_29

    goto :goto_36

    :cond_29
    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    .line 164
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isNight()Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_36

    :catchall_33
    move-exception v0

    goto :goto_4b

    :cond_35
    const/4 v2, 0x0

    .line 170
    :goto_36
    iget-boolean v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mIsSensorEnabled:Z

    if-eq v0, v2, :cond_47

    .line 171
    iput-boolean v2, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mIsSensorEnabled:Z

    .line 172
    iget-object v0, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mLuxObserver:Lcom/android/server/lineage/display/AmbientLuxObserver;

    if-eqz v2, :cond_43

    iget-object v1, p0, Lcom/android/server/lineage/display/OutdoorModeController;->mListener:Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    invoke-virtual {v0, v1}, Lcom/android/server/lineage/display/AmbientLuxObserver;->setTransitionListener(Lcom/android/server/lineage/display/AmbientLuxObserver$TransitionListener;)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_33

    .line 174
    :cond_47
    monitor-exit p0

    return-void

    .line 150
    :cond_49
    :goto_49
    monitor-exit p0

    return-void

    :goto_4b
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_33

    throw v0
.end method
