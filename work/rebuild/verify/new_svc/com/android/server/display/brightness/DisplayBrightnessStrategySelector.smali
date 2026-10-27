.class public Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;
.super Ljava/lang/Object;
.source "DisplayBrightnessStrategySelector.java"


# instance fields
.field public mAllowAutoBrightnessWhileDozing:Z

.field public final mAllowAutoBrightnessWhileDozingConfig:Z

.field public final mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

.field public final mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field public final mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

.field public final mAutomaticBrightnessStrategy2:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field public final mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

.field public final mContext:Landroid/content/Context;

.field final mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

.field public final mDisplayId:I

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

.field public final mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

.field public final mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

.field public final mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

.field public final mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

.field public mOldBrightnessStrategyName:Ljava/lang/String;

.field public final mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

.field public final mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

.field public final mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;ILcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 121
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_13

    .line 123
    new-instance v4, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;

    invoke-direct {v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;-><init>()V

    goto :goto_15

    :cond_13
    move-object/from16 v4, p2

    .line 125
    :goto_15
    iput-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mContext:Landroid/content/Context;

    .line 126
    iput-object v3, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 127
    iput v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    .line 130
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultDozeBrightness()F

    move-result v5

    .line 129
    invoke-static {v5}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v5

    .line 128
    invoke-virtual {v4, v3, v1, v2, v5}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getDozeBrightnessStrategy(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;IF)Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    .line 131
    invoke-virtual {v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getScreenOffBrightnessStrategy()Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    .line 132
    invoke-virtual {v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getOverrideBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    .line 133
    invoke-virtual {v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getTemporaryBrightnessStrategy()Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 134
    invoke-virtual {v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getBoostBrightnessStrategy()Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    .line 135
    invoke-virtual {v4, v2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getFollowerBrightnessStrategy(I)Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    .line 136
    invoke-virtual {v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getInvalidBrightnessStrategy()Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    .line 138
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v5

    const/4 v13, 0x0

    if-nez v5, :cond_56

    move-object v5, v13

    goto :goto_5a

    .line 139
    :cond_56
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getAutomaticBrightnessStrategy1(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    move-result-object v5

    :goto_5a
    iput-object v5, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 142
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v14

    if-eqz v14, :cond_64

    move-object v2, v13

    goto :goto_68

    .line 143
    :cond_64
    invoke-virtual {v4, v1, v2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getAutomaticBrightnessStrategy2(Landroid/content/Context;I)Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object v2

    :goto_68
    iput-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy2:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 145
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v14

    if-eqz v14, :cond_71

    move-object v2, v5

    .line 146
    :cond_71
    iput-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    .line 148
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 149
    invoke-virtual {v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    move-result-object v2

    move-object v15, v2

    goto :goto_80

    :cond_7f
    move-object v15, v13

    :goto_80
    iput-object v15, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    .line 150
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 152
    invoke-virtual {v4, v3}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getOffloadBrightnessStrategy(Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    goto :goto_91

    .line 154
    :cond_8f
    iput-object v13, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    .line 157
    :goto_91
    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 158
    invoke-virtual {v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector$Injector;->getFallbackBrightnessStrategy()Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    move-result-object v13

    :cond_9b
    iput-object v13, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    .line 159
    iget-object v14, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    move-object/from16 v16, v13

    move-object v13, v5

    filled-new-array/range {v6 .. v16}, [Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 164
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 166
    iput-boolean v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 167
    invoke-virtual {v6}, Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final constructStrategySelectionNotifyRequest(Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;
    .registers 12

    .line 345
    new-instance v0, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;

    .line 346
    invoke-virtual {p2}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v1

    .line 347
    invoke-virtual {p2}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getTargetDisplayState()I

    move-result v2

    .line 349
    invoke-virtual {p2}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getLastUserSetScreenBrightness()F

    move-result v4

    .line 350
    invoke-virtual {p2}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isUserSetBrightnessChanged()Z

    move-result v5

    iget-boolean v6, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 352
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v7

    .line 353
    invoke-virtual {p2}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isWearBedtimeModeEnabled()Z

    move-result v8

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;FZZZZ)V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 291
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 292
    const-string v0, "DisplayBrightnessStrategySelector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    const-string v0, "----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mOldBrightnessStrategyName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozing= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, " "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 302
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_70
    if-ge v1, p1, :cond_7c

    aget-object v2, p0, v1

    if-eqz v2, :cond_79

    .line 304
    invoke-interface {v2, v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->dump(Ljava/io/PrintWriter;)V

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_7c
    return-void
.end method

.method public getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;
    .registers 1

    .line 267
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    return-object p0
.end method

.method public getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    return-object p0
.end method

.method public getDozeBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    return-object p0
.end method

.method public getFollowerDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    return-object p0
.end method

.method public getOffloadBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;
    .registers 1

    .line 246
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    return-object p0
.end method

.method public getOverrideBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;
    .registers 1

    .line 271
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    return-object p0
.end method

.method public getTemporaryDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    return-object p0
.end method

.method public isAllowAutoBrightnessWhileDozing()Z
    .registers 1

    .line 254
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    return p0
.end method

.method public isAllowAutoBrightnessWhileDozingConfig()Z
    .registers 1

    .line 262
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    return p0
.end method

.method public final isAutoBrightnessFallbackStrategyValid()Z
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    if-eqz v0, :cond_20

    .line 323
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    .line 324
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->isValid()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final isAutomaticBrightnessStrategyValid(Lcom/android/server/display/brightness/StrategySelectionRequest;)Z
    .registers 11

    .line 329
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 330
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getTargetDisplayState()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    .line 333
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    iget v4, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 334
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v3

    iget-boolean v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    .line 335
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getLastUserSetScreenBrightness()F

    move-result v6

    .line 336
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isUserSetBrightnessChanged()Z

    move-result v7

    .line 337
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isWearBedtimeModeEnabled()Z

    move-result v8

    const/4 v3, 0x0

    .line 329
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->setAutoBrightnessState(IZIIZFZZ)V

    .line 338
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->isStylusBeingUsed()Z

    move-result p1

    if-nez p1, :cond_34

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    .line 339
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;->isAutoBrightnessValid()Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    return p0

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public onDisplayChanged(Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 2

    .line 283
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getDozeBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    move-result-object p0

    .line 284
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultDozeBrightness()F

    move-result p1

    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result p1

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->setDefaultDozeBrightness(F)V

    return-void
.end method

.method public final postProcess(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .registers 5

    .line 357
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayBrightnessStrategies:[Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    if-eqz v2, :cond_d

    .line 359
    invoke-interface {v2, p1}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method public selectStrategy(Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;
    .registers 7

    .line 177
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mInvalidBrightnessStrategy:Lcom/android/server/display/brightness/strategy/InvalidBrightnessStrategy;

    .line 178
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getTargetDisplayState()I

    move-result v1

    .line 180
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v2

    .line 181
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategySelectionRequest;->getDisplayOffloadSession()Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    move-result-object v3

    iget-boolean v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    invoke-virtual {p0, v3, v4}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->setAllowAutoBrightnessWhileDozing(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;Z)V

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1a

    .line 184
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mScreenOffBrightnessStrategy:Lcom/android/server/display/brightness/strategy/ScreenOffBrightnessStrategy;

    goto/16 :goto_9f

    .line 185
    :cond_1a
    invoke-virtual {p0, v2, v1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->shouldUseDozeBrightnessStrategy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 186
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDozeBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;

    goto/16 :goto_9f

    .line 187
    :cond_24
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    .line 188
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->getBrightnessToFollow()F

    move-result v1

    .line 187
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 189
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFollowerBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    goto/16 :goto_9f

    .line 190
    :cond_34
    iget-boolean v1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v1, :cond_3b

    .line 191
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mBoostBrightnessStrategy:Lcom/android/server/display/brightness/strategy/BoostBrightnessStrategy;

    goto :goto_9f

    .line 192
    :cond_3b
    iget v1, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-nez v1, :cond_9d

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    .line 195
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->getWindowManagerBrightnessOverride()F

    move-result v1

    .line 194
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_9d

    .line 197
    :cond_50
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    .line 198
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->getTemporaryScreenBrightness()F

    move-result v1

    .line 197
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 199
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mTemporaryBrightnessStrategy:Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    goto :goto_9f

    .line 200
    :cond_5f
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->isAutomaticBrightnessStrategyValid(Lcom/android/server/display/brightness/StrategySelectionRequest;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 202
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy1:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy;

    goto :goto_9f

    .line 203
    :cond_70
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    if-eqz v1, :cond_89

    .line 205
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->getOffloadScreenBrightness()F

    move-result v1

    .line 204
    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 206
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOffloadBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    goto :goto_9f

    .line 207
    :cond_89
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->isAutoBrightnessFallbackStrategyValid()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 208
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    goto :goto_9f

    .line 212
    :cond_92
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 213
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mFallbackBrightnessStrategy:Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;

    goto :goto_9f

    .line 196
    :cond_9d
    :goto_9d
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    .line 217
    :cond_9f
    :goto_9f
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 218
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->constructStrategySelectionNotifyRequest(Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->postProcess(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V

    .line 222
    :cond_ae
    iget-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ee

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing the DisplayBrightnessStrategy from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for display "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    const-string v1, "DisplayBrightnessStrategySelector"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-interface {v0}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOldBrightnessStrategyName:Ljava/lang/String;

    :cond_ee
    return-object v0
.end method

.method public setAllowAutoBrightnessWhileDozing(Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;Z)V
    .registers 4

    .line 313
    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    if-nez p2, :cond_19

    .line 314
    iget-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result p2

    if-eqz p2, :cond_19

    if-eqz p1, :cond_19

    .line 316
    iget-boolean p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    invoke-interface {p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;->allowAutoBrightnessInDoze()Z

    move-result p1

    and-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozing:Z

    :cond_19
    return-void
.end method

.method public final shouldUseDozeBrightnessStrategy(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;I)Z
    .registers 6

    .line 375
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v0, :cond_e

    return v1

    .line 385
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mContext:Landroid/content/Context;

    .line 386
    invoke-virtual {v0, v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    if-eqz v0, :cond_26

    .line 387
    invoke-static {p2}, Landroid/view/Display;->isDozeState(I)Z

    move-result p2

    if-eqz p2, :cond_24

    goto :goto_26

    :cond_24
    move p2, v1

    goto :goto_27

    :cond_26
    :goto_26
    move p2, v2

    .line 392
    :goto_27
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDozeBrightnessStrategyEnabled()Z

    move-result p0

    if-nez p0, :cond_3a

    iget p0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 393
    invoke-static {p0}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_3a

    :cond_38
    move p0, v1

    goto :goto_3b

    :cond_3a
    :goto_3a
    move p0, v2

    .line 399
    :goto_3b
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne p1, v2, :cond_44

    if-eqz p2, :cond_44

    if-eqz p0, :cond_44

    return v2

    :cond_44
    return v1
.end method
