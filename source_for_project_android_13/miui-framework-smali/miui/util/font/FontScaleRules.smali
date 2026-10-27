.class Lmiui/util/font/FontScaleRules;
.super Ljava/lang/Object;
.source "FontScaleRules.java"


# static fields
.field public static final blacklist LARGE_RULES:[[I

.field public static final blacklist NORAML_RULES:[[I

.field public static final blacklist RULES:[[[I

.field public static final blacklist SIZE_COUNT:I = 0x3

.field public static final blacklist SIZE_LARGE:I = 0x2

.field public static final blacklist SIZE_NORMAL:I = 0x1

.field public static final blacklist SIZE_SMALL:I

.field public static final blacklist SMALL_RULES:[[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 14

    .line 14
    const/16 v0, 0xa

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_f8

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_100

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_108

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_110

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_118

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_120

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_128

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_130

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_138

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_140

    const/16 v12, 0x9

    aput-object v3, v1, v12

    sput-object v1, Lmiui/util/font/FontScaleRules;->SMALL_RULES:[[I

    .line 26
    new-array v3, v0, [[I

    new-array v13, v2, [I

    fill-array-data v13, :array_148

    aput-object v13, v3, v4

    new-array v13, v2, [I

    fill-array-data v13, :array_150

    aput-object v13, v3, v5

    new-array v13, v2, [I

    fill-array-data v13, :array_158

    aput-object v13, v3, v2

    new-array v13, v2, [I

    fill-array-data v13, :array_160

    aput-object v13, v3, v6

    new-array v13, v2, [I

    fill-array-data v13, :array_168

    aput-object v13, v3, v7

    new-array v13, v2, [I

    fill-array-data v13, :array_170

    aput-object v13, v3, v8

    new-array v13, v2, [I

    fill-array-data v13, :array_178

    aput-object v13, v3, v9

    new-array v13, v2, [I

    fill-array-data v13, :array_180

    aput-object v13, v3, v10

    new-array v13, v2, [I

    fill-array-data v13, :array_188

    aput-object v13, v3, v11

    new-array v13, v2, [I

    fill-array-data v13, :array_190

    aput-object v13, v3, v12

    sput-object v3, Lmiui/util/font/FontScaleRules;->NORAML_RULES:[[I

    .line 38
    new-array v0, v0, [[I

    new-array v13, v2, [I

    fill-array-data v13, :array_198

    aput-object v13, v0, v4

    new-array v13, v2, [I

    fill-array-data v13, :array_1a0

    aput-object v13, v0, v5

    new-array v13, v2, [I

    fill-array-data v13, :array_1a8

    aput-object v13, v0, v2

    new-array v13, v2, [I

    fill-array-data v13, :array_1b0

    aput-object v13, v0, v6

    new-array v13, v2, [I

    fill-array-data v13, :array_1b8

    aput-object v13, v0, v7

    new-array v7, v2, [I

    fill-array-data v7, :array_1c0

    aput-object v7, v0, v8

    new-array v7, v2, [I

    fill-array-data v7, :array_1c8

    aput-object v7, v0, v9

    new-array v7, v2, [I

    fill-array-data v7, :array_1d0

    aput-object v7, v0, v10

    new-array v7, v2, [I

    fill-array-data v7, :array_1d8

    aput-object v7, v0, v11

    new-array v7, v2, [I

    fill-array-data v7, :array_1e0

    aput-object v7, v0, v12

    sput-object v0, Lmiui/util/font/FontScaleRules;->LARGE_RULES:[[I

    .line 50
    new-array v6, v6, [[[I

    aput-object v1, v6, v4

    aput-object v3, v6, v5

    aput-object v0, v6, v2

    sput-object v6, Lmiui/util/font/FontScaleRules;->RULES:[[[I

    return-void

    nop

    :array_f8
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_100
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_108
    .array-data 4
        0x2
        0x5
    .end array-data

    :array_110
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_118
    .array-data 4
        0x3
        0x6
    .end array-data

    :array_120
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_128
    .array-data 4
        0x5
        0x8
    .end array-data

    :array_130
    .array-data 4
        0x6
        0x8
    .end array-data

    :array_138
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_140
    .array-data 4
        0x8
        0x9
    .end array-data

    :array_148
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_150
    .array-data 4
        0x0
        0x5
    .end array-data

    :array_158
    .array-data 4
        0x1
        0x6
    .end array-data

    :array_160
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_168
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_170
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_178
    .array-data 4
        0x4
        0x8
    .end array-data

    :array_180
    .array-data 4
        0x5
        0x9
    .end array-data

    :array_188
    .array-data 4
        0x6
        0x9
    .end array-data

    :array_190
    .array-data 4
        0x7
        0x9
    .end array-data

    :array_198
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1a0
    .array-data 4
        0x0
        0x3
    .end array-data

    :array_1a8
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_1b0
    .array-data 4
        0x1
        0x5
    .end array-data

    :array_1b8
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_1c0
    .array-data 4
        0x2
        0x7
    .end array-data

    :array_1c8
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_1d0
    .array-data 4
        0x4
        0x9
    .end array-data

    :array_1d8
    .array-data 4
        0x5
        0x9
    .end array-data

    :array_1e0
    .array-data 4
        0x6
        0x9
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getRules(F)[[I
    .registers 3
    .param p0, "textSize"    # F

    .line 65
    sget-object v0, Lmiui/util/font/FontScaleRules;->RULES:[[[I

    invoke-static {p0}, Lmiui/util/font/FontScaleRules;->getSizeGrade(F)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static blacklist getSizeGrade(F)I
    .registers 2
    .param p0, "textSize"    # F

    .line 55
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_8

    .line 56
    const/4 v0, 0x2

    return v0

    .line 57
    :cond_8
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_15

    const/high16 v0, 0x41400000    # 12.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_15

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_15
    const/4 v0, 0x1

    return v0
.end method
