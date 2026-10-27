.class public Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
.super Ljava/lang/Object;
.source "ColorDisplayService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 2

    .line 1611
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyEvenDimmerColorChanges(ZI)V
    .registers 4

    .line 1727
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fputmEvenDimmerActivated(Lcom/android/server/display/color/ColorDisplayService;Z)V

    .line 1728
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmReduceBrightColorsTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ReduceBrightColorsTintController;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 1729
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmReduceBrightColorsTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ReduceBrightColorsTintController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->setMatrix(I)V

    .line 1730
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public attachColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z
    .registers 4

    .line 1719
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmAppSaturationController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/AppSaturationController;

    move-result-object p0

    .line 1720
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/color/AppSaturationController;->addColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public final createNitsToStrengthSpline(F)Landroid/util/Spline;
    .registers 7

    const/16 v0, 0x65

    .line 1757
    new-array v1, v0, [F

    .line 1758
    new-array v0, v0, [F

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0x64

    if-gt v2, v3, :cond_20

    rsub-int/lit8 v3, v2, 0x64

    int-to-float v4, v2

    .line 1760
    aput v4, v0, v3

    .line 1762
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->getAdjustedNitsForStrength(FI)F

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x0

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1d

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1767
    :cond_20
    new-instance p0, Landroid/util/Spline$LinearSpline;

    invoke-direct {p0, v1, v0}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    return-object p0
.end method

.method public fetchEvenDimmerSpline(F)Landroid/util/Spline;
    .registers 3

    .line 1744
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmEvenDimmerSpline(Lcom/android/server/display/color/ColorDisplayService;)Landroid/util/Spline;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1745
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->createNitsToStrengthSpline(F)Landroid/util/Spline;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fputmEvenDimmerSpline(Lcom/android/server/display/color/ColorDisplayService;Landroid/util/Spline;)V

    .line 1747
    :cond_11
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmEvenDimmerSpline(Lcom/android/server/display/color/ColorDisplayService;)Landroid/util/Spline;

    move-result-object p0

    return-object p0
.end method

.method public getAdjustedNitsForStrength(FI)F
    .registers 3

    .line 1673
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmReduceBrightColorsTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ReduceBrightColorsTintController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->getAdjustedNitsForStrength(FI)F

    move-result p0

    return p0
.end method

.method public getDisplayWhiteBalanceLuminance()F
    .registers 1

    .line 1638
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->getLuminance()F

    move-result p0

    return p0
.end method

.method public getReduceBrightColorsActivatedForEvenDimmer()Z
    .registers 1

    .line 1700
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmEvenDimmerActivated(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result p0

    return p0
.end method

.method public getReduceBrightColorsAdjustedBrightnessNits(F)F
    .registers 2

    .line 1710
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmReduceBrightColorsTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ReduceBrightColorsTintController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->getAdjustedBrightness(F)F

    move-result p0

    return p0
.end method

.method public getReduceBrightColorsStrength()I
    .registers 1

    .line 1692
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmReduceBrightColorsTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ReduceBrightColorsTintController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->getStrength()I

    move-result p0

    return p0
.end method

.method public isDisplayWhiteBalanceEnabled()Z
    .registers 1

    .line 1663
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$misDisplayWhiteBalanceSettingEnabled(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result p0

    return p0
.end method

.method public isReduceBrightColorsActivated()Z
    .registers 1

    .line 1688
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmReduceBrightColorsTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ReduceBrightColorsTintController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->isActivated()Z

    move-result p0

    return p0
.end method

.method public resetDisplayWhiteBalanceColorTemperature()Z
    .registers 4

    .line 1645
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0091

    .line 1646
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetDisplayWhiteBalanceColorTemperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorDisplayService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->setDisplayWhiteBalanceColorTemperature(I)Z

    move-result p0

    return p0
.end method

.method public setDisplayWhiteBalanceAllowed(Z)V
    .registers 3

    .line 1615
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setAllowed(Z)V

    .line 1616
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    return-void
.end method

.method public setDisplayWhiteBalanceColorTemperature(I)Z
    .registers 3

    .line 1627
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, v0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setTargetCct(I)V

    .line 1629
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p1, p1, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1630
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public setDisplayWhiteBalanceListener(Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;)Z
    .registers 3

    .line 1655
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fputmDisplayWhiteBalanceListener(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;)V

    .line 1656
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result p0

    return p0
.end method

.method public setReduceBrightColorsListener(Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;)Z
    .registers 3

    .line 1680
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fputmReduceBrightColorsListener(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$ReduceBrightColorsListener;)V

    .line 1681
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$fgetmReduceBrightColorsTintController(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ReduceBrightColorsTintController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/color/ReduceBrightColorsTintController;->isActivated()Z

    move-result p0

    return p0
.end method
