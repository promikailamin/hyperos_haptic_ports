.class public final Landroid/util/MiuiDisplayMetrics;
.super Ljava/lang/Object;
.source "MiuiDisplayMetrics.java"


# static fields
.field public static whitelist DENSITY_DEVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DENSITY_NXHGITH:I = 0x1b8

.field public static final blacklist PROP_MIUI_DENSITY:Ljava/lang/String; = "persist.miui.density_v2"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getMiuiDeviceDensity()I

    move-result v0

    sput v0, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getFactoryDeviceDensity()I
    .registers 2

    .line 36
    const-string v0, "ro.sf.lcd_density"

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist getMiuiDeviceDensity()I
    .registers 2

    .line 40
    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getFactoryDeviceDensity()I

    move-result v0

    const-string v1, "persist.miui.density_v2"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final blacklist getNxhdpiDensity()I
    .registers 1

    .line 28
    const/16 v0, 0x1b8

    return v0
.end method

.method public static blacklist setOverlayDensity(I)Z
    .registers 10
    .param p0, "overlayDensity"    # I

    .line 47
    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getFactoryDeviceDensity()I

    move-result v0

    .line 48
    .local v0, "factoryDensity":I
    int-to-float v1, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float/2addr v1, v2

    int-to-float v2, p0

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gtz v1, :cond_35

    int-to-double v3, p0

    int-to-double v5, v0

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v5, v7

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_35

    .line 49
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 50
    .local v1, "currentDensity":I
    if-eq v1, p0, :cond_35

    .line 51
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "persist.miui.density_v2"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v3, -0x1

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne p0, v3, :cond_34

    const/4 v2, 0x1

    :cond_34
    return v2

    .line 55
    .end local v1    # "currentDensity":I
    :cond_35
    return v2
.end method
