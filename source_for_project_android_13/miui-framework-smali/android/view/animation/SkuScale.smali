.class public Landroid/view/animation/SkuScale;
.super Ljava/lang/Object;
.source "SkuScale.java"


# static fields
.field private static final blacklist PRIMARY_SCALE:Ljava/lang/String;

.field private static final blacklist SECONDARY_SCALE:Ljava/lang/String;

.field private static blacklist sPrimaryScaleValue:F

.field private static blacklist sSecondaryScaleValue:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 16
    const-string v0, "ro.miui.density.primaryscale"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/animation/SkuScale;->PRIMARY_SCALE:Ljava/lang/String;

    .line 20
    const-string v2, "ro.miui.density.secondaryscale"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/animation/SkuScale;->SECONDARY_SCALE:Ljava/lang/String;

    .line 21
    const/4 v2, 0x0

    sput v2, Landroid/view/animation/SkuScale;->sPrimaryScaleValue:F

    .line 22
    sput v2, Landroid/view/animation/SkuScale;->sSecondaryScaleValue:F

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 25
    invoke-static {v0}, Landroid/view/animation/SkuScale;->parseSkuScale(Ljava/lang/String;)F

    move-result v0

    sput v0, Landroid/view/animation/SkuScale;->sPrimaryScaleValue:F

    .line 27
    :cond_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 28
    invoke-static {v1}, Landroid/view/animation/SkuScale;->parseSkuScale(Ljava/lang/String;)F

    move-result v0

    sput v0, Landroid/view/animation/SkuScale;->sSecondaryScaleValue:F

    .line 30
    :cond_2e
    sget v0, Landroid/view/animation/SkuScale;->sSecondaryScaleValue:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_38

    .line 31
    sget v0, Landroid/view/animation/SkuScale;->sPrimaryScaleValue:F

    sput v0, Landroid/view/animation/SkuScale;->sSecondaryScaleValue:F

    .line 33
    :cond_38
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getSkuScale(Landroid/content/Context;)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    sget v0, Landroid/view/animation/SkuScale;->sPrimaryScaleValue:F

    .line 50
    .local v0, "result":F
    invoke-static {}, Landroid/view/animation/DeviceHelper;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {p0}, Landroid/view/animation/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 51
    sget v0, Landroid/view/animation/SkuScale;->sSecondaryScaleValue:F

    .line 53
    :cond_10
    return v0
.end method

.method static blacklist hasSkuScale()Z
    .registers 2

    .line 45
    sget v0, Landroid/view/animation/SkuScale;->sPrimaryScaleValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static blacklist parseSkuScale(Ljava/lang/String;)F
    .registers 3
    .param p0, "skuScale"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "scale":F
    :try_start_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_7

    move v0, v1

    .line 40
    goto :goto_8

    .line 39
    :catch_7
    move-exception v1

    .line 41
    :goto_8
    return v0
.end method
