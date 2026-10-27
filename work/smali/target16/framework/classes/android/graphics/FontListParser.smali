.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;
.source "FontListParser.java"


# static fields
.field public static final blacklist ATTR_FALLBACK_FOR:Ljava/lang/String; = "fallbackFor"

.field public static final blacklist ATTR_INDEX:Ljava/lang/String; = "index"

.field private static final blacklist ATTR_LANG:Ljava/lang/String; = "lang"

.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field public static final blacklist ATTR_POSTSCRIPT_NAME:Ljava/lang/String; = "postScriptName"

.field public static final blacklist ATTR_STYLE:Ljava/lang/String; = "style"

.field public static final blacklist ATTR_STYLEVALUE:Ljava/lang/String; = "stylevalue"

.field public static final blacklist ATTR_SUPPORTED_AXES:Ljava/lang/String; = "supportedAxes"

.field public static final blacklist ATTR_TAG:Ljava/lang/String; = "tag"

.field private static final blacklist ATTR_VARIANT:Ljava/lang/String; = "variant"

.field public static final blacklist ATTR_WEIGHT:Ljava/lang/String; = "weight"

.field private static final greylist-max-o FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field public static final blacklist STYLE_ITALIC:Ljava/lang/String; = "italic"

.field public static final blacklist STYLE_NORMAL:Ljava/lang/String; = "normal"

.field private static final blacklist TAG:Ljava/lang/String; = "FontListParser"

.field public static final blacklist TAG_AXIS:Ljava/lang/String; = "axis"

.field private static final blacklist TAG_FONT:Ljava/lang/String; = "font"

.field private static final blacklist TAG_ITAL:Ljava/lang/String; = "ital"

.field private static final blacklist TAG_WGHT:Ljava/lang/String; = "wght"

.field private static final blacklist VARIANT_COMPACT:Ljava/lang/String; = "compact"

