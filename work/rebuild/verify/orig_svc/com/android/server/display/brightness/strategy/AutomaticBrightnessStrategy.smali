.class public Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;
.super Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
.source "AutomaticBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mAppliedAutoBrightness:Z

.field public mAppliedTemporaryAutoBrightnessAdjustment:Z

.field public mAutoBrightnessAdjustment:F

.field public mAutoBrightnessAdjustmentChanged:Z

.field public mAutoBrightnessAdjustmentReasonsFlags:I

.field public mAutoBrightnessDisabledDueToDisplayOff:Z

.field public mAutoBrightnessOneShotEnabled:Z

.field public mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayId:I

.field public mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

.field public mIsAutoBrightnessEnabled:Z

.field public mIsConfigured:Z

.field public mIsShortTermModelActive:Z

.field public mIsSlowChange:Z

.field public mPendingAutoBrightnessAdjustment:F

.field public mShouldResetShortTermModel:Z

.field public mTemporaryAutoBrightnessAdjustment:F

.field public mUseAutoBrightness:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .registers 6

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 75
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    .line 118
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    .line 119
    iput p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    .line 120
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutoBrightnessAdjustmentSetting()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 121
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 122
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 123
    iput-object p4, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    if-nez p3, :cond_29

    .line 124
    new-instance p3, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$RealInjector;

    invoke-direct {p3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$RealInjector;-><init>()V

    :cond_29
    iput-object p3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)V
    .registers 5

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;-><init>(Landroid/content/Context;ILcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    return-void
.end method


# virtual methods
.method public accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;I)V
    .registers 21

    .line 491
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->processPendingAutoBrightnessAdjustments()Z

    .line 495
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->updateTemporaryAutoBrightnessAdjustments()F

    move-result v5

    const/4 v12, 0x0

    .line 496
    iput-boolean v12, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    .line 498
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_2d

    .line 500
    iget-boolean v6, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    iget-boolean v10, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    iget-boolean v11, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessOneShotEnabled:Z

    move v4, p1

    move v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v2, p6

    move/from16 v1, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIIZZZ)V

    .line 511
    iput-boolean v12, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    .line 514
    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    :cond_2d
    return-void
.end method

.method public adjustAutomaticBrightnessStateIfValid(F)V
    .registers 3

    .line 416
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x2

    .line 418
    :goto_9
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 420
    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_14

    .line 421
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 423
    :goto_15
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_25

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_25

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->putAutoBrightnessAdjustmentSetting(F)V

    return-void

    :cond_25
    const/4 p1, 0x0

    .line 429
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 332
    const-string v0, "AutomaticBrightnessStrategy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShouldResetShortTermModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustmentChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWasShortTermModelActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustmentReasonsFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 1

    .line 449
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    return p0
.end method

.method public getAutoBrightnessAdjustmentChanged()Z
    .registers 1

    .line 377
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    return p0
.end method

.method public final getAutoBrightnessAdjustmentSetting()F
    .registers 4

    .line 566
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    .line 568
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_16

    return v2

    :cond_16
    invoke-static {p0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampBrightnessAdjustment(F)F

    move-result p0

    return p0
.end method

.method public getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;Z)F
    .registers 4

    .line 394
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_9

    .line 395
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result p1

    goto :goto_b

    :cond_9
    const/high16 p1, 0x7fc00000    # Float.NaN

    :goto_b
    if-nez p2, :cond_10

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->adjustAutomaticBrightnessStateIfValid(F)V

    :cond_10
    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 325
    const-string p0, "AutomaticBrightnessStrategy"

    return-object p0
.end method

.method public getPendingAutoBrightnessAdjustment()F
    .registers 1

    .line 454
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    return p0
.end method

.method public getReason()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public getTemporaryAutoBrightnessAdjustment()F
    .registers 1

    .line 459
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    return p0
.end method

.method public hasAppliedAutoBrightness()Z
    .registers 1

    .line 407
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    return p0
.end method

