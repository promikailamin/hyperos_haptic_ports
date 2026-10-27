.class Lmiui/util/font/ThemeFontInfo;
.super Ljava/lang/Object;
.source "ThemeFontInfo.java"


# static fields
.field static final blacklist BOLD_WEIGHT_DELTA:I = 0x12c

.field private static final blacklist REGULAR_FONT_NAME:Ljava/lang/String; = "sans-serif-regular"


# instance fields
.field public blacklist cache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cacheItalic:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist file:Ljava/lang/String;

.field private blacklist mThemeTypeface:Landroid/graphics/Typeface;

.field public blacklist names:[Ljava/lang/String;

.field public blacklist weights:[I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiui/util/font/ThemeFontInfo;->cache:Landroid/util/SparseArray;

    .line 16
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiui/util/font/ThemeFontInfo;->cacheItalic:Landroid/util/SparseArray;

    return-void
.end method

.method private blacklist createAndCacheFont(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 7
    .param p1, "themeFile"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "fontNames"    # [Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lmiui/util/font/ThemeFontInfo;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_53

    .line 70
    iget-object v0, p0, Lmiui/util/font/ThemeFontInfo;->mThemeTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_2e

    .line 71
    new-instance v0, Landroid/graphics/Typeface$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/theme/fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p2}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/font/ThemeFontInfo;->mThemeTypeface:Landroid/graphics/Typeface;

    .line 74
    :cond_2e
    iget-object v0, p0, Lmiui/util/font/ThemeFontInfo;->mThemeTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    .line 75
    .local v0, "fontItalic":Landroid/graphics/Typeface;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 76
    invoke-static {v0, p3}, Lmiui/util/font/FontNameUtil;->setFontNames(Landroid/graphics/Typeface;[Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lmiui/util/font/ThemeFontInfo;->cacheItalic:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lmiui/util/font/ThemeFontInfo;->mThemeTypeface:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    .line 80
    .local v1, "font":Landroid/graphics/Typeface;
    invoke-virtual {v1, v2}, Landroid/graphics/Typeface;->setStyle(I)V

    .line 81
    invoke-static {v1, p3}, Lmiui/util/font/FontNameUtil;->setFontNames(Landroid/graphics/Typeface;[Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lmiui/util/font/ThemeFontInfo;->cache:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    .end local v0    # "fontItalic":Landroid/graphics/Typeface;
    .end local v1    # "font":Landroid/graphics/Typeface;
    :cond_53
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 35
    iget-object v0, p0, Lmiui/util/font/ThemeFontInfo;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 36
    iget-object v0, p0, Lmiui/util/font/ThemeFontInfo;->cacheItalic:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/font/ThemeFontInfo;->mThemeTypeface:Landroid/graphics/Typeface;

    .line 38
    return-void
.end method

.method public blacklist getFont(IZ)Landroid/graphics/Typeface;
    .registers 4
    .param p1, "weight"    # I
    .param p2, "isItalic"    # Z

    .line 62
    if-eqz p2, :cond_b

    .line 63
    iget-object v0, p0, Lmiui/util/font/ThemeFontInfo;->cacheItalic:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0

    .line 65
    :cond_b
    iget-object v0, p0, Lmiui/util/font/ThemeFontInfo;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method public blacklist getThemeFontWithStyle(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 9
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "style"    # I

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v1, p0, Lmiui/util/font/ThemeFontInfo;->names:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lmiui/util/font/FontNameUtil;->getNameIndex(Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v1

    .line 43
    .local v1, "nameIdx":I
    if-ltz v1, :cond_49

    .line 44
    iget-object v3, p0, Lmiui/util/font/ThemeFontInfo;->weights:[I

    aget v3, v3, v1

    .line 46
    .local v3, "weight":I
    const-string v4, "sans-serif-regular"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 47
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1d

    const/16 v4, 0x2bc

    goto :goto_1f

    :cond_1d
    const/16 v4, 0x190

    .local v4, "boldWeight":I
    :goto_1f
    goto :goto_28

    .line 49
    .end local v4    # "boldWeight":I
    :cond_20
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_27

    add-int/lit16 v4, v3, 0x12c

    goto :goto_28

    :cond_27
    move v4, v3

    .line 51
    .restart local v4    # "boldWeight":I
    :goto_28
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    .line 52
    .local v2, "isItalic":Z
    :goto_2e
    if-eq v4, v3, :cond_3d

    iget-object v5, p0, Lmiui/util/font/ThemeFontInfo;->cache:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_3d

    .line 53
    invoke-virtual {p0, v4, v2}, Lmiui/util/font/ThemeFontInfo;->getFont(IZ)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_49

    .line 54
    :cond_3d
    iget-object v5, p0, Lmiui/util/font/ThemeFontInfo;->cache:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_49

    .line 55
    invoke-virtual {p0, v3, v2}, Lmiui/util/font/ThemeFontInfo;->getFont(IZ)Landroid/graphics/Typeface;

    move-result-object v0

    .line 58
    .end local v2    # "isItalic":Z
    .end local v3    # "weight":I
    .end local v4    # "boldWeight":I
    :cond_49
    :goto_49
    return-object v0
.end method

.method public blacklist loadThemeFont(Ljava/lang/String;I)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "themeVersion"    # I

    .line 22
    iget-object v0, p0, Lmiui/util/font/ThemeFontInfo;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 23
    return-void

    .line 25
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lmiui/util/font/ThemeFontInfo;->names:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3a

    .line 26
    iget-object v1, p0, Lmiui/util/font/ThemeFontInfo;->weights:[I

    aget v1, v1, v0

    .line 27
    .local v1, "weight":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/util/font/ThemeFontInfo;->names:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v4, p2}, Lmiui/util/font/FontNameUtil;->setVersion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 30
    .local v2, "fontNames":[Ljava/lang/String;
    iget-object v3, p0, Lmiui/util/font/ThemeFontInfo;->file:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lmiui/util/font/ThemeFontInfo;->createAndCacheFont(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 25
    .end local v1    # "weight":I
    .end local v2    # "fontNames":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 32
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method
