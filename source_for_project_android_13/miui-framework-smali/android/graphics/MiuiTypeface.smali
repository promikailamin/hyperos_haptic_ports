.class public Landroid/graphics/MiuiTypeface;
.super Ljava/lang/Object;
.source "MiuiTypeface.java"


# static fields
.field private static final blacklist DROID_SANS:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Regular.ttf"

.field private static final blacklist DROID_SANS_BOLD:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Bold.ttf"

.field private static final blacklist DROID_SANS_FALLBACK:Ljava/lang/String; = "/data/system/theme/fonts/DroidSansFallback.ttf"

.field private static blacklist DROID_SANS_FONTS:[Ljava/lang/String; = null

.field private static blacklist DROID_SANS_FONTS_BOLD:[Ljava/lang/String; = null

.field public static blacklist FLIPFONT:Landroid/graphics/Typeface; = null

.field public static blacklist FLIPFONT_BOLD:Landroid/graphics/Typeface; = null

.field public static blacklist FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface; = null

.field public static blacklist FLIPFONT_ITALIC:Landroid/graphics/Typeface; = null

.field private static final blacklist FONTS_FOLDER:Ljava/lang/String; = "/data/system/theme/fonts/"

.field public static final blacklist MONOSPACE_INDEX:I = 0x3

.field public static final blacklist SANS_INDEX:I = 0x1

.field public static final blacklist SERIF_INDEX:I = 0x2

.field private static blacklist mLastModified:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 18
    const-string v0, "/data/system/theme/fonts/DroidSansFallback.ttf"

    const-string v1, "/data/system/theme/fonts/Roboto-Regular.ttf"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS:[Ljava/lang/String;

    .line 21
    const-string v0, "/data/system/theme/fonts/Roboto-Bold.ttf"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS_BOLD:[Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 26
    sput-object v0, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 27
    sput-object v0, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 28
    sput-object v0, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getChangedTypeface(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;
    .registers 4
    .param p0, "oldtf"    # Landroid/graphics/Typeface;
    .param p1, "typefaceIndex"    # I
    .param p2, "style"    # I

    .line 47
    invoke-static {p1, p2}, Landroid/graphics/MiuiTypeface;->getTypefaceFlipFont(II)Landroid/graphics/Typeface;

    move-result-object v0

    .line 48
    .local v0, "newtf":Landroid/graphics/Typeface;
    if-eqz v0, :cond_7

    .line 49
    return-object v0

    .line 51
    :cond_7
    return-object p0
.end method

.method public static blacklist getDefaultTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 3
    .param p0, "tf"    # Landroid/graphics/Typeface;

    .line 56
    if-nez p0, :cond_8

    .line 57
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/MiuiTypeface;->getTypefaceFlipFont(II)Landroid/graphics/Typeface;

    move-result-object p0

    .line 59
    :cond_8
    return-object p0
.end method

.method private static blacklist getFlipFontPath(II)Ljava/lang/String;
    .registers 8
    .param p0, "typefaceIndex"    # I
    .param p1, "styleIndex"    # I

    .line 63
    const-string v0, ""

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    .line 64
    return-object v0

    .line 66
    :cond_6
    const/4 v2, 0x0

    .line 67
    .local v2, "fonts":[Ljava/lang/String;
    if-nez p1, :cond_c

    .line 68
    sget-object v2, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS:[Ljava/lang/String;

    goto :goto_10

    .line 69
    :cond_c
    if-ne p1, v1, :cond_10

    .line 70
    sget-object v2, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS_BOLD:[Ljava/lang/String;

    .line 73
    :cond_10
    :goto_10
    array-length v1, v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_25

    aget-object v4, v2, v3

    .line 74
    .local v4, "font":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 75
    return-object v4

    .line 73
    .end local v4    # "font":Ljava/lang/String;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 77
    :cond_25
    return-object v0
.end method

.method private static blacklist getTypefaceFlipFont(II)Landroid/graphics/Typeface;
    .registers 4
    .param p0, "typefaceIndex"    # I
    .param p1, "style"    # I

    .line 37
    const-string v0, "is_patchrom"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1a

    if-ltz p1, :cond_1a

    const/4 v0, 0x3

    if-le p1, v0, :cond_12

    goto :goto_1a

    .line 42
    :cond_12
    invoke-static {}, Landroid/graphics/MiuiTypeface;->setTypefaceFlipFont()V

    .line 43
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p1

    return-object v0

    .line 40
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist setTypefaceFlipFont()V
    .registers 12

    .line 81
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/MiuiTypeface;->getFlipFontPath(II)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "fontPath":Ljava/lang/String;
    invoke-static {v0, v0}, Landroid/graphics/MiuiTypeface;->getFlipFontPath(II)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "fontBoldPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v4, "fontFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v5, :cond_30

    .line 85
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 86
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 87
    const/4 v5, 0x0

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    sput-object v8, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 88
    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    goto :goto_66

    .line 89
    :cond_30
    sget-wide v8, Landroid/graphics/MiuiTypeface;->mLastModified:J

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-eqz v5, :cond_66

    .line 91
    :try_start_3a
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 94
    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_46} :catch_47

    .line 99
    goto :goto_50

    .line 95
    :catch_47
    move-exception v5

    .line 98
    .local v5, "e":Ljava/lang/RuntimeException;
    sget-object v8, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v8, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    sput-object v8, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 100
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_50
    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 101
    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 102
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sput-wide v8, Landroid/graphics/MiuiTypeface;->mLastModified:J

    .line 105
    :cond_66
    :goto_66
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v8, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    aput-object v8, v5, v1

    .line 106
    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    aput-object v5, v1, v0

    .line 107
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    aput-object v1, v0, v7

    .line 108
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    aput-object v1, v0, v6

    .line 109
    return-void
.end method
