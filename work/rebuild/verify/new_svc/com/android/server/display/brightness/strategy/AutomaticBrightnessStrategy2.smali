.class public Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
.super Ljava/lang/Object;
.source "AutomaticBrightnessStrategy2.java"


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

.field public mIsAutoBrightnessEnabled:Z

.field public mIsShortTermModelActive:Z

.field public mPendingAutoBrightnessAdjustment:F

.field public mShouldResetShortTermModel:Z

.field public mTemporaryAutoBrightnessAdjustment:F

.field public mUseAutoBrightness:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 72
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    .line 101
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    .line 102
    iput p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

    .line 103
    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentSetting()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 104
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 105
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    return-void
.end method

.method private getAutoBrightnessAdjustmentSetting()F
    .registers 4

    .line 428
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    .line 430
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_16

    return v2

    :cond_16
    invoke-static {p0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampBrightnessAdjustment(F)F

    move-result p0

    return p0
.end method

.method private updateTemporaryAutoBrightnessAdjustments()F
    .registers 3

    .line 416
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    .line 417
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-nez v0, :cond_f

    .line 421
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    return p0

    :cond_f
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    return p0
.end method


# virtual methods
.method public accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;I)V
    .registers 21

    .line 384
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->processPendingAutoBrightnessAdjustments()Z

    .line 388
    invoke-direct {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->updateTemporaryAutoBrightnessAdjustments()F

    move-result v5

    const/4 v12, 0x0

    .line 389
    iput-boolean v12, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    .line 391
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_2d

    .line 393
    iget-boolean v6, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    iget-boolean v10, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    iget-boolean v11, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessOneShotEnabled:Z

    move v4, p1

    move v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v2, p6

    move/from16 v1, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIIZZZ)V

    .line 403
    iput-boolean v12, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    .line 406
    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    :cond_2d
    return-void
.end method

.method public adjustAutomaticBrightnessStateIfValid(F)V
    .registers 3

    .line 309
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x2

    .line 311
    :goto_9
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    .line 313
    iget-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_14

    .line 314
    invoke-virtual {p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 316
    :goto_15
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_25

    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_25

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->putAutoBrightnessAdjustmentSetting(F)V

    return-void

    :cond_25
    const/4 p1, 0x0

    .line 322
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 244
    const-string v0, "AutomaticBrightnessStrategy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShouldResetShortTermModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustmentChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWasShortTermModelActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustmentReasonsFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAutoBrightnessAdjustment()F
    .registers 1

    .line 342
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    return p0
.end method

.method public getAutoBrightnessAdjustmentChanged()Z
    .registers 1

    .line 266
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    return p0
.end method

.method public getAutoBrightnessAdjustmentReasonsFlags()I
    .registers 1

    .line 293
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentReasonsFlags:I

    return p0
.end method

.method public getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_9

    .line 283
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result p1

    goto :goto_b

    :cond_9
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 285
    :goto_b
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->adjustAutomaticBrightnessStateIfValid(F)V

    return p1
.end method

.method public getPendingAutoBrightnessAdjustment()F
    .registers 1

    .line 347
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    return p0
.end method

.method public getTemporaryAutoBrightnessAdjustment()F
    .registers 1

    .line 352
    iget p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    return p0
.end method

.method public hasAppliedAutoBrightness()Z
    .registers 1

    .line 300
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    return p0
.end method

.method public isAutoBrightnessDisabledDueToDisplayOff()Z
    .registers 1

    .line 146
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessDisabledDueToDisplayOff:Z

    return p0
.end method

.method public isAutoBrightnessEnabled()Z
    .registers 1

    .line 142
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    return p0
.end method

.method public isShortTermModelActive()Z
    .registers 1

    .line 219
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsShortTermModelActive:Z

    return p0
.end method

.method public isTemporaryAutoBrightnessAdjustmentApplied()Z
    .registers 1

    .line 273
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    return p0
.end method

.method public processPendingAutoBrightnessAdjustments()Z
    .registers 5

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    .line 170
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_c

    return v0

    .line 173
    :cond_c
    iget v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v1, v1, v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v1, :cond_19

    .line 174
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    return v0

    .line 177
    :cond_19
    iput v2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 178
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    .line 179
    iput v3, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustmentChanged:Z

    return v0
.end method

.method public putAutoBrightnessAdjustmentSetting(F)V
    .registers 4

    .line 357
    iget v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mDisplayId:I

    if-nez v0, :cond_13

    .line 358
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessAdjustment:F

    .line 359
    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

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

    .line 369
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAppliedAutoBrightness:Z

    return-void
.end method

.method public setAutoBrightnessOneShotEnabled(Z)V
    .registers 2

    .line 150
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessOneShotEnabled:Z

    return-void
.end method

.method public setAutoBrightnessState(IZIIZFZZ)V
    .registers 12

    const/4 p8, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    if-ne p4, v0, :cond_a

    if-eq p1, v0, :cond_a

    move p2, v0

    goto :goto_b

    :cond_a
    move p2, p8

    .line 121
    :goto_b
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_21

    if-ne p1, v2, :cond_16

    if-ne p4, v0, :cond_18

    :cond_16
    if-eqz p2, :cond_21

    :cond_18
    const/4 v1, 0x6

    if-eq p3, v1, :cond_21

    iget-object v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_21

    move v1, v0

    goto :goto_22

    :cond_21
    move v1, p8

    :goto_22
    iput-boolean v1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    .line 126
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_31

    if-ne p1, v2, :cond_2e

    if-ne p4, v0, :cond_31

    :cond_2e
    if-nez p2, :cond_31

    move p8, v0

    :cond_31
    iput-boolean p8, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutoBrightnessDisabledDueToDisplayOff:Z

    .line 130
    iget-boolean p2, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mIsAutoBrightnessEnabled:Z

    if-eqz p2, :cond_3d

    const/16 p2, 0xa

    if-eq p3, p2, :cond_3d

    :goto_3b
    move p2, p6

    goto :goto_43

    :cond_3d
    if-eqz p8, :cond_41

    const/4 v0, 0x3

    goto :goto_3b

    :cond_41
    move p2, p6

    move v0, v2

    .line 136
    :goto_43
    iget-object p6, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move p3, p4

    move p4, p1

    move p1, p7

    move p7, v0

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->accommodateUserBrightnessChanges(ZFIIZLandroid/hardware/display/BrightnessConfiguration;I)V

    return-void
.end method

.method public setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_a

    .line 193
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    .line 195
    :cond_a
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .registers 3

    .line 159
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    .line 160
    invoke-virtual {p0, p2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setShouldResetShortTermModel(Z)V

    return-void
.end method

.method public setShouldResetShortTermModel(Z)V
    .registers 2

    .line 332
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 2

    .line 237
    iput p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mTemporaryAutoBrightnessAdjustment:F

    return-void
.end method

.method public setUseAutoBrightness(Z)V
    .registers 2

    .line 210
    iput-boolean p1, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    return-void
.end method

.method public shouldResetShortTermModel()Z
    .registers 1

    .line 337
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mShouldResetShortTermModel:Z

    return p0
.end method

.method public shouldUseAutoBrightness()Z
    .registers 1

    .line 202
    iget-boolean p0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mUseAutoBrightness:Z

    return p0
.end method

.method public updatePendingAutoBrightnessAdjustments()V
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_auto_brightness_adj"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 229
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_18

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_1c

    .line 230
    :cond_18
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampBrightnessAdjustment(F)F

    move-result v0

    :goto_1c
    iput v0, p0, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->mPendingAutoBrightnessAdjustment:F

    return-void
.end method
