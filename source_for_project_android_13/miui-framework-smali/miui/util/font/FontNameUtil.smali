.class public Lmiui/util/font/FontNameUtil;
.super Ljava/lang/Object;
.source "FontNameUtil.java"


# static fields
.field static final blacklist BLACK:Ljava/lang/String; = "black"

.field static final blacklist BOLD:Ljava/lang/String; = "bold"

.field public static final blacklist DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field public static final blacklist DEFAULT_FONT_NAMES:[Ljava/lang/String;

.field private static final blacklist DEFAULT_NAME_MAP:[Ljava/lang/String;

.field static final blacklist DEMIBOLD:Ljava/lang/String; = "demibold"

.field static final blacklist EXTRALIGHT:Ljava/lang/String; = "extralight"

.field private static final blacklist FONT_NAME_DEFAULT:[Ljava/lang/String;

.field public static final blacklist FONT_NAME_MIPRO_MEDIUM:[Ljava/lang/String;

.field private static final blacklist GRADE_NAME_ARRAY:[Ljava/lang/String;

.field static final blacklist GRADE_SEPERATOR:C = '-'

.field static final blacklist HEAVY:Ljava/lang/String; = "heavy"

.field static final blacklist LIGHT:Ljava/lang/String; = "light"

.field static final blacklist MEDIUM:Ljava/lang/String; = "medium"

.field public static final blacklist MIPRO_FAMILY:Ljava/lang/String; = "mipro"

.field public static final blacklist MIPRO_REGULAR:Ljava/lang/String; = "mipro-regular"

.field public static final blacklist MITYPE_FAMILY:Ljava/lang/String; = "mitype"

.field public static final blacklist MITYPE_MONO_FAMILY:Ljava/lang/String; = "mitype-mono"

.field static final blacklist MIUI_BOLD:Ljava/lang/String; = "miui-bold"

.field public static final blacklist MIUI_FAMILY:Ljava/lang/String; = "miui"

.field public static final blacklist MIUI_NAMES:[Ljava/lang/String;

.field private static final blacklist MIUI_VF_NAME:[[Ljava/lang/String;

.field static final blacklist NORMAL:Ljava/lang/String; = "normal"

.field public static final blacklist PREFIX_THEME:Ljava/lang/String; = "theme-"

.field static final blacklist REGULAR:Ljava/lang/String; = "regular"

.field static final blacklist SEMIBOLD:Ljava/lang/String; = "semibold"

.field private static final blacklist TAG:Ljava/lang/String; = "FontNameManager"

.field public static final blacklist THEME_VF_NAME:Ljava/lang/String; = "theme-var"

.field static final blacklist THIN:Ljava/lang/String; = "thin"

.field static final blacklist VERSION_SEPERATOR:C = '_'

.field private static final blacklist sFamilyNameField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 47
    invoke-static {}, Lmiui/util/font/FontNameUtil;->getFamilyNameField()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lmiui/util/font/FontNameUtil;->sFamilyNameField:Ljava/lang/reflect/Field;

    .line 61
    const-string v0, "sans-serif"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/util/font/FontNameUtil;->FONT_NAME_DEFAULT:[Ljava/lang/String;

    .line 63
    const-string v1, "mipro-medium"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/util/font/FontNameUtil;->FONT_NAME_MIPRO_MEDIUM:[Ljava/lang/String;

    .line 70
    const-string v1, "arial"

    const-string v2, "helvetica"

    const-string v3, "tahoma"

    const-string v4, "verdana"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/font/FontNameUtil;->DEFAULT_FONT_NAMES:[Ljava/lang/String;

    .line 77
    const-string v1, "thin"

    const-string v2, "thin"

    const-string v3, "light"

    const-string v4, "light"

    const-string v5, "medium"

    const-string v6, "medium"

    const-string v7, "black"

    const-string v8, "heavy"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/font/FontNameUtil;->DEFAULT_NAME_MAP:[Ljava/lang/String;

    .line 83
    const-string v1, "thin"

    const-string v2, "extralight"

    const-string v3, "light"

    const-string v4, "normal"

    const-string v5, "regular"

    const-string v6, "medium"

    const-string v7, "demibold"

    const-string v8, "semibold"

    const-string v9, "bold"

    const-string v10, "heavy"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/font/FontNameUtil;->GRADE_NAME_ARRAY:[Ljava/lang/String;

    .line 87
    array-length v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v2, v1, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    const-class v0, Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lmiui/util/font/FontNameUtil;->MIUI_VF_NAME:[[Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_69
    sget-object v1, Lmiui/util/font/FontNameUtil;->GRADE_NAME_ARRAY:[Ljava/lang/String;

    array-length v4, v1

    if-ge v0, v4, :cond_8e

    .line 89
    sget-object v4, Lmiui/util/font/FontNameUtil;->MIUI_VF_NAME:[[Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mipro-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v1, v1, v0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    aput-object v5, v4, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 91
    .end local v0    # "i":I
    :cond_8e
    const-string v0, "mipro"

    const-string v1, "miui"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/font/FontNameUtil;->MIUI_NAMES:[Ljava/lang/String;

    .line 92
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist changeFontNameGradeByWeight([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 8
    .param p0, "fontNames"    # [Ljava/lang/String;
    .param p1, "weight"    # I

    .line 101
    if-eqz p0, :cond_3a

    array-length v0, p0

    if-eqz v0, :cond_3a

    if-ltz p1, :cond_3a

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_c

    goto :goto_3a

    .line 104
    :cond_c
    invoke-static {p1}, Lmiui/util/font/FontWght;->getWeightIdx(I)I

    move-result v0

    .line 105
    .local v0, "weightIdx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 106
    return-object p0

    .line 108
    :cond_14
    const/4 v1, 0x0

    .line 109
    .local v1, "newNames":[Ljava/lang/String;
    sget-object v2, Lmiui/util/font/FontNameUtil;->GRADE_NAME_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 110
    .local v2, "grade":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    array-length v4, p0

    if-ge v3, v4, :cond_34

    .line 111
    aget-object v4, p0, v3

    invoke-static {v4, v0, v2}, Lmiui/util/font/FontNameUtil;->changeGrade(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "newName":Ljava/lang/String;
    if-eqz v4, :cond_31

    .line 113
    if-nez v1, :cond_2f

    .line 114
    array-length v5, p0

    invoke-static {p0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, [Ljava/lang/String;

    .line 116
    :cond_2f
    aput-object v4, v1, v3

    .line 110
    .end local v4    # "newName":Ljava/lang/String;
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 119
    .end local v3    # "i":I
    :cond_34
    if-eqz v1, :cond_38

    move-object v3, v1

    goto :goto_39

    :cond_38
    move-object v3, p0

    :goto_39
    return-object v3

    .line 102
    .end local v0    # "weightIdx":I
    .end local v1    # "newNames":[Ljava/lang/String;
    .end local v2    # "grade":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object p0
.end method

.method private static blacklist changeGrade(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "weightIdx"    # I
    .param p2, "newGrade"    # Ljava/lang/String;

    .line 134
    const/4 v0, -0x1

    .line 135
    .local v0, "gradeIdx":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lmiui/util/font/FontNameUtil;->GRADE_NAME_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 136
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 137
    move v0, v1

    .line 138
    goto :goto_14

    .line 135
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 141
    .end local v1    # "i":I
    :cond_14
    :goto_14
    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    if-eq v0, p1, :cond_20

    .line 142
    aget-object v1, v2, v0

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 143
    :cond_20
    const-string v1, "mipro"

    const-string v2, "miui"

    const-string v3, "mitype"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/util/font/FontNameUtil;->isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 146
    :cond_48
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist changeNameGradeByWeight(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "weight"    # I

    .line 123
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    .line 124
    return-object v0

    .line 126
    :cond_5
    invoke-static {p1}, Lmiui/util/font/FontWght;->getWeightIdx(I)I

    move-result v2

    .line 127
    .local v2, "weightIdx":I
    if-ne v2, v1, :cond_c

    .line 128
    return-object v0

    .line 130
    :cond_c
    sget-object v0, Lmiui/util/font/FontNameUtil;->GRADE_NAME_ARRAY:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p0, v2, v0}, Lmiui/util/font/FontNameUtil;->changeGrade(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist convertToMiuiNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "fontNames"    # [Ljava/lang/String;

    .line 227
    if-eqz p0, :cond_3c

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    sget-object v1, Lmiui/util/font/FontNameUtil;->DEFAULT_NAME_MAP:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3c

    .line 229
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_39

    aget-object v4, p0, v3

    .line 230
    .local v4, "fontName":Ljava/lang/String;
    sget-object v5, Lmiui/util/font/FontNameUtil;->DEFAULT_NAME_MAP:[Ljava/lang/String;

    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 231
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mipro-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1

    .line 229
    .end local v4    # "fontName":Ljava/lang/String;
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 228
    :cond_39
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 236
    .end local v0    # "i":I
    :cond_3c
    sget-object v0, Lmiui/util/font/FontNameUtil;->MIUI_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist customGradeToSysFontName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "fontName"    # Ljava/lang/String;

    .line 214
    const-string v0, "extralight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 215
    const-string v0, "sans-serif-thin"

    return-object v0

    .line 216
    :cond_b
    const-string v0, "normal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 217
    const-string v0, "sans-serif-light"

    return-object v0

    .line 218
    :cond_16
    const-string v0, "demibold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "semibold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_35

    .line 220
    :cond_27
    const-string v0, "bold"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 221
    const-string v0, "sans-serif-black"

    return-object v0

    .line 223
    :cond_32
    const-string v0, ""

    return-object v0

    .line 219
    :cond_35
    :goto_35
    const-string v0, "sans-serif-medium"

    return-object v0
.end method

.method private static blacklist getBoldFontNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "fontNames"    # [Ljava/lang/String;

    .line 240
    sget-object v0, Lmiui/util/font/FontNameUtil;->GRADE_NAME_ARRAY:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiui/util/font/FontNameUtil;->getMatchedNameIndex([Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    .line 241
    .local v2, "idx":I
    if-ltz v2, :cond_14

    array-length v0, v0

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_14

    .line 242
    sget-object v0, Lmiui/util/font/FontNameUtil;->MIUI_VF_NAME:[[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 244
    :cond_14
    return-object p0
.end method

.method private static blacklist getFamilyNameField()Ljava/lang/reflect/Field;
    .registers 3

    .line 51
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "familyName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 52
    :catch_9
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FontNameManager"

    const-string v2, "Typeface has no familyName field"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;
    .registers 5
    .param p0, "oldTypeface"    # Landroid/graphics/Typeface;

    .line 150
    if-eqz p0, :cond_2e

    sget-object v0, Lmiui/util/font/FontNameUtil;->sFamilyNameField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_7

    goto :goto_2e

    .line 153
    :cond_7
    const/4 v1, 0x0

    .line 155
    .local v1, "fontNames":[Ljava/lang/String;
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_10

    move-object v1, v0

    .line 158
    goto :goto_18

    .line 156
    :catch_10
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FontNameManager"

    const-string v3, "get familyName failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18
    const-string v0, "miui-bold"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 160
    sget-object v0, Lmiui/util/font/FontNameUtil;->FONT_NAME_MIPRO_MEDIUM:[Ljava/lang/String;

    return-object v0

    .line 162
    :cond_27
    if-nez v1, :cond_2c

    sget-object v0, Lmiui/util/font/FontNameUtil;->FONT_NAME_DEFAULT:[Ljava/lang/String;

    goto :goto_2d

    :cond_2c
    move-object v0, v1

    :goto_2d
    return-object v0

    .line 151
    .end local v1    # "fontNames":[Ljava/lang/String;
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getGradeIndex([Ljava/lang/String;Z)I
    .registers 6
    .param p0, "names"    # [Ljava/lang/String;
    .param p1, "isBold"    # Z

    .line 279
    sget-object v0, Lmiui/util/font/FontNameUtil;->GRADE_NAME_ARRAY:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lmiui/util/font/FontNameUtil;->getMatchedNameIndex([Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    .line 280
    .local v2, "idx":I
    if-ltz v2, :cond_b

    move v3, v2

    goto :goto_c

    :cond_b
    const/4 v3, 0x4

    .line 281
    .local v3, "retIdx":I
    :goto_c
    if-eqz p1, :cond_14

    array-length v0, v0

    sub-int/2addr v0, v1

    if-ge v3, v0, :cond_14

    .line 282
    add-int/lit8 v3, v3, 0x1

    .line 284
    :cond_14
    return v3
.end method

.method private static blacklist getMatchedNameIndex([Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 11
    .param p0, "names"    # [Ljava/lang/String;
    .param p1, "checkNames"    # [Ljava/lang/String;
    .param p2, "useDefault"    # Z

    .line 248
    const/4 v0, 0x4

    if-eqz p0, :cond_3a

    array-length v1, p0

    if-eqz v1, :cond_3a

    if-eqz p1, :cond_3a

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_3a

    .line 251
    :cond_c
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_1d

    aget-object v4, p0, v3

    .line 252
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4, p1, v2}, Lmiui/util/font/FontNameUtil;->getNameIndex(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v5

    .line 253
    .local v5, "idx":I
    if-ltz v5, :cond_1a

    .line 254
    return v5

    .line 251
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "idx":I
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 257
    :cond_1d
    const/4 v1, -0x1

    if-eqz p2, :cond_39

    .line 258
    aget-object v2, p0, v2

    const-string v3, "mipro"

    const-string v4, "miui"

    const-string v5, "mitype"

    const-string v6, "mitype-mono"

    const-string v7, "theme-var"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/util/font/FontNameUtil;->isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 260
    goto :goto_38

    :cond_37
    move v0, v1

    .line 258
    :goto_38
    return v0

    .line 262
    :cond_39
    return v1

    .line 249
    :cond_3a
    :goto_3a
    return v0
.end method

.method public static blacklist getMiproNamesByStyle(Landroid/graphics/Typeface;)[Ljava/lang/String;
    .registers 4
    .param p0, "oldTypeface"    # Landroid/graphics/Typeface;

    .line 189
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-ne p0, v0, :cond_d

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-eq v0, v1, :cond_d

    .line 190
    sget-object v0, Lmiui/util/font/FontNameUtil;->FONT_NAME_MIPRO_MEDIUM:[Ljava/lang/String;

    .local v0, "fontNames":[Ljava/lang/String;
    goto :goto_3b

    .line 192
    .end local v0    # "fontNames":[Ljava/lang/String;
    :cond_d
    invoke-static {p0}, Lmiui/util/font/FontNameUtil;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "fontNames":[Ljava/lang/String;
    if-eqz p0, :cond_39

    if-eqz v0, :cond_39

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne p0, v1, :cond_1a

    goto :goto_39

    .line 195
    :cond_1a
    sget-object v1, Lmiui/util/font/FontNameUtil;->DEFAULT_FONT_NAMES:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmiui/util/font/FontNameUtil;->getMatchedNameIndex([Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v1

    if-ltz v1, :cond_28

    .line 196
    invoke-static {v0}, Lmiui/util/font/FontNameUtil;->convertToMiuiNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 197
    :cond_28
    const-string v1, "theme-var"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 198
    invoke-static {v0}, Lmiui/util/font/FontNameUtil;->convertToMiuiNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 194
    :cond_39
    :goto_39
    sget-object v0, Lmiui/util/font/FontNameUtil;->MIUI_NAMES:[Ljava/lang/String;

    .line 201
    :cond_3b
    :goto_3b
    return-object v0
.end method

.method public static blacklist getNameIndex(Ljava/lang/String;[Ljava/lang/String;Z)I
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "checkNames"    # [Ljava/lang/String;
    .param p2, "useEqual"    # Z

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    .line 267
    if-eqz p2, :cond_f

    .line 268
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 269
    return v0

    .line 271
    :cond_f
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 272
    return v0

    .line 266
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getOriName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 326
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 327
    .local v0, "end":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    move v0, v1

    .line 328
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 329
    .local v1, "start":I
    :goto_1c
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist isMiuiFont(Landroid/graphics/Typeface;)Z
    .registers 5
    .param p0, "font"    # Landroid/graphics/Typeface;

    .line 97
    invoke-static {p0}, Lmiui/util/font/FontNameUtil;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "mipro"

    const-string v2, "miui"

    const-string v3, "mitype"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/font/FontNameUtil;->isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "familyNames"    # [Ljava/lang/String;

    .line 299
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_1b

    aget-object v3, p1, v2

    .line 300
    .local v3, "familyName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    .line 301
    const/4 v0, 0x1

    return v0

    .line 299
    .end local v3    # "familyName":Ljava/lang/String;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 304
    :cond_1b
    return v1
.end method

.method public static varargs blacklist isNameOf([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .param p0, "names"    # [Ljava/lang/String;
    .param p1, "familyNames"    # [Ljava/lang/String;

    .line 288
    const/4 v0, 0x0

    if-eqz p0, :cond_17

    array-length v1, p0

    if-lez v1, :cond_17

    .line 289
    array-length v1, p0

    move v2, v0

    :goto_8
    if-ge v2, v1, :cond_17

    aget-object v3, p0, v2

    .line 290
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3, p1}, Lmiui/util/font/FontNameUtil;->isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 291
    const/4 v0, 0x1

    return v0

    .line 289
    .end local v3    # "name":Ljava/lang/String;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 295
    :cond_17
    return v0
.end method

.method public static blacklist isVersionMatched(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "version"    # I

    .line 308
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 309
    .local v0, "idx":I
    const/4 v1, 0x0

    if-ltz v0, :cond_1d

    .line 310
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "strVer":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    .line 313
    .end local v2    # "strVer":Ljava/lang/String;
    :cond_1d
    return v1
.end method

.method private static blacklist mapToSysFontName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "fontName"    # Ljava/lang/String;

    .line 205
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    sget-object v1, Lmiui/util/font/FontNameUtil;->DEFAULT_NAME_MAP:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_29

    .line 206
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sans-serif-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 205
    :cond_26
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 210
    .end local v0    # "i":I
    :cond_29
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist setFontNames(Landroid/graphics/Typeface;[Ljava/lang/String;)V
    .registers 5
    .param p0, "font"    # Landroid/graphics/Typeface;
    .param p1, "fontNames"    # [Ljava/lang/String;

    .line 166
    sget-object v0, Lmiui/util/font/FontNameUtil;->sFamilyNameField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_14

    if-nez p0, :cond_7

    goto :goto_14

    .line 170
    :cond_7
    :try_start_7
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 173
    goto :goto_13

    .line 171
    :catch_b
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FontNameManager"

    const-string v2, "set familyName failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    return-void

    .line 167
    :cond_14
    :goto_14
    return-void
.end method

.method public static blacklist setVersion(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "version"    # I

    .line 317
    move-object v0, p0

    .line 318
    .local v0, "oriName":Ljava/lang/String;
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 319
    .local v2, "idx":I
    if-ltz v2, :cond_e

    .line 320
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs blacklist toSysFontName(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "checkNames"    # [Ljava/lang/String;

    .line 177
    invoke-static {p0, p1}, Lmiui/util/font/FontNameUtil;->isNameOf(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 178
    return-object p0

    .line 180
    :cond_7
    invoke-static {p0}, Lmiui/util/font/FontNameUtil;->mapToSysFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "fontName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 182
    invoke-static {p0}, Lmiui/util/font/FontNameUtil;->customGradeToSysFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "sans-serif"

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    :goto_1f
    return-object v1
.end method
