.class public interface abstract Lcom/android/server/wm/DisplayRotationStub;
.super Ljava/lang/Object;
.source "DisplayRotationStub.java"


# direct methods
.method public static get()Lcom/android/server/wm/DisplayRotationStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/wm/DisplayRotationStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayRotationStub;

    return-object v0
.end method


# virtual methods
.method public addBootBlackCoverLayer()V
    .registers 1

    .line 28
    return-void
.end method

.method public checkBootBlackCoverLayer()V
    .registers 1

    .line 38
    return-void
.end method

.method public forceEnableSeamless(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public getBootSensorRotation()I
    .registers 2

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public getHoverModeRecommendRotation(Lcom/android/server/wm/DisplayContent;)I
    .registers 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 47
    const/4 v0, -0x1

    return v0
.end method

.method public hasBootBlackCoverLayer()Z
    .registers 2

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public immediatelyRemoveBootLayer()V
    .registers 1

    .line 41
    return-void
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 13
    return-void
.end method

.method public isOutPortrait()Z
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public needBootBlackCoverLayer()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public removeBootBlackCoverLayer()V
    .registers 1

    .line 31
    return-void
.end method

.method public resetProposedRotation()V
    .registers 1

    .line 59
    return-void
.end method

.method public shouldHoverModeEnableSensor(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public updateRotation(Lcom/android/server/wm/DisplayContent;I)V
    .registers 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "lastRotation"    # I

    .line 44
    return-void
.end method
