.class public interface abstract Lcom/android/server/display/DisplayManagerServiceStub;
.super Ljava/lang/Object;
.source "DisplayManagerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/display/DisplayManagerServiceStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/display/DisplayManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 61
    return-void
.end method

.method public getGalleryHdrBoostFactor(FF)F
    .registers 4
    .param p1, "sdrBacklight"    # F
    .param p2, "hdrBacklight"    # F

    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getIsResetRate()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxHbmBrightnessForPeak()F
    .registers 2

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public abstract init(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/display/LogicalDisplayMapper;)V
.end method

.method public isGalleryHdrEnable()Z
    .registers 2

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isInResolutionSwitchBlackList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isInResolutionSwitchProtectList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportPeakBrightness()Z
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public abstract noteDisplaySwapFinished()V
.end method

.method public notifyFinishDisplayTransitionLocked()V
    .registers 1

    .line 79
    return-void
.end method

.method public notifySystemBrightnessChange()V
    .registers 1

    .line 64
    return-void
.end method

.method public onBootCompleted()V
    .registers 1

    .line 67
    return-void
.end method

.method public abstract onEarlyInteractivityChange(Z)V
.end method

.method public onTransact(Landroid/os/Handler;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "displayControllerHandler"    # Landroid/os/Handler;
    .param p2, "code"    # I
    .param p3, "data"    # Landroid/os/Parcel;
    .param p4, "reply"    # Landroid/os/Parcel;
    .param p5, "flags"    # I

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public screenTurningOff()V
    .registers 1

    .line 73
    return-void
.end method

.method public screenTurningOn()V
    .registers 1

    .line 70
    return-void
.end method

.method public setDeviceStateLocked(I)V
    .registers 2
    .param p1, "state"    # I

    .line 76
    return-void
.end method

.method public settingBrightnessStartChange(F)V
    .registers 2
    .param p1, "brightness"    # F

    .line 84
    return-void
.end method

.method public temporaryBrightnessStartChange(F)V
    .registers 2
    .param p1, "brightness"    # F

    .line 81
    return-void
.end method

.method public abstract updateDeviceDisplayChanged(Lcom/android/server/display/DisplayDevice;I)V
.end method

.method public abstract updateResolutionSwitchList(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
