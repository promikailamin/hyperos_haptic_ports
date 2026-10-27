.class public Landroid/view/animation/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# static fields
.field public static blacklist PAD_THRESHOLD:F

.field private static blacklist sMuiltDisplayType:I

.field private static blacklist sScreenRealSize:Landroid/graphics/Point;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    const/4 v0, -0x1

    sput v0, Landroid/view/animation/DeviceHelper;->sMuiltDisplayType:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isFoldDevice()Z
    .registers 3

    .line 33
    sget v0, Landroid/view/animation/DeviceHelper;->sMuiltDisplayType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    .line 34
    const-string v0, "persist.sys.muiltdisplay_type"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/animation/DeviceHelper;->sMuiltDisplayType:I

    .line 36
    :cond_e
    sget v0, Landroid/view/animation/DeviceHelper;->sMuiltDisplayType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public static blacklist isTablet(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    sget-object v0, Landroid/view/animation/DeviceHelper;->sScreenRealSize:Landroid/graphics/Point;

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/view/animation/DeviceHelper;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 24
    :cond_a
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Landroid/view/animation/DeviceHelper;->sScreenRealSize:Landroid/graphics/Point;

    .line 25
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 26
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v2, Landroid/view/animation/DeviceHelper;->sScreenRealSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 27
    const/high16 v1, 0x44160000    # 600.0f

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v1

    sput v2, Landroid/view/animation/DeviceHelper;->PAD_THRESHOLD:F

    .line 29
    .end local v0    # "windowManager":Landroid/view/WindowManager;
    :cond_31
    sget-object v0, Landroid/view/animation/DeviceHelper;->sScreenRealSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Landroid/view/animation/DeviceHelper;->sScreenRealSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Landroid/view/animation/DeviceHelper;->PAD_THRESHOLD:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_46

    const/4 v0, 0x1

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    return v0
.end method

.method public static blacklist isZizhan()Z
    .registers 2

    .line 40
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "deviceName":Ljava/lang/String;
    const-string v1, "zizhan"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method
