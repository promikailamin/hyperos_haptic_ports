.class public Lcom/miui/autoui/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final blacklist MAX_RATIO:F = 1.25f


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isExpandState(II)Z
    .registers 6
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 13
    if-eqz p1, :cond_9

    int-to-float v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 14
    .local v0, "ratio":F
    :goto_a
    sget-boolean v1, Lmiui/os/DeviceFeature;->IS_FOLD_DEVICE:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    .line 15
    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1e

    const/high16 v1, 0x3fa00000    # 1.25f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :goto_1f
    return v2

    .line 16
    :cond_20
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_29

    .line 17
    if-le p0, p1, :cond_27

    goto :goto_28

    :cond_27
    move v2, v3

    :goto_28
    return v2

    .line 19
    :cond_29
    return v3
.end method

.method public static blacklist makeMeasureSpec(II)I
    .registers 4
    .param p0, "measureLength"    # I
    .param p1, "measureSpec"    # I

    .line 23
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 24
    .local v0, "measureMode":I
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1
.end method
