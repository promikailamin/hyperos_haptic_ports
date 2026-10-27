.class public Lmiui/util/font/MultiLangHelper;
.super Ljava/lang/Object;
.source "MultiLangHelper.java"


# static fields
.field private static final blacklist MIPRO_ARABIC_FILE:Ljava/lang/String; = "/system/fonts/MiSansArabicVF.ttf"

.field private static final blacklist MIPRO_BENGALI_FILE:Ljava/lang/String; = "/system/fonts/MiSansBengaliVF.ttf"

.field private static final blacklist MIPRO_DEVANAGARI_FILE:Ljava/lang/String; = "/system/fonts/MiSansDevanagariVF.ttf"

.field private static final blacklist MIPRO_FILE:Ljava/lang/String; = "/system/fonts/MiSansVF.ttf"

.field private static final blacklist MIPRO_GUJARATI_FILE:Ljava/lang/String; = "/system/fonts/MiSansGujaratiVF.ttf"

.field private static final blacklist MIPRO_GURMUKHI_FILE:Ljava/lang/String; = "/system/fonts/MiSansGurmukhiVF.ttf"

.field private static final blacklist MIPRO_KANNADA_FILE:Ljava/lang/String; = "/system/fonts/MiSansKannadaVF.ttf"

.field private static final blacklist MIPRO_KHMER_FILE:Ljava/lang/String; = "/system/fonts/MiSansKhmerVF.ttf"

.field private static final blacklist MIPRO_LAO_FILE:Ljava/lang/String; = "/system/fonts/MiSansLaoVF.ttf"

.field private static final blacklist MIPRO_LATIN_FILE:Ljava/lang/String; = "/system/fonts/MiSansLatinVF.ttf"

.field private static final blacklist MIPRO_MALAYALAM_FILE:Ljava/lang/String; = "/system/fonts/MiSansMalayalamVF.ttf"

.field private static final blacklist MIPRO_MYANMAR_FILE:Ljava/lang/String; = "/system/fonts/MiSansMyanmarVF.ttf"

.field private static final blacklist MIPRO_ODIA_FILE:Ljava/lang/String; = "/system/fonts/MiSansOdiaVF.ttf"

.field private static final blacklist MIPRO_TAMIL_FILE:Ljava/lang/String; = "/system/fonts/MiSansTamilVF.ttf"

.field private static final blacklist MIPRO_TC_FILE:Ljava/lang/String; = "/system/fonts/MiSansTCVF.ttf"

.field private static final blacklist MIPRO_TELUGU_FILE:Ljava/lang/String; = "/system/fonts/MiSansTeluguVF.ttf"

.field private static final blacklist MIPRO_THAI_FILE:Ljava/lang/String; = "/system/fonts/MiSansThaiVF.ttf"

.field private static final blacklist MIPRO_TIBETAN_FILE:Ljava/lang/String; = "/system/fonts/MiSansTibetanVF.ttf"

.field private static final blacklist MIPRO_TIBETAN_WHITELIST:Ljava/util/List;

.field private static final blacklist MIUI_FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field private static final blacklist sFileLocales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sLocaleFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sLocaleList:Landroid/os/LocaleList;

.field private static final blacklist sOverlapFiles:Ljava/util/Set;

