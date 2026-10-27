.class public final Landroid/graphics/fonts/SystemFonts;
.super Ljava/lang/Object;
.source "SystemFonts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;
    }
.end annotation


# static fields
.field private static final blacklist DEVICE_FONTS_XML_DIR:Ljava/lang/String; = "/system/etc/"

.field private static final blacklist DEVICE_FONT_DIR:Ljava/lang/String; = "/system/fonts/"

.field private static final blacklist FONTS_XML:Ljava/lang/String;

.field public static final blacklist LEGACY_FONTS_XML:Ljava/lang/String;

.field private static final blacklist LOCK:Ljava/lang/Object;

.field public static final blacklist OEM_FONT_DIR:Ljava/lang/String; = "/product/fonts/"

.field private static final blacklist OEM_XML:Ljava/lang/String; = "/product/etc/fonts_customization.xml"

.field public static final blacklist SYSTEM_FONT_DIR:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "SystemFonts"

.field private static blacklist sAvailableFonts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getFontsXmlDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "font_fallback.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/SystemFonts;->FONTS_XML:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getFontsXmlDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fonts.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/SystemFonts;->LEGACY_FONTS_XML:Ljava/lang/String;

    .line 64
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemFontDir()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appendNamedFamilyList(Landroid/text/FontConfig$NamedFamilyList;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$NamedFamilyList;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;-><init>(Landroid/graphics/fonts/SystemFonts-IA;)V

    .line 324
    invoke-virtual {p0}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v3

    .line 325
    const/4 v4, 0x0

    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4c

    .line 326
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$FontFamily;

    .line 327
    nop

    .line 328
    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v6

    .line 329
    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v8

    .line 330
    invoke-static {v5, v2}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v9

    .line 327
    const/4 v10, 0x1

    move-object v11, p1

    invoke-static/range {v6 .. v11}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object p1

    .line 334
    if-nez p1, :cond_39

    .line 335
    return-void

    .line 337
    :cond_39
    iget-object v6, v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object p1, v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    add-int/lit8 v4, v4, 0x1

    move-object p1, v11

    goto :goto_f

    .line 340
    :cond_4c
    invoke-virtual {p0}, Landroid/text/FontConfig$NamedFamilyList;->getFallback()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->customFallback:Ljava/lang/String;

    .line 341
    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public static blacklist buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0, v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    .line 436
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 437
    nop

    .line 438
    invoke-virtual {p0}, Landroid/text/FontConfig;->getLocaleFallbackCustomizations()Ljava/util/List;

    move-result-object v1

    .line 440
    invoke-virtual {p0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    .line 441
    const/4 v3, 0x0

    move v4, v3

    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_22

    .line 442
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$NamedFamilyList;

    .line 443
    invoke-static {v5, p1, v0}, Landroid/graphics/fonts/SystemFonts;->appendNamedFamilyList(Landroid/text/FontConfig$NamedFamilyList;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 441
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 447
    :cond_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 448
    invoke-virtual {p0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object p0

    .line 449
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 450
    move v5, v3

    :goto_31
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_db

    .line 451
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$FontFamily;

    .line 453
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 454
    move v7, v3

    :goto_41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v7, v8, :cond_6d

    .line 455
    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    if-eq v10, v8, :cond_50

    .line 456
    goto :goto_6a

    .line 458
    :cond_50
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 459
    invoke-virtual {v6}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v10

    invoke-virtual {v8}, Landroid/text/FontConfig$Customization$LocaleFallback;->getScript()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/graphics/fonts/SystemFonts;->scriptMatch(Landroid/os/LocaleList;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 460
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {v4, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 454
    :cond_6a
    :goto_6a
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 465
    :cond_6d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 466
    invoke-static {v6, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    goto :goto_d7

    .line 468
    :cond_77
    move v7, v3

    :goto_78
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_94

    .line 469
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 470
    invoke-virtual {v8}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v10

    if-nez v10, :cond_91

    .line 471
    invoke-virtual {v8}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v8

    invoke-static {v8, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 468
    :cond_91
    add-int/lit8 v7, v7, 0x1

    goto :goto_78

    .line 475
    :cond_94
    nop

    .line 476
    move v7, v3

    move v8, v7

    :goto_97
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_b5

    .line 477
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 478
    invoke-virtual {v10}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_b2

    .line 479
    invoke-virtual {v10}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v8

    invoke-static {v8, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 481
    move v8, v9

    .line 476
    :cond_b2
    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    .line 484
    :cond_b5
    if-nez v8, :cond_ba

    .line 485
    invoke-static {v6, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 487
    :cond_ba
    move v6, v3

    :goto_bb
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_d7

    .line 488
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 489
    invoke-virtual {v7}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v8

    if-ne v8, v9, :cond_d4

    .line 490
    invoke-virtual {v7}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v7

    invoke-static {v7, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 487
    :cond_d4
    add-int/lit8 v6, v6, 0x1

    goto :goto_bb

    .line 450
    :cond_d7
    :goto_d7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_31

    .line 498
    :cond_db
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 499
    move p1, v3

    :goto_e1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge p1, v1, :cond_17a

    .line 500
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 501
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    .line 502
    iget-object v4, v2, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->customFallback:Ljava/lang/String;

    .line 503
    if-nez v4, :cond_105

    .line 504
    iget-object v2, v2, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    new-array v4, v3, [Landroid/graphics/fonts/FontFamily;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/fonts/FontFamily;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_156

    .line 506
    :cond_105
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    .line 507
    if-eqz v5, :cond_161

    .line 510
    iget-object v4, v5, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->customFallback:Ljava/lang/String;

    if-nez v4, :cond_159

    .line 514
    iget-object v4, v2, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    .line 515
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v6, v5, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v4, v6

    new-array v4, v4, [Landroid/graphics/fonts/FontFamily;

    .line 516
    move v6, v3

    :goto_121
    iget-object v7, v2, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_136

    .line 517
    iget-object v7, v2, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/fonts/FontFamily;

    aput-object v7, v4, v6

    .line 516
    add-int/lit8 v6, v6, 0x1

    goto :goto_121

    .line 519
    :cond_136
    move v6, v3

    :goto_137
    iget-object v7, v5, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_153

    .line 520
    iget-object v7, v2, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v6

    iget-object v8, v5, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    .line 521
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/fonts/FontFamily;

    aput-object v8, v4, v7

    .line 519
    add-int/lit8 v6, v6, 0x1

    goto :goto_137

    .line 523
    :cond_153
    invoke-interface {p0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    :goto_156
    add-int/lit8 p1, p1, 0x1

    goto :goto_e1

    .line 511
    :cond_159
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Nested fallback in system font definition is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 508
    :cond_161
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown fallback target: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 527
    :cond_17a
    return-object p0
.end method

.method public static blacklist buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .line 538
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 539
    invoke-virtual {p0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/graphics/Typeface;->initSystemDefaultTypefaces(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V

    .line 540
    return-object v0
.end method

.method private static blacklist createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/fonts/FontFamily;"
        }
    .end annotation

    .line 261
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 262
    return-object v1

    .line 265
    :cond_8
    nop

    .line 266
    const/4 v2, 0x0

    move-object v3, v1

    move v0, v2

    :goto_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_86

    .line 267
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$Font;

    .line 268
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 270
    if-nez v6, :cond_39

    .line 271
    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 272
    goto :goto_7b

    .line 274
    :cond_2f
    invoke-static {v5}, Landroid/graphics/fonts/SystemFonts;->mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 275
    invoke-interface {p5, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    if-nez v6, :cond_39

    .line 277
    goto :goto_7b

    .line 283
    :cond_39
    :try_start_39
    new-instance v7, Landroid/graphics/fonts/Font$Builder;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v6, v8, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;Ljava/io/File;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    .line 285
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    .line 286
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v5

    .line 287
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v4

    .line 288
    invoke-virtual {v4}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v4
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_6f} :catch_7e

    .line 291
    nop

    .line 293
    if-nez v3, :cond_78

    .line 294
    new-instance v3, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    goto :goto_7b

    .line 296
    :cond_78
    invoke-virtual {v3, v4}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    .line 266
    :goto_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 289
    :catch_7e
    move-exception v0

    move-object p0, v0

    .line 290
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 299
    :cond_86
    if-nez v3, :cond_89

    .line 300
    return-object v1

    .line 304
    :cond_89
    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    move v8, p3

    move v7, p4

    :try_start_8e
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;

    move-result-object p0
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_92} :catch_93

    return-object p0

    .line 306
    :catch_93
    move-exception v0

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    nop

    :goto_9a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_b1

    .line 309
    if-eqz v2, :cond_a7

    .line 310
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_a7
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 314
    :cond_b1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed during creating FontFamily, possibly invalid font format: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemFonts"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-object v1
.end method

.method public static whitelist getAvailableFonts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    if-nez v1, :cond_d

    .line 103
    invoke-static {}, Landroid/graphics/fonts/Font;->getAvailableFonts()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    .line 105
    :cond_d
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 106
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private static blacklist getFontsXmlDir()Ljava/lang/String;
    .registers 1

    .line 79
    const-string v0, "/system/etc/"

    return-object v0
.end method

.method private static blacklist getFontsXmlDir$ravenwood()Ljava/lang/String;
    .registers 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->getInstance()Lcom/android/internal/ravenwood/RavenwoodHelperBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->getRavenwoodRuntimePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSystemFontConfig(Ljava/util/Map;JI)Landroid/text/FontConfig;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .line 355
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->FONTS_XML:Ljava/lang/String;

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    move-object v4, p0

    move-wide v5, p1

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSystemFontConfigForTesting(Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .line 371
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    move-object v0, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
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

    .line 402
    const-string v1, "SystemFonts"

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading font config from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static/range {p0 .. p7}, Landroid/graphics/FontListParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1c} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_1c} :catch_1d

    return-object v0

    .line 409
    :catch_1d
    move-exception v0

    .line 410
    const-string v2, "Failed to parse the system font configuration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    new-instance v0, Landroid/text/FontConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 412
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object p0, v0

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-wide p5, v5

    move p7, v7

    invoke-direct/range {p0 .. p7}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 411
    return-object v0

    .line 405
    :catch_43
    move-exception v0

    .line 406
    const-string v2, "Failed to open/read system font configurations."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    new-instance v0, Landroid/text/FontConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object p0, v0

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-wide p5, v5

    move p7, v7

    invoke-direct/range {p0 .. p7}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 407
    return-object v0
.end method

.method private static blacklist getSystemFontDir()Ljava/lang/String;
    .registers 1

    .line 88
    const-string v0, "/system/fonts/"

    return-object v0
.end method

.method private static blacklist getSystemFontDir$ravenwood()Ljava/lang/String;
    .registers 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->getInstance()Lcom/android/internal/ravenwood/RavenwoodHelperBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/ravenwood/RavenwoodHelperBridge;->getRavenwoodRuntimePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSystemPreinstalledFontConfig()Landroid/text/FontConfig;
    .registers 8

    .line 380
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->FONTS_XML:Ljava/lang/String;

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSystemPreinstalledFontConfigFromLegacyXml()Landroid/text/FontConfig;
    .registers 8

    .line 388
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LEGACY_FONTS_XML:Ljava/lang/String;

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 9

    .line 119
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_24

    .line 120
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 122
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    .line 123
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_24

    .line 122
    return-object p0

    .line 119
    :catchall_19
    move-exception v0

    move-object p0, v0

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v0

    :try_start_20
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_24

    .line 123
    :catch_24
    move-exception v0

    .line 124
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$FontFamily;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v3

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 204
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    move v6, v7

    :goto_1d
    if-ge v6, v5, :cond_41

    aget-object v8, v4, v6

    .line 205
    invoke-virtual {v8}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v9

    .line 206
    if-nez v9, :cond_2b

    .line 207
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 209
    :cond_2b
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 210
    if-nez v10, :cond_3b

    .line 211
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-virtual {v0, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_3b
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 218
    :cond_41
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4a

    move-object v6, p2

    goto :goto_54

    .line 219
    :cond_4a
    invoke-static {p0, v5}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v4

    .line 218
    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v5

    :goto_54
    move-object p2, v5

    .line 222
    nop

    :goto_56
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v7, v1, :cond_b1

    .line 223
    invoke-virtual {p1, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    invoke-virtual {p1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    .line 225
    iget-object v4, v8, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->customFallback:Ljava/lang/String;

    if-eqz v4, :cond_6e

    .line 227
    goto :goto_ae

    .line 229
    :cond_6e
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 230
    iget-object v5, v8, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    const/4 v9, -0x1

    invoke-virtual {v5, v4, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-eq v5, v9, :cond_7c

    .line 231
    goto :goto_ae

    .line 233
    :cond_7c
    iget-object v5, v8, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    const/4 v9, 0x1

    invoke-virtual {v5, v4, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 235
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 236
    if-nez v4, :cond_92

    .line 237
    if-eqz p2, :cond_ae

    .line 238
    iget-object v1, v8, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 241
    :cond_92
    nop

    .line 242
    invoke-static {p0, v1}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v1

    .line 241
    const/4 v5, 0x0

    move-object v11, v4

    move v4, v1

    move-object v1, v11

    invoke-static/range {v1 .. v6}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_a7

    .line 244
    iget-object v4, v8, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 245
    :cond_a7
    if-eqz p2, :cond_ae

    .line 246
    iget-object v1, v8, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_ae
    :goto_ae
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    .line 252
    :cond_b1
    return-void
.end method

.method public static blacklist resetAvailableFonts()V
    .registers 2

    .line 113
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static blacklist resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I
    .registers 12

    .line 133
    nop

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 138
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object p0

    .line 139
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v1, v6, :cond_52

    .line 140
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$Font;

    .line 142
    if-nez p1, :cond_24

    .line 143
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2f

    .line 144
    goto :goto_4f

    .line 147
    :cond_24
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 148
    goto :goto_4f

    .line 152
    :cond_2f
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getVarTypeAxes()I

    move-result v8

    .line 153
    if-nez v8, :cond_36

    .line 155
    return v0

    .line 158
    :cond_36
    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_3c

    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 162
    :cond_3c
    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_42

    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 166
    :cond_42
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v6

    if-ne v6, v7, :cond_4d

    .line 167
    move v5, v7

    .line 169
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    .line 139
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 172
    :cond_52
    const/4 p0, 0x2

    if-nez v2, :cond_62

    .line 173
    if-ne v3, v7, :cond_5a

    if-ne v4, v7, :cond_5a

    .line 176
    return v7

    .line 177
    :cond_5a
    if-ne v3, p0, :cond_69

    if-ne v4, p0, :cond_69

    if-eqz v5, :cond_69

    .line 181
    const/4 p0, 0x3

    return p0

    .line 183
    :cond_62
    if-ne v2, v7, :cond_69

    .line 185
    if-ne v4, v7, :cond_69

    if-ne v3, v7, :cond_69

    .line 186
    return p0

    .line 190
    :cond_69
    return v0
.end method

.method private static blacklist scriptMatch(Landroid/os/LocaleList;Ljava/lang/String;)Z
    .registers 9

    .line 544
    const/4 v0, 0x0

    if-eqz p0, :cond_91

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_91

    .line 547
    :cond_b
    move v1, v0

    :goto_c
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_90

    .line 548
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 549
    if-nez v2, :cond_1a

    .line 550
    goto/16 :goto_8b

    .line 552
    :cond_1a
    invoke-static {v2}, Landroid/text/FontConfig;->resolveScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 553
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_26

    .line 554
    return v4

    .line 558
    :cond_26
    const-string v3, "Bopo"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "Hanb"

    if-eqz v3, :cond_37

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 560
    return v4

    .line 561
    :cond_37
    const-string v3, "Hani"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "Jpan"

    if-eqz v3, :cond_66

    .line 562
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "Hans"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 563
    const-string v3, "Hant"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "Kore"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 564
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 567
    :cond_65
    return v4

    .line 569
    :cond_66
    const-string v3, "Hira"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "Hrkt"

    if-nez v3, :cond_7e

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 570
    const-string v3, "Kana"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 571
    :cond_7e
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    goto :goto_8f

    .line 547
    :cond_8b
    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 574
    :cond_8f
    :goto_8f
    return v4

    .line 578
    :cond_90
    return v0

    .line 545
    :cond_91
    :goto_91
    return v0
.end method
