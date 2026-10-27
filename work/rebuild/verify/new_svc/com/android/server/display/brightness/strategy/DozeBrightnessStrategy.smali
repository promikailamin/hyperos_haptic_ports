.class public Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;
.super Ljava/lang/Object;
.source "DozeBrightnessStrategy.java"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mDefaultDozeBrightness:F

.field public final mDisplayId:I

.field public final mDozeScaleFactor:F

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mInjector:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy$Injector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;IF)V
    .registers 6

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 60
    iput p4, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mDisplayId:I

    .line 61
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1130007

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    iput p2, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mDozeScaleFactor:F

    .line 64
    iput p5, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mDefaultDozeBrightness:F

    if-nez p1, :cond_1e

    .line 65
    new-instance p1, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy$Injector;

    invoke-direct {p1}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy$Injector;-><init>()V

    :cond_1e
    iput-object p1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy$Injector;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;IF)V
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;-><init>(Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;IF)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 106
    const-string v0, "DozeBrightnessStrategy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeScaleFactor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mDozeScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultDozeBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mDefaultDozeBrightness:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getManualDozeBrightness(F)F
    .registers 2

    .line 127
    iget p0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mDozeScaleFactor:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 101
    const-string p0, "DozeBrightnessStrategy"

    return-object p0
.end method

.method public getReason()I
    .registers 1

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public setDefaultDozeBrightness(F)V
    .registers 2

    .line 131
    iput p1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mDefaultDozeBrightness:F

    return-void
.end method

.method public strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .registers 2

    .line 0
    return-void
.end method

.method public updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .registers 5

    .line 73
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v0

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 74
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    const/4 p1, 0x2

    .line 78
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {p1, v0, p0, v2}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0

    .line 81
    :cond_17
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 82
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getOffloadSession()Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 83
    iget-object v0, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mInjector:Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy$Injector;

    iget v1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy$Injector;->getBrightnessEvent(I)Lcom/android/server/display/brightness/BrightnessEvent;

    move-result-object v0

    const/4 v1, 0x4

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessEvent;->setFlags(I)V

    .line 85
    new-instance v1, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getCurrentScreenBrightness()F

    move-result p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->getManualDozeBrightness(F)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p1

    const/16 v1, 0xc

    .line 88
    invoke-virtual {p1, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setDisplayBrightnessStrategyName(Ljava/lang/String;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 90
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0

    .line 95
    :cond_5d
    iget p1, p0, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->mDefaultDozeBrightness:F

    .line 96
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/DozeBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    .line 95
    invoke-static {v0, p1, p0, v2}, Lcom/android/server/display/brightness/BrightnessUtils;->constructDisplayBrightnessState(IFLjava/lang/String;Z)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method
