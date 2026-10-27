.class public Landroid/util/GMSDownscaleStub;
.super Ljava/lang/Object;
.source "GMSDownscaleStub.java"


# static fields
.field public static final blacklist STATE_DOWNSCALE_CLOSED:I = -0x1

.field public static final blacklist STATE_DOWNSCALE_NORMAL:I = 0x1

.field private static final blacklist sInstance:Landroid/util/GMSDownscaleStub;

.field public static blacklist sIsMiuiWindowDownScale:Z


# instance fields
.field blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    .line 26
    const-class v0, Landroid/util/GMSDownscaleStub;

    .line 27
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/GMSDownscaleStub;

    sput-object v0, Landroid/util/GMSDownscaleStub;->sInstance:Landroid/util/GMSDownscaleStub;

    .line 26
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "GMSDownscaleStub"

    iput-object v0, p0, Landroid/util/GMSDownscaleStub;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static blacklist getInstance()Landroid/util/GMSDownscaleStub;
    .registers 1

    .line 30
    sget-object v0, Landroid/util/GMSDownscaleStub;->sInstance:Landroid/util/GMSDownscaleStub;

    return-object v0
.end method


# virtual methods
.method public blacklist adapterLandscapeForDisplayMetrics(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 69
    return-void
.end method

.method public blacklist adapterToEmbeddingConfiguration(Landroid/content/res/Configuration;)Z
    .registers 3
    .param p1, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyToConfiguration(Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Landroid/content/res/Configuration;II)Z
    .registers 7
    .param p1, "mConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "mDisplayAdjustments"    # Landroid/view/DisplayAdjustments;
    .param p3, "mTmpConfig"    # Landroid/content/res/Configuration;
    .param p4, "density"    # I
    .param p5, "widthPixels"    # I

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyToDisplayMetricsForDownscale(Landroid/util/DisplayMetrics;)V
    .registers 2
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .line 34
    return-void
.end method

.method public blacklist applyToPointForDownscale(Landroid/content/res/Configuration;Landroid/graphics/Point;)V
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "outSize"    # Landroid/graphics/Point;

    .line 36
    return-void
.end method

.method public blacklist getCompatInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDownscaleDensity(I)I
    .registers 3
    .param p1, "sDefaultDensity"    # I

    .line 64
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    return v0
.end method

.method public blacklist getInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .registers 4
    .param p1, "result"    # Landroid/graphics/Insets;
    .param p2, "typeMask"    # I

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStatusBarHeightForDownscale(ILandroid/content/res/CompatibilityInfo;Landroid/content/res/Resources;)I
    .registers 5
    .param p1, "id"    # I
    .param p2, "compatibilityInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 74
    return-void
.end method

.method public blacklist setCompatInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 2
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 43
    return-void
.end method

.method public blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 49
    return-void
.end method

.method public blacklist setFixedOrientationPortraitAndShowLandScape(Landroid/content/pm/ActivityInfo;)V
    .registers 2
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 84
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 61
    return-void
.end method
