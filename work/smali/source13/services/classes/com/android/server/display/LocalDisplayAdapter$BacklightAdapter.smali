.class Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BacklightAdapter"
.end annotation


# instance fields
.field private final mBacklight:Lcom/android/server/lights/LogicalLight;

.field private final mDisplayToken:Landroid/os/IBinder;

.field private mForceSurfaceControl:Z

.field private mIsSubDisplay:Z

.field private final mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

.field private final mUseSurfaceControlBrightness:Z


# direct methods
.method constructor <init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)V
    .registers 7
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "isFirstDisplay"    # Z
    .param p3, "surfaceControlProxy"    # Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 1618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 1619
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    .line 1620
    iput-object p3, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    .line 1622
    nop

    .line 1623
    invoke-virtual {p3, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    .line 1625
    if-nez v1, :cond_24

    if-eqz p2, :cond_24

    .line 1626
    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    .line 1627
    .local v1, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v1, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    .line 1628
    .end local v1    # "lights":Lcom/android/server/lights/LightsManager;
    goto :goto_27

    .line 1629
    :cond_24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    .line 1632
    :goto_27
    if-nez p2, :cond_35

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v2, "star"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v0, 0x1

    :cond_35
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mIsSubDisplay:Z

    .line 1633
    return-void
.end method


# virtual methods
.method setBacklight(FFFF)V
    .registers 13
    .param p1, "sdrBacklight"    # F
    .param p2, "sdrNits"    # F
    .param p3, "backlight"    # F
    .param p4, "nits"    # F

    .line 1639
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mIsSubDisplay:Z

    if-eqz v0, :cond_d

    goto :goto_15

    .line 1647
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    if-eqz v0, :cond_30

    .line 1648
    invoke-virtual {v0, p3}, Lcom/android/server/lights/LogicalLight;->setBrightness(F)V

    goto :goto_30

    .line 1640
    :cond_15
    :goto_15
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {p1, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1642
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    goto :goto_30

    .line 1644
    :cond_25
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayBrightness(Landroid/os/IBinder;FFFF)Z

    .line 1650
    :cond_30
    :goto_30
    return-void
.end method

.method setBacklight(FFFFZF)V
    .registers 18
    .param p1, "sdrBacklight"    # F
    .param p2, "sdrNits"    # F
    .param p3, "backlight"    # F
    .param p4, "nits"    # F
    .param p5, "galleryHdrBoost"    # Z
    .param p6, "galleryHdrFactor"    # F

    .line 1655
    move-object v0, p0

    move v9, p3

    iget-boolean v1, v0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    if-nez v1, :cond_1a

    iget-boolean v1, v0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    if-nez v1, :cond_1a

    iget-boolean v1, v0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mIsSubDisplay:Z

    if-eqz v1, :cond_f

    goto :goto_1a

    .line 1663
    :cond_f
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    if-eqz v1, :cond_18

    .line 1664
    invoke-virtual {v1, p3}, Lcom/android/server/lights/LogicalLight;->setBrightness(F)V

    move v10, p1

    goto :goto_3a

    .line 1663
    :cond_18
    move v10, p1

    goto :goto_3a

    .line 1656
    :cond_1a
    :goto_1a
    const/high16 v1, 0x7fc00000    # Float.NaN

    move v10, p1

    invoke-static {p1, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1658
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, p3}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    goto :goto_3a

    .line 1660
    :cond_2b
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mDisplayToken:Landroid/os/IBinder;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayBrightness(Landroid/os/IBinder;FFFFZF)Z

    .line 1666
    :goto_3a
    return-void
.end method

.method setForceSurfaceControl(Z)V
    .registers 2
    .param p1, "forceSurfaceControl"    # Z

    .line 1675
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    .line 1676
    return-void
.end method

.method setVrMode(Z)V
    .registers 3
    .param p1, "isVrModeEnabled"    # Z

    .line 1669
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    if-eqz v0, :cond_7

    .line 1670
    invoke-virtual {v0, p1}, Lcom/android/server/lights/LogicalLight;->setVrMode(Z)V

    .line 1672
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BacklightAdapter [useSurfaceControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (force_anyway? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), backlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mBacklight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