.field private static final blacklist VARIANT_ELEGANT:Ljava/lang/String; = "elegant"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 371
    nop

    .line 372
    const-string v0, "^[ \\n\\r\\t]+|[ \\n\\r\\t]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 371
    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist findUpdatedFontFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 463
    if-eqz p1, :cond_f

    .line 464
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 465
    if-eqz p0, :cond_f

    .line 466
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 469
    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    .line 249
    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static greylist-max-r parse(Ljava/io/InputStream;)Landroid/text/FontConfig;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 87
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 88
    new-instance v2, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v2}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v1, "/system/fonts/"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 114
    if-eqz p2, :cond_23

    .line 115
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_1b

    .line 116
    :try_start_7
    invoke-static {v1, p3, p4}, Landroid/graphics/fonts/FontCustomizationParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/fonts/FontCustomizationParser$Result;

    move-result-object p2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 118
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1b

    goto :goto_21

    .line 115
    :catchall_f
    move-exception v0

    move-object p2, v0

    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_1a

    :catchall_15
    move-exception v0

    move-object p3, v0

    :try_start_17
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw p2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1b

    .line 118
    :catch_1b
    move-exception v0

    .line 120
    new-instance p2, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    .line 121
    :goto_21
    move-object v2, p2

    goto :goto_29

    .line 123
    :cond_23
    new-instance p2, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    move-object v2, p2

    .line 126
    :goto_29
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 127
    :try_start_2e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 128
    const/4 p0, 0x0

    invoke-interface {v0, p2, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 129
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 130
    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;

    move-result-object p0
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_46

    .line 132
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 130
    return-object p0

    .line 126
    :catchall_46
    move-exception v0

    move-object p0, v0

    :try_start_48
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_51

    :catchall_4c
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw p0
.end method

.method public static greylist-max-o readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    const-string/jumbo v2, "to"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    const-string/jumbo v3, "weight"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    if-nez v1, :cond_1b

    .line 490
    const/16 v1, 0x190

    goto :goto_1f

    .line 492
    :cond_1b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 494
    :goto_1f
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 495
    new-instance p0, Landroid/text/FontConfig$Alias;

    invoke-direct {p0, v0, v2, v1}, Landroid/text/FontConfig$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method private static greylist-max-o readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    const-string/jumbo v0, "tag"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    const-string/jumbo v2, "stylevalue"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 477
    new-instance p0, Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    return-object p0
.end method

.method public static blacklist readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/FontCustomizationParser$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JIZ)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    move/from16 v1, p7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getAdditionalAliases()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    nop

    .line 165
    invoke-virtual {p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getAdditionalNamedFamilies()Ljava/util/Map;

    move-result-object v5

    .line 167
    nop

    .line 168
    const-string v6, "familyset"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-interface {p0, v7, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 169
    :goto_23
    invoke-static {p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_aa

    .line 170
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-eq v9, v7, :cond_31

    goto :goto_23

    .line 171
    :cond_31
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 172
    const-string v11, "family"

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6d

    .line 173
    const-string/jumbo v9, "name"

    invoke-interface {p0, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 174
    if-nez v9, :cond_51

    .line 175
    invoke-static {p0, p1, p3, v1}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v9

    .line 177
    if-nez v9, :cond_4d

    .line 178
    goto :goto_23

    .line 180
    :cond_4d
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    goto :goto_6a

    .line 183
    :cond_51
    invoke-static {p0, p1, p3, v1}, Landroid/graphics/FontListParser;->readNamedFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v11

    .line 185
    if-nez v11, :cond_58

    .line 186
    goto :goto_23

    .line 188
    :cond_58
    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_61

    .line 191
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_61
    if-eqz v6, :cond_6a

    .line 195
    invoke-virtual {v11}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    :cond_6a
    :goto_6a
    nop

    .line 199
    move v6, v10

    goto :goto_a8

    :cond_6d
    const-string v11, "family-list"

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_95

    .line 200
    invoke-static {p0, p1, p3, v1}, Landroid/graphics/FontListParser;->readNamedFamilyList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object v9

    .line 202
    if-nez v9, :cond_7c

    .line 203
    goto :goto_23

    .line 205
    :cond_7c
    invoke-virtual {v9}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_89

    .line 208
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_89
    if-eqz v6, :cond_92

    .line 212
    invoke-virtual {v9}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_92
    nop

    .line 215
    move v6, v10

    goto :goto_a8

    :cond_95
    const-string v10, "alias"

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 216
    invoke-static {p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 218
    :cond_a5
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 220
    :goto_a8
    goto/16 :goto_23

    .line 222
    :cond_aa
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 226
    move p1, v10

    :goto_b7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_cf

    .line 227
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/FontConfig$NamedFamilyList;

    invoke-virtual {v0}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_cc

    .line 229
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_cc
    add-int/lit8 p1, p1, 0x1

    goto :goto_b7

    .line 232
    :cond_cf
    move-object v1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    nop

    :goto_d6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-ge v10, p1, :cond_f2

    .line 234
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/FontConfig$Alias;

    .line 235
    invoke-virtual {p1}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 236
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_ef
    add-int/lit8 v10, v10, 0x1

    goto :goto_d6

    .line 240
    :cond_f2
    new-instance v0, Landroid/text/FontConfig;

    .line 241
    invoke-virtual {p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getLocaleFamilyCustomizations()Ljava/util/List;

    move-result-object v4

    move-wide/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 240
    return-object v0
.end method

.method public static blacklist readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$FontFamily;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const-string v0, ""

    const-string/jumbo v1, "lang"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string/jumbo v1, "variant"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    const-string v3, "ignore"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 268
    :goto_1c
    invoke-static {p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_44

    .line 269
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v6, :cond_2a

    goto :goto_1c

    .line 270
    :cond_2a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 271
    const-string v6, "font"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 272
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/FontListParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$Font;

    move-result-object v5

    .line 274
    if-eqz v5, :cond_3f

    .line 275
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_3f
    goto :goto_43

    .line 278
    :cond_40
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 280
    :goto_43
    goto :goto_1c

    .line 281
    :cond_44
    nop

    .line 282
    const/4 p0, 0x1

    const/4 p1, 0x0

    if-eqz v1, :cond_5c

    .line 283
    const-string p2, "compact"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 284
    move v6, p0

    goto :goto_5d

    .line 285
    :cond_53
    const-string p2, "elegant"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5c

    .line 286
    goto :goto_5d

    .line 290
    :cond_5c
    move v6, p1

    :goto_5d
    if-eqz v3, :cond_71

    const-string/jumbo p2, "true"

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_70

    const-string p2, "1"

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_71

    :cond_70
    goto :goto_72

    :cond_71
    move p0, p1

    .line 291
    :goto_72
    if-nez p0, :cond_85

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7b

    goto :goto_85

    .line 294
    :cond_7b
    new-instance p0, Landroid/text/FontConfig$FontFamily;

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p1

    invoke-direct {p0, v4, p1, v6}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Landroid/os/LocaleList;I)V

    return-object p0

    .line 292
    :cond_85
    :goto_85
    return-object v2
.end method

.method private static blacklist readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$Font;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$Font;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "index"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 382
    const/4 v4, 0x0

    if-nez v2, :cond_10

    move v10, v4

    goto :goto_15

    :cond_10
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v10, v2

    .line 383
    :goto_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 384
    const-string/jumbo v5, "weight"

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 385
    if-nez v5, :cond_26

    const/16 v5, 0x190

    goto :goto_2a

    :cond_26
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 386
    :goto_2a
    const-string/jumbo v6, "style"

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "italic"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 387
    const-string v7, "fallbackFor"

    invoke-interface {v0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 388
    const-string/jumbo v7, "postScriptName"

    invoke-interface {v0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 389
    const-string/jumbo v8, "supportedAxes"

    invoke-interface {v0, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 390
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    :goto_51
    invoke-static {v0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v11

    const/4 v13, 0x4

    if-eqz v11, :cond_85

    .line 392
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    if-ne v11, v13, :cond_65

    .line 393
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_65
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    const/4 v13, 0x2

    if-eq v11, v13, :cond_6d

    goto :goto_51

    .line 396
    :cond_6d
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 397
    const-string v13, "axis"

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    .line 398
    invoke-static {v0}, Landroid/graphics/FontListParser;->readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 400
    :cond_81
    invoke-static {v0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 402
    :goto_84
    goto :goto_51

    .line 403
    :cond_85
    sget-object v0, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    nop

    .line 406
    if-eqz v8, :cond_cd

    .line 407
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v11, v8

    move v14, v4

    move v15, v14

    :goto_9d
    if-ge v14, v11, :cond_c7

    aget-object v16, v8, v14

    .line 408
    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object v3

    .line 409
    move/from16 v16, v13

    const-string/jumbo v13, "wght"

    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b5

    .line 410
    or-int/lit8 v15, v15, 0x1

    goto :goto_c0

    .line 411
    :cond_b5
    const-string/jumbo v13, "ital"

    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 412
    or-int/lit8 v15, v15, 0x2

    .line 407
    :cond_c0
    :goto_c0
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v16

    move-object/from16 v3, v17

    goto :goto_9d

    :cond_c7
    move-object/from16 v17, v3

    move/from16 v16, v13

    move v13, v15

    goto :goto_d2

    .line 406
    :cond_cd
    move-object/from16 v17, v3

    move/from16 v16, v13

    move v13, v4

    .line 417
    :goto_d2
    if-nez v7, :cond_e0

    .line 420
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_e1

    .line 417
    :cond_e0
    move-object v8, v7

    .line 423
    :goto_e1
    move-object/from16 v3, p2

    invoke-static {v8, v3}, Landroid/graphics/FontListParser;->findUpdatedFontFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 426
    if-eqz v3, :cond_fc

    .line 427
    nop

    .line 428
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10f

    .line 430
    :cond_fc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    move-object/from16 v0, v17

    .line 435
    :goto_10f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_117

    .line 436
    move-object v11, v9

    goto :goto_124

    .line 438
    :cond_117
    new-array v1, v4, [Landroid/graphics/fonts/FontVariationAxis;

    .line 439
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/fonts/FontVariationAxis;

    .line 438
    invoke-static {v1}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    .line 442
    :goto_124
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    if-nez p3, :cond_132

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_132

    .line 445
    return-object v17

    .line 448
    :cond_132
    new-instance v2, Landroid/text/FontConfig$Font;

    .line 449
    if-nez v0, :cond_139

    move-object/from16 v7, v17

    goto :goto_13f

    :cond_139
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v3

    :goto_13f
    new-instance v9, Landroid/graphics/fonts/FontStyle;

    .line 453
    invoke-direct {v9, v5, v6}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    move-object v6, v1

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;I)V

    .line 448
    return-object v5
.end method

.method public static blacklist readNamedFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$NamedFamilyList;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->customFallbackForCustomization()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 314
    const-string v2, "fallback"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 316
    :cond_15
    move-object v2, v1

    .line 318
    :goto_16
    const-string/jumbo v3, "lang"

    invoke-static {v3, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 319
    const-string/jumbo v3, "variant"

    invoke-static {v3, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 320
    const-string v3, "ignore"

    invoke-static {v3, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 322
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object p0

    .line 324
    if-nez p0, :cond_2e

    .line 325
    return-object v1

    .line 327
    :cond_2e
    new-instance p1, Landroid/text/FontConfig$NamedFamilyList;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0, v0, v2}, Landroid/text/FontConfig$NamedFamilyList;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static blacklist readNamedFamilyList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$NamedFamilyList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$NamedFamilyList;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->customFallbackForCustomization()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 340
    const-string v3, "fallback"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    .line 342
    :cond_15
    move-object v3, v0

    .line 344
    :goto_16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 345
    :goto_1b
    invoke-static {p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 346
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_29

    goto :goto_1b

    .line 347
    :cond_29
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 348
    const-string v6, "family"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 349
    invoke-static {v1, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 350
    const-string/jumbo v5, "lang"

    invoke-static {v5, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 351
    const-string/jumbo v5, "variant"

    invoke-static {v5, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 352
    const-string v5, "ignore"

    invoke-static {v5, p0}, Landroid/graphics/FontListParser;->throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 354
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v5

    .line 356
    if-eqz v5, :cond_52

    .line 357
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_52
    goto :goto_56

    .line 360
    :cond_53
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 362
    :goto_56
    goto :goto_1b

    .line 364
    :cond_57
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 365
    return-object v0

    .line 367
    :cond_5e
    new-instance p0, Landroid/text/FontConfig$NamedFamilyList;

    invoke-direct {p0, v4, v2, v3}, Landroid/text/FontConfig$NamedFamilyList;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static greylist-max-o skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    const/4 v0, 0x1

    .line 503
    :goto_1
    if-lez v0, :cond_13

    .line 504
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_12

    .line 509
    :pswitch_b
    add-int/lit8 v0, v0, -0x1

    .line 510
    goto :goto_12

    .line 506
    :pswitch_e
    add-int/lit8 v0, v0, 0x1

    .line 507
    goto :goto_12

    .line 512
    :pswitch_11
    return-void

    :goto_12
    goto :goto_1

    .line 515
    :cond_13
    return-void

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private static blacklist throwIfAttributeExists(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3

    .line 298
    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 302
    return-void

    .line 299
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " cannot be used in FontFamily inside  family or family-list with name attribute."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
