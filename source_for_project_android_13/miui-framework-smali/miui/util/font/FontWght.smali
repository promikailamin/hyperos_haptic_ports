.class public Lmiui/util/font/FontWght;
.super Ljava/lang/Object;
.source "FontWght.java"


# static fields
.field public static final blacklist DEFAULT_IDX:I = 0x4

.field private static blacklist MITYPE_WGHT:[I = null

.field private static blacklist MIUI_WGHT:[I = null

.field private static blacklist MIUI_WGHT_DARKMODE:[I = null

.field public static blacklist WEIGHT_ARRAY:[I = null

.field public static final blacklist WEIGHT_BOLD:I = 0x2bc

.field public static final blacklist WEIGHT_DEMI_BOLD:I = 0x226

.field public static final blacklist WEIGHT_EXTRA_LIGHT:I = 0xc8

.field public static final blacklist WEIGHT_HEAVY:I = 0x384

.field public static final blacklist WEIGHT_IDX_BOLD:I = 0x8

.field public static final blacklist WEIGHT_IDX_DEMI_BOLD:I = 0x6

.field public static final blacklist WEIGHT_IDX_EXTRA_LIGHT:I = 0x1

.field public static final blacklist WEIGHT_IDX_HEAVY:I = 0x9

.field public static final blacklist WEIGHT_IDX_LIGHT:I = 0x2

.field public static final blacklist WEIGHT_IDX_MEDIUM:I = 0x5

.field public static final blacklist WEIGHT_IDX_NORMAL:I = 0x3

.field public static final blacklist WEIGHT_IDX_REGULAR:I = 0x4

.field public static final blacklist WEIGHT_IDX_SEMI_BOLD:I = 0x7

.field public static final blacklist WEIGHT_IDX_THIN:I = 0x0

.field public static final blacklist WEIGHT_LIGHT:I = 0x12c

.field public static final blacklist WEIGHT_MEDIUM:I = 0x1f4

.field public static final blacklist WEIGHT_NORMAL:I = 0x15e

.field public static final blacklist WEIGHT_REGULAR:I = 0x190

.field public static final blacklist WEIGHT_SEMI_BOLD:I = 0x258

.field public static final blacklist WEIGHT_THIN:I = 0x64


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 36
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_20

    sput-object v1, Lmiui/util/font/FontWght;->WEIGHT_ARRAY:[I

    .line 49
    new-array v1, v0, [I

    fill-array-data v1, :array_38

    sput-object v1, Lmiui/util/font/FontWght;->MIUI_WGHT:[I

    .line 52
    new-array v1, v0, [I

    fill-array-data v1, :array_50

    sput-object v1, Lmiui/util/font/FontWght;->MIUI_WGHT_DARKMODE:[I

    .line 55
    new-array v0, v0, [I

    fill-array-data v0, :array_68

    sput-object v0, Lmiui/util/font/FontWght;->MITYPE_WGHT:[I

    return-void

    nop

    :array_20
    .array-data 4
        0x64
        0xc8
        0x12c
        0x15e
        0x190
        0x1f4
        0x226
        0x258
        0x2bc
        0x384
    .end array-data

    :array_38
    .array-data 4
        0x96
        0xc8
        0xfa
        0x131
        0x14a
        0x17c
        0x1c2
        0x208
        0x276
        0x2bc
    .end array-data

    :array_50
    .array-data 4
        0x96
        0xaf
        0xe1
        0x11d
        0x136
        0x168
        0x1ae
        0x1f4
        0x258
        0x28a
    .end array-data

    :array_68
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getScaleWght(IFLmiui/util/font/FontType;)I
    .registers 6
    .param p0, "weightIdx"    # I
    .param p1, "textSize"    # F
    .param p2, "type"    # Lmiui/util/font/FontType;

    .line 74
    invoke-static {p1}, Lmiui/util/font/FontScaleRules;->getRules(F)[[I

    move-result-object v0

    .line 75
    .local v0, "rules":[[I
    if-ltz p0, :cond_d

    .line 76
    aget-object v1, v0, p0

    invoke-static {p0, v1, p2}, Lmiui/util/font/FontWght;->getWghtInRange(I[ILmiui/util/font/FontType;)I

    move-result v1

    return v1

    .line 78
    :cond_d
    sget-object v1, Lmiui/util/font/FontScaleRules;->NORAML_RULES:[[I

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v2, v1, p2}, Lmiui/util/font/FontWght;->getWghtInRange(I[ILmiui/util/font/FontType;)I

    move-result v1

    return v1
.end method

.method public static blacklist getWeightIdx(I)I
    .registers 5
    .param p0, "weight"    # I

    .line 60
    const/16 v0, 0x384

    if-lt p0, v0, :cond_a

    .line 61
    sget-object v0, Lmiui/util/font/FontWght;->WEIGHT_ARRAY:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 63
    :cond_a
    const/4 v0, -0x1

    .line 64
    .local v0, "idx":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    sget-object v2, Lmiui/util/font/FontWght;->WEIGHT_ARRAY:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 65
    aget v2, v2, v1

    if-gt p0, v2, :cond_17

    .line 66
    move v0, v1

    .line 67
    goto :goto_1a

    .line 64
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 70
    .end local v1    # "i":I
    :cond_1a
    :goto_1a
    return v0
.end method

.method private static blacklist getWght(ILmiui/util/font/FontType;)I
    .registers 4
    .param p0, "weightIdx"    # I
    .param p1, "type"    # Lmiui/util/font/FontType;

    .line 100
    invoke-static {p1}, Lmiui/util/font/FontWght;->getWghtArray(Lmiui/util/font/FontType;)[I

    move-result-object v0

    .line 101
    .local v0, "wghts":[I
    if-ltz p0, :cond_c

    array-length v1, v0

    if-ge p0, v1, :cond_c

    .line 102
    aget v1, v0, p0

    return v1

    .line 104
    :cond_c
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lmiui/util/font/FontWght;->getWght(ILmiui/util/font/FontType;)I

    move-result v1

    return v1
.end method

.method private static blacklist getWghtArray(Lmiui/util/font/FontType;)[I
    .registers 3
    .param p0, "type"    # Lmiui/util/font/FontType;

    .line 108
    invoke-static {}, Lmiui/util/font/FontSettings;->isUsingThemeVF()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lmiui/util/font/FontSettings;->checkFontVarWeight()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 109
    sget-object v0, Lmiui/util/font/FontSettings;->FONT_VAR_WEIGHT:[I

    return-object v0

    .line 110
    :cond_f
    sget-object v0, Lmiui/util/font/FontType;->MITYPE:Lmiui/util/font/FontType;

    if-eq p0, v0, :cond_24

    sget-object v0, Lmiui/util/font/FontType;->MITYPE_MONO:Lmiui/util/font/FontType;

    if-ne p0, v0, :cond_18

    goto :goto_24

    .line 112
    :cond_18
    sget v0, Lmiui/util/font/FontSettings;->sUiMode:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_21

    .line 113
    sget-object v0, Lmiui/util/font/FontWght;->MIUI_WGHT_DARKMODE:[I

    return-object v0

    .line 115
    :cond_21
    sget-object v0, Lmiui/util/font/FontWght;->MIUI_WGHT:[I

    return-object v0

    .line 111
    :cond_24
    :goto_24
    sget-object v0, Lmiui/util/font/FontWght;->MITYPE_WGHT:[I

    return-object v0
.end method

.method private static blacklist getWghtInRange(I[ILmiui/util/font/FontType;)I
    .registers 11
    .param p0, "weightIdx"    # I
    .param p1, "range"    # [I
    .param p2, "type"    # Lmiui/util/font/FontType;

    .line 82
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0, p2}, Lmiui/util/font/FontWght;->getWght(ILmiui/util/font/FontType;)I

    move-result v0

    .line 83
    .local v0, "startWght":I
    invoke-static {p0, p2}, Lmiui/util/font/FontWght;->getWght(ILmiui/util/font/FontType;)I

    move-result v1

    .line 84
    .local v1, "midWght":I
    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-static {v2, p2}, Lmiui/util/font/FontWght;->getWght(ILmiui/util/font/FontType;)I

    move-result v2

    .line 86
    .local v2, "endWght":I
    move v3, v1

    .line 87
    .local v3, "wght":I
    invoke-static {}, Lmiui/util/font/FontSettings;->getFontScale()I

    move-result v4

    .line 88
    .local v4, "fontScale":I
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42480000    # 50.0f

    const/16 v7, 0x32

    if-ge v4, v7, :cond_29

    .line 89
    int-to-float v7, v4

    div-float/2addr v7, v6

    .line 90
    .local v7, "t":F
    sub-float/2addr v5, v7

    int-to-float v6, v0

    mul-float/2addr v5, v6

    int-to-float v6, v1

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v3, v5

    .end local v7    # "t":F
    goto :goto_37

    .line 91
    :cond_29
    if-le v4, v7, :cond_37

    .line 92
    add-int/lit8 v7, v4, -0x32

    int-to-float v7, v7

    div-float/2addr v7, v6

    .line 94
    .restart local v7    # "t":F
    sub-float/2addr v5, v7

    int-to-float v6, v1

    mul-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v3, v5

    goto :goto_38

    .line 91
    .end local v7    # "t":F
    :cond_37
    :goto_37
    nop

    .line 96
    :goto_38
    return v3
.end method
