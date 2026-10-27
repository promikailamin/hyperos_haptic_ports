.class public Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;
.super Ljava/lang/Object;
.source "HdrBrightnessModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;


# instance fields
.field public mAmbientLux:F

.field public final mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mDebouncer:Ljava/lang/Runnable;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Landroid/os/Handler;

.field public mHdrBrightnessBoostLevel:F

.field public mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

.field public mHdrBrightnessEnabled:Z

.field public mHdrLayerSize:F

.field public final mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

.field public final mHdrOverrideListener:Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;

.field public final mHdrSettingsObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;

.field public final mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

.field public mLowPowerMode:Z

.field public final mLowPowerModeSettingObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;

.field public mMaxBrightness:F

.field public mMaxDesiredHdrRatio:F

.field public mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

.field public mPendingMaxBrightness:F

.field public mPendingTransitionRate:F

.field public mRegisteredDisplayToken:Landroid/os/IBinder;

.field public mRegisteredUniqueDisplayId:Ljava/lang/String;

.field public mScreenSize:F

.field public mTransitionRate:F


# direct methods
.method public static synthetic $r8$lambda$WMdE1pH9-xTj-nE01JzyyBO_rH0(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$bPyCPpEw8kWC_aSHq_ULgOQp-kk(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmClamperChangeListener(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdrBoostOverride(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/plugin/types/HdrBoostOverride;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdrBrightnessData(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/config/HdrBrightnessData;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHdrBrightnessBoostLevel(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessBoostLevel:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHdrBrightnessEnabled(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLowPowerMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTransitionRate(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$misNbmOrHbmHdr(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->isNbmOrHbmHdr()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monHdrBoostOverride(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/plugin/types/HdrBoostOverride;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->onHdrBoostOverride(Lcom/android/server/display/plugin/types/HdrBoostOverride;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monHdrInfoChanged(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;FF)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->onHdrInfoChanged(FF)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrecalculateMode(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/config/HdrBrightnessData;Lcom/android/server/display/plugin/types/HdrBoostOverride;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;Lcom/android/server/display/plugin/types/HdrBoostOverride;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 8

    move-object v0, p1

    .line 120
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p4

    new-instance p4, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    invoke-direct {p4, p2, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;-><init>(Landroid/content/Context;Lcom/android/server/display/plugin/PluginManager;)V

    move-object p2, p3

    move-object p3, p5

    move-object p5, p6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 9

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$1;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

    .line 71
    new-instance v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$2;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrOverrideListener:Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 96
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    .line 98
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    const/4 v2, 0x0

    .line 100
    iput-boolean v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    .line 104
    sget-object v2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    iput-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 106
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    .line 107
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    .line 109
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 110
    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessEnabled:Z

    .line 113
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessBoostLevel:F

    .line 128
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 129
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    .line 130
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 131
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    .line 132
    new-instance p2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;)V

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    .line 137
    new-instance p2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerModeSettingObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;

    .line 138
    new-instance p2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrSettingsObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;

    .line 139
    new-instance p2, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p5}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 134
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    .line 135
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 2

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .registers 7

    .line 146
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-nez p1, :cond_5

    goto :goto_4a

    .line 149
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne p1, v0, :cond_c

    goto :goto_4a

    .line 152
    :cond_c
    sget-object p1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->isNbmOrHbmHdr()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 163
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 164
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->getRatioScaleFactor()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget-object v3, v3, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    .line 163
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(FFFLandroid/util/Spline;)F

    move-result p1

    .line 166
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->getMaxBrightness(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;FLcom/android/server/display/config/HdrBrightnessData;)F

    move-result v0

    .line 167
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 169
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setHdrBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 170
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setCustomAnimationRate(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 171
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 173
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    :cond_4a
    :goto_4a
    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .registers 5

    .line 275
    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 278
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->isNbmOrHbmHdr()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-eqz v0, :cond_24

    .line 279
    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    iput v1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxDesiredHdrRatio:F

    .line 280
    iget-object v1, v0, Lcom/android/server/display/config/HdrBrightnessData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    iput-object v1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mSdrHdrRatioSpline:Landroid/util/Spline;

    .line 281
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    iget v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->getMaxBrightness(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;FLcom/android/server/display/config/HdrBrightnessData;)F

    move-result v0

    iput v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxHdrBrightness:F

    .line 283
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->getRatioScaleFactor()F

    move-result p0

    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mHdrRatioScaleFactor:F

    :cond_24
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 179
    const-string v0, "HdrBrightnessModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrBrightnessData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mScreenSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxDesiredHdrRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrLayerSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTransitionRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingTransitionRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrListener registered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_109

    move v1, v3

    goto :goto_10a

    :cond_109
    move v1, v2

    :goto_10a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrOverrideListener registered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredUniqueDisplayId:Ljava/lang/String;

    if-eqz v1, :cond_123

    move v2, v3

    :cond_123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLowPowerModeSettingObserver.mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerModeSettingObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;

    iget-boolean v1, v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrSettingsObserver.mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrSettingsObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;

    iget-boolean v1, v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrBrightnessEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrBrightnessBoostLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessBoostLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ratioScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->getRatioScaleFactor()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  mHdrBoostOverride="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findBrightnessLimit(Lcom/android/server/display/config/HdrBrightnessData;F)F
    .registers 7

    const/high16 p0, 0x3f800000    # 1.0f

    if-nez p1, :cond_5

    return p0

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_c

    return p0

    .line 390
    :cond_c
    iget-object p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :cond_19
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 391
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v3, v2, p2

    if-lez v3, :cond_19

    cmpg-float v3, v2, v0

    if-gez v3, :cond_19

    .line 394
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    move v0, v2

    goto :goto_19

    :cond_43
    return p0
.end method

.method public final getMaxBrightness(Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;FLcom/android/server/display/config/HdrBrightnessData;)F
    .registers 4

    .line 370
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne p1, p0, :cond_b

    .line 371
    iget p0, p3, Lcom/android/server/display/config/HdrBrightnessData;->hbmTransitionPoint:F

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    .line 372
    :cond_b
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->HBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne p1, p0, :cond_10

    return p2

    :cond_10
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final getRatioScaleFactor()F
    .registers 2

    .line 462
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isHdrBrightnessSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 463
    iget p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessBoostLevel:F

    invoke-static {p0}, Lcom/android/internal/display/BrightnessUtils;->convertGammaToLinear(F)F

    move-result p0

    return p0

    :cond_f
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final hasBrightnessLimits()Z
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isNbmOrHbmHdr()Z
    .registers 2

    .line 467
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->HBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .registers 5

    .line 236
    iget-object v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 237
    iget v1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mWidth:I

    int-to-float v1, v1

    iget v2, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mScreenSize:F

    .line 238
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessData()Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 240
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterHdrListener()V

    .line 241
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterHdrBoostOverrideListener()V

    .line 242
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrSettingsObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->unregister()V

    goto :goto_38

    .line 244
    :cond_1f
    iget-object v1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->registerHdrListener(Landroid/os/IBinder;)V

    .line 245
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getUniqueDisplayId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->registerHdrBoostOverrideListener(Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isHdrBrightnessSettingEnabled()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 247
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrSettingsObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->register()V

    :cond_38
    :goto_38
    if-eqz v0, :cond_45

    .line 250
    iget-boolean p1, v0, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    if-eqz p1, :cond_3f

    goto :goto_45

    .line 253
    :cond_3f
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerModeSettingObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->register()V

    goto :goto_4a

    .line 251
    :cond_45
    :goto_45
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerModeSettingObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->unregister()V

    :goto_4a
    const/4 p1, 0x0

    .line 256
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;Lcom/android/server/display/plugin/types/HdrBoostOverride;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object p1

    .line 258
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne v1, p1, :cond_60

    .line 259
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->isNbmOrHbmHdr()Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-eq v0, v1, :cond_5e

    goto :goto_60

    :cond_5e
    const/4 v1, 0x0

    goto :goto_61

    :cond_60
    :goto_60
    const/4 v1, 0x1

    .line 260
    :goto_61
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 261
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 262
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->findBrightnessLimit(Lcom/android/server/display/config/HdrBrightnessData;F)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    if-eqz v1, :cond_78

    const/high16 p1, -0x40800000    # -1.0f

    .line 266
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 267
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_78
    return-void
.end method

.method public final onHdrBoostOverride(Lcom/android/server/display/plugin/types/HdrBoostOverride;)V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;Lcom/android/server/display/plugin/types/HdrBoostOverride;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object p1

    .line 290
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne p1, v0, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    .line 292
    :goto_d
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-eqz v0, :cond_16

    .line 298
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_16
    return-void
.end method

.method public final onHdrInfoChanged(FF)V
    .registers 4

    .line 403
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    .line 404
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;Lcom/android/server/display/plugin/types/HdrBoostOverride;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    move-result-object p1

    .line 406
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    if-ne v0, p1, :cond_1e

    .line 407
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->isNbmOrHbmHdr()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    .line 408
    invoke-static {v0, p2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    .line 409
    :goto_1f
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMode:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    .line 410
    iput p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxDesiredHdrRatio:F

    if-eqz v0, :cond_2e

    const/high16 p1, -0x40800000    # -1.0f

    .line 412
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 413
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_2e
    return-void
.end method

.method public final recalculateMode(Lcom/android/server/display/config/HdrBrightnessData;Lcom/android/server/display/plugin/types/HdrBoostOverride;)Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;
    .registers 5

    if-nez p1, :cond_5

    .line 335
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0

    .line 338
    :cond_5
    iget p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_10

    .line 339
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0

    .line 342
    :cond_10
    iget-boolean v0, p1, Lcom/android/server/display/config/HdrBrightnessData;->allowInLowPowerMode:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerMode:Z

    if-eqz v0, :cond_1b

    .line 343
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0

    .line 346
    :cond_1b
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mScreenSize:F

    iget v1, p1, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForNbm:F

    mul-float/2addr v1, v0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_27

    .line 347
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0

    .line 350
    :cond_27
    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessEnabled:Z

    if-nez p0, :cond_2e

    .line 351
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NO_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0

    .line 362
    :cond_2e
    iget p0, p1, Lcom/android/server/display/config/HdrBrightnessData;->minimumHdrPercentOfScreenForHbm:F

    mul-float/2addr v0, p0

    cmpg-float p0, p2, v0

    if-gez p0, :cond_38

    .line 363
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->NBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0

    .line 366
    :cond_38
    sget-object p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;->HBM_HDR:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Mode;

    return-object p0
.end method

.method public final registerHdrBoostOverrideListener(Ljava/lang/String;)V
    .registers 4

    .line 440
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredUniqueDisplayId:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_17

    .line 443
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterHdrBoostOverrideListener()V

    if-eqz p1, :cond_17

    .line 445
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrOverrideListener:Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->registerHdrBoostOverrideListener(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    .line 446
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredUniqueDisplayId:Ljava/lang/String;

    :cond_17
    :goto_17
    return-void
.end method

.method public final registerHdrListener(Landroid/os/IBinder;)V
    .registers 4

    .line 419
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-ne v0, p1, :cond_5

    goto :goto_13

    .line 422
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterHdrListener()V

    if-eqz p1, :cond_13

    .line 424
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->registerHdrListener(Landroid/view/SurfaceControlHdrLayerInfoListener;Landroid/os/IBinder;)V

    .line 425
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    :cond_13
    :goto_13
    return-void
.end method

.method public final scheduleMaxBrightnessUpdate(FLcom/android/server/display/config/HdrBrightnessData;)V
    .registers 5

    .line 307
    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_16

    .line 308
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 309
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    .line 310
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mTransitionRate:F

    .line 311
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 312
    :cond_16
    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_3d

    .line 313
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingMaxBrightness:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_29

    .line 316
    iget-wide v0, p2, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    .line 317
    iget p1, p2, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    goto :goto_2f

    .line 319
    :cond_29
    iget-wide v0, p2, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    .line 320
    iget p1, p2, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mPendingTransitionRate:F

    .line 323
    :goto_2f
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mDebouncer:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3d
    return-void
.end method

.method public setAmbientLux(F)V
    .registers 3

    .line 221
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mAmbientLux:F

    .line 222
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->hasBrightnessLimits()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 225
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->findBrightnessLimit(Lcom/android/server/display/config/HdrBrightnessData;F)F

    move-result p1

    .line 226
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->isNbmOrHbmHdr()Z

    move-result v0

    if-nez v0, :cond_18

    .line 227
    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mMaxBrightness:F

    return-void

    .line 229
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->scheduleMaxBrightnessUpdate(FLcom/android/server/display/config/HdrBrightnessData;)V

    return-void
.end method

.method public shouldListenToLightSensor()Z
    .registers 1

    .line 215
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->hasBrightnessLimits()Z

    move-result p0

    return p0
.end method

.method public stop()V
    .registers 2

    .line 205
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterHdrListener()V

    .line 206
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->unregisterHdrBoostOverrideListener()V

    .line 207
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mLowPowerModeSettingObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$LowPowerModeSettingObserver;->unregister()V

    .line 208
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrSettingsObserver:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$HdrSettingsObserver;->unregister()V

    .line 209
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final unregisterHdrBoostOverrideListener()V
    .registers 4

    .line 452
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredUniqueDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 453
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrOverrideListener:Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->unregisterHdrBoostOverrideListener(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredUniqueDisplayId:Ljava/lang/String;

    :cond_e
    return-void
.end method

.method public final unregisterHdrListener()V
    .registers 4

    .line 431
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz v0, :cond_12

    .line 432
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mInjector:Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrListener:Landroid/view/SurfaceControlHdrLayerInfoListener;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier$Injector;->unregisterHdrListener(Landroid/view/SurfaceControlHdrLayerInfoListener;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mRegisteredDisplayToken:Landroid/os/IBinder;

    const/high16 v0, -0x40800000    # -1.0f

    .line 434
    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;->mHdrLayerSize:F

    :cond_12
    return-void
.end method
