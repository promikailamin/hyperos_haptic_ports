.class public Lcom/android/internal/policy/ScreenDecorationsUtils;
.super Ljava/lang/Object;
.source "ScreenDecorationsUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMiuiWindowCornerRadius(Landroid/content/Context;)F
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 83
    return v2

    .line 85
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    .line 86
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_4e

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 87
    nop

    .line 88
    invoke-virtual {v1, v3}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v3

    .line 87
    invoke-static {v3}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getRoundedCornerRadius(Landroid/view/RoundedCorner;)F

    move-result v3

    .line 89
    .local v3, "topLeftRadius":F
    const/4 v4, 0x1

    .line 90
    invoke-virtual {v1, v4}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v4

    .line 89
    invoke-static {v4}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getRoundedCornerRadius(Landroid/view/RoundedCorner;)F

    move-result v4

    .line 91
    .local v4, "topRightRadius":F
    const/4 v5, 0x2

    .line 92
    invoke-virtual {v1, v5}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v5

    .line 91
    invoke-static {v5}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getRoundedCornerRadius(Landroid/view/RoundedCorner;)F

    move-result v5

    .line 93
    .local v5, "bottomRightRadius":F
    const/4 v6, 0x3

    .line 94
    invoke-virtual {v1, v6}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v6

    .line 93
    invoke-static {v6}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getRoundedCornerRadius(Landroid/view/RoundedCorner;)F

    move-result v6

    .line 97
    .local v6, "bottomLeftRadius":F
    invoke-static {v3, v4}, Lcom/android/internal/policy/ScreenDecorationsUtils;->minRadius(FF)F

    move-result v7

    .line 98
    invoke-static {v6, v5}, Lcom/android/internal/policy/ScreenDecorationsUtils;->minRadius(FF)F

    move-result v8

    .line 97
    invoke-static {v7, v8}, Lcom/android/internal/policy/ScreenDecorationsUtils;->minRadius(FF)F

    move-result v7

    .line 99
    .local v7, "min":F
    cmpl-float v2, v7, v2

    if-lez v2, :cond_4e

    .line 100
    return v7

    .line 102
    .end local v3    # "topLeftRadius":F
    .end local v4    # "topRightRadius":F
    .end local v5    # "bottomRightRadius":F
    .end local v6    # "bottomLeftRadius":F
    .end local v7    # "min":F
    :cond_4e
    invoke-static {p0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v2

    return v2
.end method

.method private static blacklist getRoundedCornerRadius(Landroid/view/RoundedCorner;)F
    .registers 2
    .param p0, "roundedCorner"    # Landroid/view/RoundedCorner;

    .line 112
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    .line 113
    :cond_4
    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static blacklist getWindowCornerRadius(Landroid/content/Context;)F
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 47
    return v2

    .line 50
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "displayUniqueId":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v3

    .line 53
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 55
    .local v3, "defaultRadius":F
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    .line 56
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusTopAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 57
    .local v4, "topRadius":F
    cmpl-float v5, v4, v2

    if-nez v5, :cond_2d

    .line 58
    move v4, v3

    .line 60
    :cond_2d
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    .line 61
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusBottomAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 62
    .local v5, "bottomRadius":F
    cmpl-float v2, v5, v2

    if-nez v2, :cond_3c

    .line 63
    move v5, v3

    .line 68
    :cond_3c
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private static blacklist minRadius(FF)F
    .registers 4
    .param p0, "aRadius"    # F
    .param p1, "bRadius"    # F

    .line 106
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_6

    return p1

    .line 107
    :cond_6
    cmpl-float v0, p1, v0

    if-nez v0, :cond_b

    return p0

    .line 108
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static blacklist supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 120
    const v0, 0x11101d0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
