.class public Landroid/util/MiuiSplitUtils;
.super Ljava/lang/Object;
.source "MiuiSplitUtils.java"


# static fields
.field public static blacklist DEFAULT_LANDSCAPE_LEFT_WEIGHT:I = 0x0

.field public static blacklist DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I = 0x0

.field public static blacklist DEFAULT_LEFT_WEIGHT:I = 0x0

.field public static blacklist DEFAULT_RIGHT_WEIGHT:I = 0x0

.field public static final blacklist DIMMER_ALPHA:F = 0.15f

.field private static blacklist mContentWindowWeight:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 25
    const/16 v0, 0x266

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LEFT_WEIGHT:I

    .line 26
    const/16 v0, 0x3da

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_RIGHT_WEIGHT:I

    .line 27
    const/16 v0, 0x334

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 28
    const/16 v0, 0x6cc

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    .line 31
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "zizhan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "babylon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_78

    .line 36
    :cond_25
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cetus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 37
    const/16 v0, 0x30c

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LEFT_WEIGHT:I

    .line 38
    const/16 v0, 0x438

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_RIGHT_WEIGHT:I

    goto :goto_86

    .line 39
    :cond_38
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "yunluo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 40
    const/16 v0, 0x1cc

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LEFT_WEIGHT:I

    .line 41
    const/16 v0, 0x2e4

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_RIGHT_WEIGHT:I

    .line 42
    const/16 v0, 0x281

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 43
    const/16 v0, 0x54f

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    goto :goto_86

    .line 44
    :cond_53
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "pipa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "liuqin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 45
    :cond_67
    const/16 v0, 0x2b3

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LEFT_WEIGHT:I

    .line 46
    const/16 v0, 0x455

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_RIGHT_WEIGHT:I

    .line 47
    const/16 v0, 0x39a

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 48
    const/16 v0, 0x7a6

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    goto :goto_86

    .line 32
    :cond_78
    :goto_78
    const/16 v0, 0x345

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LEFT_WEIGHT:I

    .line 33
    const/16 v1, 0x437

    sput v1, Landroid/util/MiuiSplitUtils;->DEFAULT_RIGHT_WEIGHT:I

    .line 34
    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 35
    const/16 v0, 0x52b

    sput v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    .line 50
    :cond_86
    :goto_86
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getContentWeight(I)F
    .registers 5
    .param p0, "orientation"    # I

    .line 91
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    sget v1, Landroid/util/MiuiSplitUtils;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    goto :goto_8

    :cond_6
    sget v1, Landroid/util/MiuiSplitUtils;->DEFAULT_LEFT_WEIGHT:I

    .line 92
    .local v1, "leftWeight":I
    :goto_8
    if-ne p0, v0, :cond_d

    sget v0, Landroid/util/MiuiSplitUtils;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    goto :goto_f

    :cond_d
    sget v0, Landroid/util/MiuiSplitUtils;->DEFAULT_RIGHT_WEIGHT:I

    .line 93
    .local v0, "rightWeight":I
    :goto_f
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    add-int v3, v1, v0

    int-to-float v3, v3

    div-float/2addr v2, v3

    sput v2, Landroid/util/MiuiSplitUtils;->mContentWindowWeight:F

    .line 94
    return v2
.end method

.method public static blacklist getSplitLeftWeight(ILandroid/graphics/Rect;)I
    .registers 4
    .param p0, "orientation"    # I
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 85
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 86
    .local v0, "winWidth":I
    invoke-static {p0, p1}, Landroid/util/MiuiSplitUtils;->getSplitRightWeight(ILandroid/graphics/Rect;)I

    move-result v1

    sub-int v1, v0, v1

    .line 87
    .local v1, "leftWeight":I
    return v1
.end method

.method public static blacklist getSplitRightWeight(ILandroid/graphics/Rect;)I
    .registers 5
    .param p0, "orientation"    # I
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 78
    invoke-static {p0}, Landroid/util/MiuiSplitUtils;->getContentWeight(I)F

    move-result v0

    sput v0, Landroid/util/MiuiSplitUtils;->mContentWindowWeight:F

    .line 79
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 80
    .local v0, "winWidth":I
    sget v1, Landroid/util/MiuiSplitUtils;->mContentWindowWeight:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 81
    .local v1, "rightWeight":I
    return v1
.end method

.method public static blacklist isActClose(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 60
    const/4 v0, 0x7

    if-eq p0, v0, :cond_a

    const/16 v0, 0x19

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method public static blacklist isActOpen(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 56
    const/4 v0, 0x6

    if-eq p0, v0, :cond_a

    const/16 v0, 0x18

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method public static blacklist isRtlLocale()Z
    .registers 2

    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "currentLang":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 100
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "ug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_33

    :cond_31
    const/4 v1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x1

    .line 99
    :goto_34
    return v1
.end method

.method public static blacklist isUnderPage(IZ)Z
    .registers 3
    .param p0, "transit"    # I
    .param p1, "enter"    # Z

    .line 69
    invoke-static {p0}, Landroid/util/MiuiSplitUtils;->isActOpen(I)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_10

    :cond_8
    invoke-static {p0}, Landroid/util/MiuiSplitUtils;->isActClose(I)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
