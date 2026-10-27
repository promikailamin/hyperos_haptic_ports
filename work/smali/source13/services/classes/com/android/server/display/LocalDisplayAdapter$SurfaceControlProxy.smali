.class Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SurfaceControlProxy"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBootDisplayMode(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1567
    invoke-static {p1}, Landroid/view/SurfaceControl;->clearBootDisplayMode(Landroid/os/IBinder;)V

    .line 1568
    return-void
.end method

.method public getBootDisplayModeSupport()Z
    .registers 4

    .line 1554
    const-wide/16 v0, 0x20

    const-string v2, "getBootDisplayModeSupport"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1556
    :try_start_7
    invoke-static {}, Landroid/view/SurfaceControl;->getBootDisplayModeSupport()Z

    move-result v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 1558
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1556
    return v2

    .line 1558
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1559
    throw v2
.end method

.method public getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;
    .registers 3
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1537
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDesiredDisplayModeSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayBrightnessSupport(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1580
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1520
    invoke-static {p1}, Landroid/view/SurfaceControl;->getDynamicDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DynamicDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalDisplayIds()[J
    .registers 2

    .line 1524
    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalDisplayToken(J)Landroid/os/IBinder;
    .registers 4
    .param p1, "physicalDisplayId"    # J

    .line 1528
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;
    .registers 3
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 1532
    invoke-static {p1}, Landroid/view/SurfaceControl;->getStaticDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$StaticDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public setActiveColorMode(Landroid/os/IBinder;I)Z
    .registers 4
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "colorMode"    # I

    .line 1550
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setActiveColorMode(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method

.method public setAutoLowLatencyMode(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "on"    # Z

    .line 1571
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    .line 1573
    return-void
.end method

.method public setBootDisplayMode(Landroid/os/IBinder;I)V
    .registers 3
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "modeId"    # I

    .line 1563
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setBootDisplayMode(Landroid/os/IBinder;I)V

    .line 1564
    return-void
.end method

.method public setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "specs"    # Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    .line 1542
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result v0

    return v0
.end method

.method public setDisplayBrightness(Landroid/os/IBinder;F)Z
    .registers 4
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "brightness"    # F

    .line 1584
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    move-result v0

    return v0
.end method

.method public setDisplayBrightness(Landroid/os/IBinder;FFFF)Z
    .registers 7
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "sdrBacklight"    # F
    .param p3, "sdrNits"    # F
    .param p4, "displayBacklight"    # F
    .param p5, "displayNits"    # F

    .line 1589
    invoke-static {p1, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    move-result v0

    return v0
.end method

.method public setDisplayBrightness(Landroid/os/IBinder;FFFFZF)Z
    .registers 9
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "sdrBacklight"    # F
    .param p3, "sdrNits"    # F
    .param p4, "displayBacklight"    # F
    .param p5, "displayNits"    # F
    .param p6, "galleryHdrBoost"    # Z
    .param p7, "galleryHdrFactor"    # F

    .line 1597
    invoke-static/range {p1 .. p7}, Landroid/view/SurfaceControl;->setDisplayBrightnessWithDimLayer(Landroid/os/IBinder;FFFFZF)Z

    move-result v0

    return v0
.end method

.method public setDisplayPowerMode(Landroid/os/IBinder;I)V
    .registers 3
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "mode"    # I

    .line 1546
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 1547
    return-void
.end method

.method public setGameContentType(Landroid/os/IBinder;Z)V
    .registers 3
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "on"    # Z

    .line 1576
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setGameContentType(Landroid/os/IBinder;Z)V

    .line 1577
    return-void
.end method