.field private static blacklist sTextOverlap:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/font/MultiLangHelper;->sLocaleFiles:Ljava/util/Map;

    .line 48
    new-instance v0, Lmiui/util/font/MultiLangHelper$1;

    invoke-direct {v0}, Lmiui/util/font/MultiLangHelper$1;-><init>()V

    sput-object v0, Lmiui/util/font/MultiLangHelper;->sFileLocales:Ljava/util/Map;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lmiui/util/font/MultiLangHelper;->sLocaleList:Landroid/os/LocaleList;

    .line 83
    invoke-static {}, Lmiui/util/font/MultiLangHelper;->initMultiLangInfo()V

    .line 126
    new-instance v0, Lmiui/util/font/MultiLangHelper$2;

    invoke-direct {v0}, Lmiui/util/font/MultiLangHelper$2;-><init>()V

    sput-object v0, Lmiui/util/font/MultiLangHelper;->MIPRO_TIBETAN_WHITELIST:Ljava/util/List;

    .line 168
    new-instance v0, Lmiui/util/font/MultiLangHelper$3;

    invoke-direct {v0}, Lmiui/util/font/MultiLangHelper$3;-><init>()V

    sput-object v0, Lmiui/util/font/MultiLangHelper;->sOverlapFiles:Ljava/util/Set;

    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/util/font/MultiLangHelper;->sTextOverlap:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMiproFileList(Ljava/util/Locale;)Ljava/util/List;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {p0}, Lmiui/util/font/MultiLangHelper;->getMiuiFontPathByLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    sget-object v3, Lmiui/util/font/MultiLangHelper;->sLocaleFiles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .local v1, "fileList":Ljava/util/List;
    const-string v2, "/system/fonts/MiSansVF.ttf"

    invoke-static {v1, v2}, Lmiui/util/font/MultiLangHelper;->moveFileToHead(Ljava/util/List;Ljava/lang/String;)V

    .line 135
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_3c

    .line 136
    const-string v2, "/system/fonts/MiSansTibetanVF.ttf"

    if-eq v0, v2, :cond_5c

    .line 137
    invoke-static {v1, v0}, Lmiui/util/font/MultiLangHelper;->moveFileToHead(Ljava/util/List;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lmiui/util/TypefaceUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 139
    .local v3, "context":Landroid/content/Context;
    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_30

    :cond_2f
    const/4 v4, 0x0

    .line 140
    .local v4, "pkgName":Ljava/lang/String;
    :goto_30
    sget-object v5, Lmiui/util/font/MultiLangHelper;->MIPRO_TIBETAN_WHITELIST:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 141
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 143
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_3b
    goto :goto_5c

    .line 145
    :cond_3c
    const-string v3, "ja-JP"

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 146
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 147
    const-string v2, "/system/fonts/MiSansTCVF.ttf"

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    :cond_50
    const-string v2, "/system/fonts/MiSansLatinVF.ttf"

    invoke-static {v1, v2}, Lmiui/util/font/MultiLangHelper;->moveFileToHead(Ljava/util/List;Ljava/lang/String;)V

    .line 150
    const-string v2, "/system/fonts/MiSansMyanmarVF.ttf"

    if-eq v0, v2, :cond_5c

    .line 151
    invoke-static {v1, v0}, Lmiui/util/font/MultiLangHelper;->moveFileToHead(Ljava/util/List;Ljava/lang/String;)V

    .line 154
    :cond_5c
    :goto_5c
    return-object v1
.end method

.method public static blacklist getMiuiFontPathByLocale(Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;

    .line 158
    sget-object v0, Lmiui/util/font/MultiLangHelper;->sLocaleFiles:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_15

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 160
    :cond_15
    sget-object v1, Lmiui/util/font/MultiLangHelper;->sLocaleFiles:Ljava/util/Map;

    sget-object v2, Lmiui/util/font/MultiLangHelper;->sLocaleList:Landroid/os/LocaleList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 162
    :cond_2e
    if-eqz v0, :cond_3b

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_45

    .line 163
    :cond_3b
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_42

    const-string v1, "/system/fonts/MiSansLatinVF.ttf"

    goto :goto_44

    :cond_42
    const-string v1, "/system/fonts/MiSansVF.ttf"

    :goto_44
    move-object v0, v1

    .line 165
    :cond_45
    return-object v0
.end method

.method public static blacklist getSupportedLocaleList()Landroid/os/LocaleList;
    .registers 1

    .line 107
    sget-object v0, Lmiui/util/font/MultiLangHelper;->sLocaleList:Landroid/os/LocaleList;

    if-nez v0, :cond_7

    .line 108
    invoke-static {}, Lmiui/util/font/MultiLangHelper;->initMultiLangInfo()V

    .line 110
    :cond_7
    sget-object v0, Lmiui/util/font/MultiLangHelper;->sLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public static blacklist getTextOverlap()Z
    .registers 1

    .line 190
    sget-boolean v0, Lmiui/util/font/MultiLangHelper;->sTextOverlap:Z

    return v0
.end method

.method private static blacklist initMultiLangInfo()V
    .registers 9

    .line 88
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3e

    .line 89
    sget-object v0, Lmiui/util/font/MultiLangHelper;->sLocaleFiles:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "/system/fonts/MiSansVF.ttf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lmiui/util/font/MultiLangHelper;->sLocaleFiles:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "/system/fonts/MiSansLatinVF.ttf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lmiui/util/font/MultiLangHelper;->sLocaleFiles:Ljava/util/Map;

    const-string v1, "zh-TW"

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansTCVF.ttf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lmiui/util/font/MultiLangHelper;->sLocaleFiles:Ljava/util/Map;

    const-string v1, "bo-CN"

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansTibetanVF.ttf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lmiui/util/font/MultiLangHelper;->sLocaleFiles:Ljava/util/Map;

    const-string v1, "ug-CN"

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    const-string v2, "/system/fonts/MiSansArabicVF.ttf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 95
    :cond_3e
    sget-object v0, Lmiui/util/font/MultiLangHelper;->sFileLocales:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_5c
    if-ge v4, v3, :cond_72

    aget-object v5, v2, v4

    .line 97
    .local v5, "locale":Ljava/lang/String;
    sget-object v6, Lmiui/util/font/MultiLangHelper;->sLocaleFiles:Ljava/util/Map;

    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v5    # "locale":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 99
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_72
    goto :goto_48

    .line 101
    :cond_73
    :goto_73
    sget-object v0, Lmiui/util/font/MultiLangHelper;->sLocaleFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 102
    .local v1, "locale":Ljava/util/Locale;
    new-instance v2, Landroid/os/LocaleList;

    sget-object v3, Lmiui/util/font/MultiLangHelper;->sLocaleList:Landroid/os/LocaleList;

    invoke-direct {v2, v1, v3}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    sput-object v2, Lmiui/util/font/MultiLangHelper;->sLocaleList:Landroid/os/LocaleList;

    .line 103
    .end local v1    # "locale":Ljava/util/Locale;
    goto :goto_7d

    .line 104
    :cond_93
    return-void
.end method

.method private static blacklist moveFileToHead(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 114
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 115
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 116
    move v1, v0

    .local v1, "j":I
    :goto_12
    if-lez v1, :cond_22

    .line 117
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 119
    .end local v1    # "j":I
    :cond_22
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 120
    goto :goto_2a

    .line 114
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    .end local v0    # "i":I
    :cond_2a
    :goto_2a
    return-void
.end method

.method public static blacklist setTextOverlap(Landroid/os/LocaleList;)V
    .registers 3
    .param p0, "localeList"    # Landroid/os/LocaleList;

    .line 184
    if-eqz p0, :cond_13

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/font/MultiLangHelper;->getMiuiFontPathByLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lmiui/util/font/MultiLangHelper;->sOverlapFiles:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lmiui/util/font/MultiLangHelper;->sTextOverlap:Z

    .line 188
    .end local v0    # "path":Ljava/lang/String;
    :cond_13
    return-void
.end method
