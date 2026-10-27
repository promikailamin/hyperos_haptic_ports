.class public Lcom/android/server/lineage/display/LiveDisplayService$2;
.super Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;
.source "LiveDisplayService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/display/LiveDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/display/LiveDisplayService;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/ILiveDisplayService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 356
    iget-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p1}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "android.permission.DUMP"

    const-string v0, "LiveDisplay"

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 359
    const-string p1, "LiveDisplay Service State:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p3}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmState(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$State;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/lineage/display/LiveDisplayService$State;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mConfig="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p3}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmConfig(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/lineage/hardware/LiveDisplayConfig;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mAwaitingNudge="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p3}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmAwaitingNudge(Lcom/android/server/lineage/display/LiveDisplayService;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 364
    :goto_6c
    iget-object p3, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p3}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmFeatures(Lcom/android/server/lineage/display/LiveDisplayService;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_8a

    .line 365
    iget-object p3, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p3}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmFeatures(Lcom/android/server/lineage/display/LiveDisplayService;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/lineage/display/LiveDisplayFeature;

    invoke-virtual {p3, p2}, Lcom/android/server/lineage/display/LiveDisplayFeature;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6c

    :cond_8a
    return-void
.end method

.method public getColorAdjustment()[F
    .registers 1

    .line 256
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmDHC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/DisplayHardwareController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object p0

    return-object p0
.end method

.method public getColorTemperature()I
    .registers 1

    .line 342
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmCTC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/ColorTemperatureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->getColorTemperature()I

    move-result p0

    return p0
.end method

.method public getConfig()Lcom/android/internal/lineage/hardware/LiveDisplayConfig;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmConfig(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object p0

    return-object p0
.end method

.method public getDayColorTemperature()I
    .registers 1

    .line 316
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmCTC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/ColorTemperatureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result p0

    return p0
.end method

.method public getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 1

    .line 352
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmPAC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/PictureAdjustmentController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p0

    return-object p0
.end method

.method public getMode()I
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmConfig(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmConfig(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/lineage/hardware/LiveDisplayConfig;->hasModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 238
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmModeObserver(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public getNightColorTemperature()I
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmCTC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/ColorTemperatureController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result p0

    return p0
.end method

.method public getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 1

    .line 346
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmPAC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/PictureAdjustmentController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/PictureAdjustmentController;->getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p0

    return-object p0
.end method

.method public isAntiFlickerEnabled()Z
    .registers 1

    .line 377
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmDHC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/DisplayHardwareController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->isAntiFlickerEnabled()Z

    move-result p0

    return p0
.end method

.method public isAutoContrastEnabled()Z
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmDHC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/DisplayHardwareController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result p0

    return p0
.end method

.method public isAutomaticOutdoorModeEnabled()Z
    .registers 1

    .line 304
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmOMC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/OutdoorModeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isCABCEnabled()Z
    .registers 1

    .line 280
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmDHC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/DisplayHardwareController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result p0

    return p0
.end method

.method public isColorEnhancementEnabled()Z
    .registers 1

    .line 292
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmDHC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/DisplayHardwareController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result p0

    return p0
.end method

.method public isNight()Z
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmTwilightTracker(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/TwilightTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/lineage/display/TwilightTracker;->getCurrentState()Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 372
    invoke-virtual {p0}, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->isNight()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public setAntiFlickerEnabled(Z)Z
    .registers 5

    .line 382
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmDHC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/DisplayHardwareController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/DisplayHardwareController;->setAntiFlickerEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setAutoContrastEnabled(Z)Z
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmDHC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/DisplayHardwareController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/DisplayHardwareController;->setAutoContrastEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setAutomaticOutdoorModeEnabled(Z)Z
    .registers 5

    .line 309
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmOMC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/OutdoorModeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/OutdoorModeController;->setAutomaticOutdoorModeEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setCABCEnabled(Z)Z
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmDHC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/DisplayHardwareController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/DisplayHardwareController;->setCABCEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setColorAdjustment([F)Z
    .registers 5

    .line 261
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmDHC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/DisplayHardwareController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/DisplayHardwareController;->setColorAdjustment([F)Z

    move-result p0

    return p0
.end method

.method public setColorEnhancementEnabled(Z)Z
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmDHC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/DisplayHardwareController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/DisplayHardwareController;->setColorEnhancementEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setDayColorTemperature(I)Z
    .registers 5

    .line 321
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmCTC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/ColorTemperatureController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/ColorTemperatureController;->setDayColorTemperature(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setMode(I)Z
    .registers 5

    .line 246
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmConfig(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/internal/lineage/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/lineage/hardware/LiveDisplayConfig;->hasModeSupport()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    return p0

    .line 251
    :cond_1a
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmModeObserver(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/LiveDisplayService$ModeObserver;->setMode(I)Z

    move-result p0

    return p0
.end method

.method public setNightColorTemperature(I)Z
    .registers 5

    .line 334
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmCTC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/ColorTemperatureController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/ColorTemperatureController;->setNightColorTemperature(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z
    .registers 2

    .line 349
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$2;->this$0:Lcom/android/server/lineage/display/LiveDisplayService;

    invoke-static {p0}, Lcom/android/server/lineage/display/LiveDisplayService;->-$$Nest$fgetmPAC(Lcom/android/server/lineage/display/LiveDisplayService;)Lcom/android/server/lineage/display/PictureAdjustmentController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/PictureAdjustmentController;->setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z

    move-result p0

    return p0
.end method