.method public isAutoBrightnessDisabledDueToDisplayOff()Z
    .registers 1

    .line 203
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessDisabledDueToDisplayOff:Z

    return p0
.end method

.method public isAutoBrightnessEnabled()Z
    .registers 1

    .line 176
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    return p0
.end method

.method public isAutoBrightnessValid()Z
    .registers 5

    .line 185
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;Z)F

    move-result v0

    .line 188
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v3

    if-nez v3, :cond_19

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1b

    :cond_19
    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    .line 197
    :goto_1c
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->hasAppliedAutoBrightness()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutoBrightnessAdjustmentChanged()Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    iput-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsSlowChange:Z

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutoBrightnessApplied(Z)V

    return v0
.end method

.method public isShortTermModelActive()Z
    .registers 1

    .line 276
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsShortTermModelActive:Z

    return p0
.end method

.method public isTemporaryAutoBrightnessAdjustmentApplied()Z
    .registers 1

    .line 384
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    return p0
.end method

.method public processPendingAutoBrightnessAdjustments()Z
    .registers 5

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    .line 227
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_c

    return v0

    .line 230
    :cond_c
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v1, v1, v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v1, :cond_19

    .line 231
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    return v0

    .line 234
    :cond_19
    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 235
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    .line 236
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentChanged:Z

    return v0
.end method

.method public putAutoBrightnessAdjustmentSetting(F)V
    .registers 4

    .line 464
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    if-nez v0, :cond_13

    .line 465
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    .line 466
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_auto_brightness_adj"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    :cond_13
    return-void
.end method

.method public setAutoBrightnessApplied(Z)V
    .registers 2

    .line 476
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedAutoBrightness:Z

    return-void
.end method

.method public setAutoBrightnessOneShotEnabled(Z)V
    .registers 2

    .line 207
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessOneShotEnabled:Z

    return-void
.end method

.method public setAutoBrightnessState(IZIIZFZZ)V
    .registers 15

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p4

    move v2, p5

    move v4, p8

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->switchMode(IZIZZ)V

    move p4, v1

    const/4 p1, 0x0

    const/4 p8, 0x1

    if-eqz p2, :cond_14

    if-ne v3, p8, :cond_14

    if-eq p4, p8, :cond_14

    move p2, p8

    goto :goto_15

    :cond_14
    move p2, p1

    .line 150
    :goto_15
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2b

    if-ne p4, v1, :cond_20

    if-ne v3, p8, :cond_22

    :cond_20
    if-eqz p2, :cond_2b

    :cond_22
    const/4 v0, 0x6

    if-eq p3, v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_2b

    move v0, p8

    goto :goto_2c

    :cond_2b
    move v0, p1

    :goto_2c
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->shouldUseAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_3b

    if-ne p4, v1, :cond_38

    if-ne v3, p8, :cond_3b

    :cond_38
    if-nez p2, :cond_3b

    move p1, p8

    :cond_3b
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessDisabledDueToDisplayOff:Z

    .line 159
    iget-boolean p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsAutoBrightnessEnabled:Z

    if-eqz p2, :cond_48

    const/16 p2, 0xa

    if-eq p3, p2, :cond_48

    move p2, p6

    move v1, p8

    goto :goto_4c

    :cond_48
    if-eqz p1, :cond_4b

    const/4 v1, 0x3

    :cond_4b
    move p2, p6

    .line 165
    :goto_4c
    iget-object p6, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move p1, p7

    move p7, v1

    move p3, v3

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;I)V

    .line 168
    iput-boolean p8, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    return-void
.end method

