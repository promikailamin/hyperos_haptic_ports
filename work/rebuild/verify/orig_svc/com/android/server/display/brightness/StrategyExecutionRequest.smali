.class public final Lcom/android/server/display/brightness/StrategyExecutionRequest;
.super Ljava/lang/Object;
.source "StrategyExecutionRequest.java"


# instance fields
.field public final mCurrentScreenBrightness:F

.field public final mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

.field public final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mIsStylusBeingUsed:Z

.field public mUserSetBrightnessChanged:Z


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZZLandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 46
    iput p2, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    .line 47
    iput-boolean p3, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 48
    iput-boolean p4, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    .line 49
    iput-object p5, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 74
    instance-of v0, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 77
    :cond_6
    check-cast p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    .line 78
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    .line 79
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->getCurrentScreenBrightness()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 80
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->isUserSetBrightnessChanged()Z

    move-result v2

    if-ne v0, v2, :cond_36

    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    .line 81
    invoke-virtual {p1}, Lcom/android/server/display/brightness/StrategyExecutionRequest;->isStylusBeingUsed()Z

    move-result v2

    if-ne v0, v2, :cond_36

    iget-object p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    iget-object p1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    if-ne p0, p1, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    return v1
.end method

.method public getCurrentScreenBrightness()F
    .registers 1

    .line 57
    iget p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    return p0
.end method

.method public getDisplayPowerRequest()Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object p0
.end method

.method public getOffloadSession()Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayOffloadSession:Landroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 87
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isStylusBeingUsed()Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    return p0
.end method

.method public isUserSetBrightnessChanged()Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    return p0
.end method
