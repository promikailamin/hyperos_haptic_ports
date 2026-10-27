.class public final Lcom/android/server/display/brightness/DisplayBrightnessController;
.super Ljava/lang/Object;
.source "DisplayBrightnessController.java"


# instance fields
.field mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public final mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

.field public final mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

.field public mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

.field public mCurrentMaxBrightness:F

.field public mCurrentMinBrightness:F

.field public mCurrentScreenBrightness:F

.field public mCurrentUnthrottledBrightness:F

.field public mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

.field public final mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

.field public final mDisplayId:I

.field public mIsStylusBeingUsed:Z

.field public mLastUserSetScreenBrightness:F

.field public final mLock:Ljava/lang/Object;

.field public final mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

.field public mPendingUnthrottledScreenBrightness:F

.field public final mPersistBrightnessNitsForDefaultDisplay:Z

.field public final mScreenBrightnessDefault:F

.field public mUserSetScreenBrightnessUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IFLcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 19

    .line 136
    new-instance v2, Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;

    invoke-direct {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/brightness/DisplayBrightnessController;-><init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;IFLcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;IFLcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 11

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 93
    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    .line 145
    iput p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    .line 147
    iput-object p5, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 148
    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingUnthrottledScreenBrightness:F

    .line 149
    invoke-static {p4}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result p4

    iput p4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    .line 150
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result p4

    iput p4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 151
    iput p4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentUnthrottledBrightness:F

    const/high16 p4, 0x3f800000    # 1.0f

    .line 152
    iput p4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentMaxBrightness:F

    const/4 p4, 0x0

    .line 153
    iput p4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentMinBrightness:F

    .line 154
    iput-object p6, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 155
    invoke-virtual {p2, p1, p3, p8, p9}, Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;->getDisplayBrightnessStrategySelector(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayDeviceConfig;)Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 157
    iput-object p7, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111022f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    return-void
.end method


# virtual methods
.method public final addAutomaticBrightnessState(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState;
    .registers 2

    .line 697
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object p0

    .line 699
    invoke-static {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->from(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p1

    if-eqz p0, :cond_12

    .line 701
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 700
    :goto_13
    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setShouldUseAutoBrightness(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 702
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method

.method public final constructStrategyExecutionRequestLocked(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)Lcom/android/server/display/brightness/StrategyExecutionRequest;
    .registers 9

    .line 762
    new-instance v0, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentUnthrottledBrightness:F

    iget-boolean v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    iget-boolean v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/brightness/StrategyExecutionRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZZLandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V

    return-object v0
.end method

.method public final constructStrategySelectionRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;Z)Lcom/android/server/display/brightness/StrategySelectionRequest;
    .registers 13

    .line 748
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateUserSetScreenBrightness()Z

    move-result v4

    .line 750
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 751
    :try_start_7
    iget v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    .line 752
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_16

    .line 753
    new-instance v0, Lcom/android/server/display/brightness/StrategySelectionRequest;

    iget-boolean v6, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/brightness/StrategySelectionRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;IFZLandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;ZZ)V

    return-object v0

    :catchall_16
    move-exception v0

    move-object p0, v0

    .line 752
    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_16

    throw p0
.end method

.method public convertToAdjustedNits(F)F
    .registers 2

    .line 492
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_7

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 495
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->convertToAdjustedNits(F)F

    move-result p0

    return p0
.end method

.method public convertToNits(F)F
    .registers 2

    .line 476
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_7

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 479
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->convertToNits(F)F

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 575
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 576
    const-string v0, "DisplayBrightnessController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId=: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPersistBrightnessNitsForDefaultDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsStylusBeingUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentMinBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentMinBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentMaxBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentMaxBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUnthrottledScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingUnthrottledScreenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentUnthrottledBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentUnthrottledBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserSetScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    if-eqz v1, :cond_108

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Last selected DisplayBrightnessStrategy= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 594
    invoke-interface {v2}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_108

    :catchall_106
    move-exception p0

    goto :goto_116

    .line 596
    :cond_108
    :goto_108
    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, " "

    invoke-direct {v1, p1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 597
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->dump(Ljava/io/PrintWriter;)V

    .line 598
    monitor-exit v0

    return-void

    :goto_116
    monitor-exit v0
    :try_end_117
    .catchall {:try_start_63 .. :try_end_117} :catchall_106

    throw p0
.end method

.method public final getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;
    .registers 2

    .line 564
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 566
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
    .registers 1

    .line 463
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object p0

    return-object p0
.end method

.method public final getBrightnessConstrainedLocked(F)F
    .registers 3

    .line 768
    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentMinBrightness:F

    iget p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentMaxBrightness:F

    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public getBrightnessFromAdjustedNits(F)F
    .registers 2

    .line 522
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_7

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 525
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getBrightnessFromAdjustedNits(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessFromNits(F)F
    .registers 2

    .line 507
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_7

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 510
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getBrightnessFromNits(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessSettingListener()Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;
    .registers 1

    .line 653
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    return-object p0
.end method

.method public getCurrentBrightness()F
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 289
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getCurrentDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;
    .registers 2

    .line 661
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 663
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getIsUserSetScreenBrightnessUpdated()Z
    .registers 1

    .line 317
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    return p0
.end method

.method public getLastUserSetScreenBrightness()F
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_3
    iget p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 336
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getManualDozeBrightness()F
    .registers 3

    .line 532
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getDozeBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    move-result-object v1

    .line 534
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->getManualDozeBrightness(F)F

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 535
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getPendingScreenBrightness()F
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingUnthrottledScreenBrightness:F

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 296
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getScreenBrightnessSetting()F
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessSetting;->getBrightness()F

    move-result v0

    .line 345
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 346
    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    .line 348
    :cond_e
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result p0

    return p0
.end method

.method public getScreenBrightnessSettingConstrained()F
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessSetting;->getBrightness()F

    move-result v0

    .line 356
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 357
    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    .line 360
    :cond_e
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_11
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessConstrainedLocked(F)F

    move-result p0

    .line 362
    monitor-exit v1

    return p0

    :catchall_17
    move-exception p0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public handleSettingsChange()V
    .registers 3

    .line 303
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v0

    .line 304
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_7
    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingUnthrottledScreenBrightness:F

    .line 306
    monitor-exit v1

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isAllowAutoBrightnessWhileDozing()Z
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->isAllowAutoBrightnessWhileDozing()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 253
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isAllowAutoBrightnessWhileDozingConfig()Z
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 263
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isStylusBeingUsed()Z
    .registers 1

    .line 639
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    return p0
.end method

.method public final loadNitBasedBrightnessSetting()V
    .registers 3

    .line 721
    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    if-eqz v0, :cond_23

    .line 722
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 723
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessSetting;->getBrightnessNitsForDefaultDisplay()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_23

    .line 725
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessFromNits(F)F

    move-result v0

    .line 727
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 728
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessSetting;->setBrightnessNoNotify(F)V

    goto :goto_25

    :cond_23
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 734
    :goto_25
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 735
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v0

    .line 738
    :cond_2f
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    :try_start_32
    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 740
    monitor-exit v1

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public final notifyCurrentScreenBrightness()V
    .registers 2

    .line 712
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->onDisplayChanged(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 545
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public registerBrightnessSettingChangeListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 327
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessSetting;->registerListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    return-void
.end method

.method public saveBrightnessIfNeeded()V
    .registers 1

    .line 409
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessSetting;->saveIfNeeded()V

    return-void
.end method

.method public setAndNotifyCurrentScreenBrightness(F)V
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessConstrainedLocked(F)F

    move-result v1

    .line 274
    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 275
    :goto_10
    iput v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 276
    iput p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentUnthrottledBrightness:F

    .line 277
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    if-eqz v2, :cond_1a

    .line 279
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->notifyCurrentScreenBrightness()V

    :cond_1a
    return-void

    :catchall_1b
    move-exception p0

    .line 277
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 3

    .line 674
    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 675
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object v0

    .line 676
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 677
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->loadNitBasedBrightnessSetting()V

    return-void
.end method

.method public setBrightness(F)V
    .registers 4

    .line 399
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_3
    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentMaxBrightness:F

    .line 401
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 402
    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessInternal(FF)V

    return-void

    :catchall_a
    move-exception p0

    .line 401
    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setBrightness(FI)V
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0, p2}, Lcom/android/server/display/BrightnessSetting;->setUserSerial(I)V

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(F)V

    return-void
.end method

.method public setBrightnessFromOffload(F)Z
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getOffloadBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 237
    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getOffloadBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->getOffloadScreenBrightness()F

    move-result v1

    .line 236
    invoke-static {v1, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_29

    .line 238
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getOffloadBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    move-result-object p0

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->setOffloadScreenBrightness(F)V

    const/4 p0, 0x1

    .line 240
    monitor-exit v0

    return p0

    :catchall_27
    move-exception p0

    goto :goto_2c

    .line 242
    :cond_29
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_27

    throw p0
.end method

.method public final setBrightnessInternal(FF)V
    .registers 6

    .line 372
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    .line 373
    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    if-eqz v0, :cond_29

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToNits(F)F

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessSetting;->getBrightnessNitsForDefaultDisplay()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_29

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_24

    cmpl-float p1, v1, v0

    if-gtz p1, :cond_29

    .line 381
    :cond_24
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {p0, v0}, Lcom/android/server/display/BrightnessSetting;->setBrightnessNitsForDefaultDisplay(F)V

    :cond_29
    return-void
.end method

.method public setBrightnessToFollow(FZ)V
    .registers 4

    .line 223
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getFollowerDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    move-result-object p0

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->setBrightnessToFollow(FZ)V

    .line 226
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public setStylusBeingUsed(Z)V
    .registers 2

    .line 634
    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    return-void
.end method

.method public setTemporaryBrightness(Ljava/lang/Float;)V
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setTemporaryBrightnessLocked(F)V

    .line 202
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final setTemporaryBrightnessLocked(F)V
    .registers 2

    .line 707
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getTemporaryDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    move-result-object p0

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->setTemporaryScreenBrightness(F)V

    return-void
.end method

.method public setUpAutoBrightness(Lcom/android/server/display/AutomaticBrightnessController;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V
    .registers 8

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move p5, p6

    move p6, p7

    .line 455
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setUpAutoBrightnessFallbackStrategy(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V

    return-void
.end method

.method public final setUpAutoBrightnessFallbackStrategy(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V
    .registers 7

    .line 685
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 687
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->setupAutoBrightnessFallbackSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V

    :cond_9
    return-void
.end method

.method public stop()V
    .registers 3

    .line 553
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    if-eqz v0, :cond_9

    .line 554
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessSetting;->unregisterListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 557
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 559
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->stop()V

    :cond_12
    return-void
.end method

.method public updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;Z)Lcom/android/server/display/DisplayBrightnessState;
    .registers 7

    .line 178
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 180
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->constructStrategySelectionRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;Z)Lcom/android/server/display/brightness/StrategySelectionRequest;

    move-result-object p2

    .line 179
    invoke-virtual {v1, p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->selectStrategy(Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 183
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->constructStrategyExecutionRequestLocked(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)Lcom/android/server/display/brightness/StrategyExecutionRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p1

    .line 185
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_20

    if-eqz p1, :cond_1f

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->addAutomaticBrightnessState(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object p1

    :catchall_20
    move-exception p0

    .line 185
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public updateScreenBrightnessSetting(FFF)V
    .registers 9

    .line 418
    invoke-static {p1, p2, p3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 421
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_7
    iput p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentMaxBrightness:F

    .line 423
    iput p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentMinBrightness:F

    .line 424
    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p2

    if-nez p2, :cond_15

    .line 425
    monitor-exit v1

    return-void

    :catchall_13
    move-exception p0

    goto :goto_38

    .line 427
    :cond_15
    iget p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    cmpl-float p2, v0, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1f

    move p2, v2

    goto :goto_20

    :cond_1f
    move p2, v3

    .line 430
    :goto_20
    iget v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentUnthrottledBrightness:F

    cmpl-float v4, p1, v4

    if-eqz v4, :cond_27

    goto :goto_28

    :cond_27
    move v2, v3

    .line 434
    :goto_28
    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 435
    iput p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentUnthrottledBrightness:F

    .line 436
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_13

    if-eqz p2, :cond_32

    .line 439
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->notifyCurrentScreenBrightness()V

    :cond_32
    if-eqz v2, :cond_37

    .line 442
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessInternal(FF)V

    :cond_37
    return-void

    .line 436
    :goto_38
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_13

    throw p0
.end method

.method public updateUserSetScreenBrightness()Z
    .registers 5

    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    .line 609
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 610
    :try_start_6
    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingUnthrottledScreenBrightness:F

    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v2

    if-nez v2, :cond_12

    .line 611
    monitor-exit v1

    return v0

    :catchall_10
    move-exception p0

    goto :goto_37

    .line 613
    :cond_12
    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingUnthrottledScreenBrightness:F

    invoke-virtual {p0, v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessConstrainedLocked(F)F

    move-result v2

    .line 615
    iget v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingUnthrottledScreenBrightness:F

    iput v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentUnthrottledBrightness:F

    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 616
    iput v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingUnthrottledScreenBrightness:F

    .line 617
    invoke-virtual {p0, v3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setTemporaryBrightnessLocked(F)V

    .line 619
    iget v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_2b

    .line 620
    monitor-exit v1

    return v0

    .line 622
    :cond_2b
    iput v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 623
    iput v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    .line 624
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_10

    .line 625
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->notifyCurrentScreenBrightness()V

    const/4 v0, 0x1

    .line 626
    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    return v0

    .line 624
    :goto_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_10

    throw p0
.end method

.method public updateWindowManagerBrightnessOverride(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;)Z
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getOverrideBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    move-result-object p0

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->updateWindowManagerBrightnessOverride(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 216
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method