.method public setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_a

    .line 250
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    .line 252
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .registers 3

    .line 216
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 217
    invoke-virtual {p0, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setShouldResetShortTermModel(Z)V

    return-void
.end method

.method public setShouldResetShortTermModel(Z)V
    .registers 2

    .line 439
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 2

    .line 294
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    return-void
.end method

.method public setUseAutoBrightness(Z)V
    .registers 2

    .line 267
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    return-void
.end method

.method public shouldResetShortTermModel()Z
    .registers 1

    .line 444
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mShouldResetShortTermModel:Z

    return p0
.end method

.method public shouldUseAutoBrightness()Z
    .registers 1

    .line 259
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mUseAutoBrightness:Z

    return p0
.end method

.method public strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .registers 12

    .line 352
    iget-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    if-nez v0, :cond_31

    .line 353
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getTargetDisplayState()I

    move-result v2

    .line 354
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result v3

    .line 355
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getSelectedDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    move-result-object v0

    .line 356
    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getReason()I

    move-result v4

    .line 357
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iget v5, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 358
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iget-boolean v6, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    .line 360
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->getLastUserSetScreenBrightness()F

    move-result v7

    .line 361
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->isUserSetBrightnessChanged()Z

    move-result v8

    .line 362
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;->isBedtimeModeWearEnabled()Z

    move-result v9

    move-object v1, p0

    .line 353
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutoBrightnessState(IZIIZFZZ)V

    goto :goto_32

    :cond_31
    move-object v1, p0

    :goto_32
    const/4 p0, 0x0

    .line 364
    iput-boolean p0, v1, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsConfigured:Z

    return-void
.end method

.method public final switchMode(IZIZZ)V
    .registers 7

    .line 520
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_4f

    .line 522
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_4f

    .line 526
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 527
    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAutoBrightnessModeBedtimeWearEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p4, :cond_24

    .line 530
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p5}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    return-void

    .line 536
    :cond_24
    iget-object p4, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_3d

    const/4 p4, 0x1

    if-nez p2, :cond_34

    if-eq p3, p4, :cond_41

    .line 538
    :cond_34
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result p1

    if-eqz p1, :cond_3b

    goto :goto_41

    :cond_3b
    move p4, v0

    goto :goto_41

    .line 539
    :cond_3d
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result p4

    :cond_41
    :goto_41
    if-eqz p4, :cond_4a

    .line 541
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p5}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    return-void

    .line 545
    :cond_4a
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p0, v0, p5}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .registers 7

    .line 300
    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    const/4 v1, 0x4

    .line 301
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(I)V

    .line 302
    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;

    iget v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mDisplayId:I

    invoke-interface {v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy$Injector;->getBrightnessEvent(I)Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v1

    const/4 v2, 0x1

    .line 307
    invoke-virtual {p0, v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;Z)F

    move-result v3

    .line 309
    new-instance v4, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v4}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 310
    invoke-virtual {v4, v3}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v4

    .line 311
    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessReason(Lcom/android/server/display/brightness/BrightnessReason;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mIsSlowChange:Z

    .line 313
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 315
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessAdjustmentFlag(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getCurrentScreenBrightness()F

    move-result v1

    cmpl-float v1, v3, v1

    const/4 v3, 0x0

    if-eqz v1, :cond_46

    move v1, v2

    goto :goto_47

    :cond_46
    move v1, v3

    .line 316
    :goto_47
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setShouldUpdateScreenBrightnessSetting(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->getAutoBrightnessAdjustmentChanged()Z

    move-result p0

    if-nez p0, :cond_59

    .line 319
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->isUserSetBrightnessChanged()Z

    move-result p0

    if-eqz p0, :cond_58

    goto :goto_59

    :cond_58
    move v2, v3

    .line 318
    :cond_59
    :goto_59
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsUserInitiatedChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method

.method public updatePendingAutoBrightnessAdjustments()V
    .registers 5

    .line 284
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_auto_brightness_adj"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 286
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_18

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_1c

    .line 287
    :cond_18
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampBrightnessAdjustment(F)F

    move-result v0

    :goto_1c
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mPendingAutoBrightnessAdjustment:F

    return-void
.end method

.method public final updateTemporaryAutoBrightnessAdjustments()F
    .registers 3

    .line 554
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    .line 555
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-nez v0, :cond_f

    .line 559
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mTemporaryAutoBrightnessAdjustment:F

    return p0

    :cond_f
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->mAutoBrightnessAdjustment:F

    return p0
.end method
