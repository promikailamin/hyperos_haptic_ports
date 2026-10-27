.class public Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;
.super Ljava/lang/Object;
.source "ThemeDensityFallbackUtils.java"


# static fields
.field private static final blacklist DENSITIES:[I

.field private static final blacklist DENSITY_NONE:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1e0
        0x140
        0xf0
        0x0
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static blacklist getDensitySuffix(I)Ljava/lang/String;
    .registers 5
    .param p0, "density"    # I

    .line 36
    sparse-switch p0, :sswitch_data_48

    .line 56
    sget-object v0, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 57
    .local v0, "min":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "j":I
    goto :goto_26

    .line 50
    .end local v0    # "min":I
    .end local v1    # "j":I
    :sswitch_b
    const-string v0, "-xxxhdpi"

    return-object v0

    .line 48
    :sswitch_e
    const-string v0, "-xxhdpi"

    return-object v0

    .line 46
    :sswitch_11
    const-string v0, "-nxhdpi"

    return-object v0

    .line 44
    :sswitch_14
    const-string v0, "-xhdpi"

    return-object v0

    .line 42
    :sswitch_17
    const-string v0, "-hdpi"

    return-object v0

    .line 40
    :sswitch_1a
    const-string v0, "-mdpi"

    return-object v0

    .line 38
    :sswitch_1d
    const-string v0, "-ldpi"

    return-object v0

    .line 52
    :sswitch_20
    const-string v0, "-nodpi"

    return-object v0

    .line 54
    :sswitch_23
    const-string v0, ""

    return-object v0

    .line 57
    .restart local v0    # "min":I
    .restart local v1    # "j":I
    :goto_26
    if-lez v1, :cond_3e

    .line 58
    sget-object v2, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v3, v2, v1

    sub-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v2, v2, v0

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v3, v2, :cond_3b

    .line 59
    move v0, v1

    .line 57
    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 62
    .end local v1    # "j":I
    :cond_3e
    sget-object v1, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_23
        0x1 -> :sswitch_20
        0x78 -> :sswitch_1d
        0xa0 -> :sswitch_1a
        0xf0 -> :sswitch_17
        0x140 -> :sswitch_14
        0x1b8 -> :sswitch_11
        0x1e0 -> :sswitch_e
        0x280 -> :sswitch_b
    .end sparse-switch
.end method

.method public static blacklist getFallbackOrder(I)[I
    .registers 11
    .param p0, "currentDensity"    # I

    .line 67
    sget-object v0, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 68
    .local v0, "left":I
    :goto_5
    if-ltz v0, :cond_10

    sget-object v2, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    aget v2, v2, v0

    if-gt v2, p0, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 69
    :cond_10
    const/4 v2, 0x0

    .line 70
    .local v2, "right":I
    :goto_11
    sget-object v3, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1d

    aget v4, v3, v2

    if-lt v4, p0, :cond_1d

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 72
    :cond_1d
    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x0

    if-ne v4, v2, :cond_25

    move v4, v1

    goto :goto_26

    :cond_25
    move v4, v5

    :goto_26
    add-int/2addr v3, v4

    new-array v3, v3, [I

    .line 73
    .local v3, "densities":[I
    aput p0, v3, v5

    .line 75
    const/4 v4, 0x1

    .line 76
    .local v4, "index":I
    :goto_2c
    array-length v6, v3

    if-ge v4, v6, :cond_64

    .line 77
    const/4 v6, 0x0

    .line 78
    .local v6, "leftIsBetter":Z
    if-gez v0, :cond_34

    .line 79
    const/4 v6, 0x0

    goto :goto_48

    .line 81
    :cond_34
    sget-object v7, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    array-length v8, v7

    if-ne v2, v8, :cond_3b

    .line 82
    const/4 v6, 0x1

    goto :goto_48

    .line 85
    :cond_3b
    aget v8, v7, v0

    sub-int/2addr v8, p0

    aget v7, v7, v2

    sub-int v7, p0, v7

    if-ge v8, v7, :cond_46

    move v7, v1

    goto :goto_47

    :cond_46
    move v7, v5

    :goto_47
    move v6, v7

    .line 88
    :goto_48
    if-eqz v6, :cond_57

    .line 89
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "index":I
    .local v7, "index":I
    sget-object v8, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    add-int/lit8 v9, v0, -0x1

    .end local v0    # "left":I
    .local v9, "left":I
    aget v0, v8, v0

    aput v0, v3, v4

    move v4, v7

    move v0, v9

    goto :goto_63

    .line 92
    .end local v7    # "index":I
    .end local v9    # "left":I
    .restart local v0    # "left":I
    .restart local v4    # "index":I
    :cond_57
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "index":I
    .restart local v7    # "index":I
    sget-object v8, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->DENSITIES:[I

    add-int/lit8 v9, v2, 0x1

    .end local v2    # "right":I
    .local v9, "right":I
    aget v2, v8, v2

    aput v2, v3, v4

    move v4, v7

    move v2, v9

    .line 94
    .end local v6    # "leftIsBetter":Z
    .end local v7    # "index":I
    .end local v9    # "right":I
    .restart local v2    # "right":I
    .restart local v4    # "index":I
    :goto_63
    goto :goto_2c

    .line 96
    :cond_64
    return-object v3
.end method

.method public static blacklist getScreenWidthSuffix(Landroid/content/res/Configuration;)Ljava/lang/String;
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 29
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_9

    .line 30
    const-string v0, "-sw720dp"

    return-object v0

    .line 32
    :cond_9
    const-string v0, ""

    return-object v0
.end method
