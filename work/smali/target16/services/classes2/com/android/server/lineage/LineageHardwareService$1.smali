.class public Lcom/android/server/lineage/LineageHardwareService$1;
.super Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;
.source "LineageHardwareService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lineage/LineageHardwareService;


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/LineageHardwareService;)V
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-direct {p0}, Lcom/android/internal/lineage/hardware/ILineageHardwareService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Z
    .registers 5

    .line 369
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 372
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 375
    :cond_31
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->get(I)Z

    move-result p0

    return p0
.end method

.method public getColorBalance()I
    .registers 4

    .line 503
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x20000

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 506
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->getColorBalance()I

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public getColorBalanceMax()I
    .registers 4

    .line 493
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x20000

    .line 495
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 496
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->getColorBalanceMax()I

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public getColorBalanceMin()I
    .registers 4

    .line 483
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x20000

    .line 485
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 486
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->getColorBalanceMin()I

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 4

    .line 450
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2000

    .line 452
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 453
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Display modes are not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 456
    :cond_1e
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->getCurrentDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 4

    .line 461
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2000

    .line 463
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 464
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Display modes are not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 467
    :cond_1e
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->getDefaultDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 7

    .line 533
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x40000

    .line 535
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 536
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p0

    return-object p0

    .line 538
    :cond_1f
    new-instance v0, Lcom/android/internal/lineage/hardware/HSIC;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/lineage/hardware/HSIC;-><init>(FFFFF)V

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .registers 4

    .line 391
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 394
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Display color calibration is not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 397
    :cond_1d
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->getDisplayColorCalibration()[I

    move-result-object p0

    return-object p0
.end method

.method public getDisplayModes()[Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 4

    .line 439
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2000

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 442
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Display modes are not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 445
    :cond_1e
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->getDisplayModes()[Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object p0

    return-object p0
.end method

.method public getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 7

    .line 523
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x40000

    .line 525
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 526
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p0

    return-object p0

    .line 528
    :cond_1f
    new-instance v0, Lcom/android/internal/lineage/hardware/HSIC;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/lineage/hardware/HSIC;-><init>(FFFFF)V

    return-object v0
.end method

.method public getPictureAdjustmentRanges()[F
    .registers 16

    .line 553
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x40000

    .line 555
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_e3

    .line 556
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 558
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x1

    .line 559
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x2

    .line 560
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Range;

    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    const/4 v10, 0x3

    .line 561
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Range;

    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Range;

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    const/4 v13, 0x4

    .line 562
    invoke-interface {p0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Range;

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface {p0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    new-array v1, v1, [F

    aput v2, v1, v0

    aput v3, v1, v4

    aput v5, v1, v7

    aput v6, v1, v10

    aput v8, v1, v13

    const/4 v0, 0x5

    aput v9, v1, v0

    const/4 v0, 0x6

    aput v11, v1, v0

    const/4 v0, 0x7

    aput v12, v1, v0

    const/16 v0, 0x8

    aput v14, v1, v0

    const/16 v0, 0x9

    aput p0, v1, v0

    return-object v1

    .line 564
    :cond_e3
    new-array p0, v1, [F

    return-object p0
.end method

.method public getSupportedFeatures()I
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->getSupportedFeatures()I

    move-result p0

    return p0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .registers 4

    .line 428
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x100

    .line 430
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 431
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Sunlight enhancement is not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 434
    :cond_1f
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->isSunlightEnhancementSelfManaged()Z

    move-result p0

    return p0
.end method

.method public final isSupported(I)Z
    .registers 2

    .line 357
    invoke-virtual {p0}, Lcom/android/server/lineage/LineageHardwareService$1;->getSupportedFeatures()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .registers 4

    .line 417
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x100

    .line 419
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 420
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Sunlight enhancement is not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 423
    :cond_1f
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result p0

    return p0
.end method

.method public set(IZ)Z
    .registers 6

    .line 380
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 383
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "feature "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 386
    :cond_31
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->set(IZ)Z

    move-result p0

    return p0
.end method

.method public setColorBalance(I)Z
    .registers 5

    .line 513
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x20000

    .line 515
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 516
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->setColorBalance(I)Z

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public setDisplayColorCalibration([I)Z
    .registers 5

    .line 402
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 405
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Display color calibration is not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 408
    :cond_1e
    array-length v0, p1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2c

    .line 409
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid color calibration"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 412
    :cond_2c
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->setDisplayColorCalibration([I)Z

    move-result p0

    return p0
.end method

.method public setDisplayMode(Lcom/android/internal/lineage/hardware/DisplayMode;Z)Z
    .registers 6

    .line 472
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2000

    .line 474
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 475
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Display modes are not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 478
    :cond_1f
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->setDisplayMode(Lcom/android/internal/lineage/hardware/DisplayMode;Z)Z

    move-result p0

    return p0
.end method

.method public setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z
    .registers 5

    .line 543
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x40000

    .line 545
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    .line 546
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$1;->this$0:Lcom/android/server/lineage/LineageHardwareService;

    invoke-static {p0}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmLineageHwImpl(Lcom/android/server/lineage/LineageHardwareService;)Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;->setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z

    move-result p0

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method
