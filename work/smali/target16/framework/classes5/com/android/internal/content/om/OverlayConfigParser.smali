.class public final Lcom/android/internal/content/om/OverlayConfigParser;
.super Ljava/lang/Object;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;,
        Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;,
        Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;,
        Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;,
        Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    }
.end annotation


# static fields
.field private static final blacklist CONFIG_DEFAULT_FILENAME:Ljava/lang/String; = "config/config.xml"

.field private static final blacklist CONFIG_DIRECTORY:Ljava/lang/String; = "config"

.field static final blacklist DEFAULT_ENABLED_STATE:Z = false

.field static final blacklist DEFAULT_MUTABILITY:Z = true

.field private static final blacklist MAXIMUM_MERGE_DEPTH:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist currentParserContextToString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 4

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const/4 v1, 0x0

    :goto_14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 586
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 591
    :cond_35
    const-string p0, "/>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist expandProperty(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;)Ljava/lang/String;
    .registers 7

    .line 358
    if-nez p0, :cond_4

    .line 359
    const/4 p0, 0x0

    return-object p0

    .line 362
    :cond_4
    const-string v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 363
    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    .line 365
    return-object p0

    .line 368
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string/jumbo v4, "}"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 373
    if-eq v4, v2, :cond_b4

    .line 379
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_9b

    .line 384
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string/jumbo v1, "ro."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 389
    invoke-interface {p1, v0}, Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 393
    const-string v1, "Using property in overlay config path: \"%s\""

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v4, v4, 0x1

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_64

    .line 400
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 391
    :cond_69
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property is empty or doesn\'t exist: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 386
    :cond_82
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only read only properties can be used when merging RRO config files: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 380
    :cond_9b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only a single property supported in path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_b4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed property, unmatched braces, in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist getConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;",
            ">;"
        }
    .end annotation

    .line 272
    if-eqz p1, :cond_41

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    .line 276
    :cond_f
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_13
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/apex/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/overlay/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/content/om/OverlayScanner;->scanDir(Ljava/io/File;)V

    .line 278
    goto :goto_13

    .line 281
    :cond_41
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_49

    .line 282
    return-object v0

    .line 285
    :cond_49
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v1

    const-string v2, "config/config.xml"

    invoke-direct {p3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 287
    return-object v0

    .line 290
    :cond_5b
    new-instance v1, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;-><init>(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayConfigParser-IA;)V

    .line 291
    invoke-static {p3, p1, p2, v1}, Lcom/android/internal/content/om/OverlayConfigParser;->readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 292
    invoke-static {v1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmOrderedConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$parseMerge$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 422
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseMerge(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    .line 421
    :try_start_0
    new-instance v0, Lcom/android/internal/content/om/OverlayConfigParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/content/om/OverlayConfigParser$$ExternalSyntheticLambda0;-><init>()V

    .line 424
    const-string/jumbo v1, "path"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/internal/content/om/OverlayConfigParser;->expandProperty(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$SysPropWrapper;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_11} :catch_db

    .line 428
    nop

    .line 430
    if-eqz v0, :cond_c7

    .line 435
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 442
    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {p4, v2}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;I)V

    const/4 v2, 0x5

    if-eq v1, v2, :cond_9f

    .line 451
    :try_start_28
    new-instance v1, Ljava/io/File;

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object v2

    const-string v3, "config"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 453
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_44} :catch_8a

    .line 458
    nop

    .line 460
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 466
    invoke-static {v1, v2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 474
    invoke-static {v2, p2, p3, p4}, Lcom/android/internal/content/om/OverlayConfigParser;->readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 475
    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p4, p0}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmMergeDepth(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;I)V

    .line 476
    return-void

    .line 467
    :cond_5e
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 470
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 471
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 468
    const-string p2, "Merged file %s outside of configuration directory in %s at %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 461
    :cond_76
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 463
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 462
    const-string p1, "Merged configuration file %s does not exist in %s at %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 454
    :catch_8a
    move-exception p2

    .line 455
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 457
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 456
    const-string p1, "Couldn\'t find or open merged configuration file %s in %s at %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 443
    :cond_9f
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 445
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 443
    const-string p1, "Maximum <merge> depth exceeded in %s at %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 436
    :cond_b3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 439
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 436
    const-string p1, "Path %s must be relative to the directory containing overlay configurations  files in %s at %s "

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 431
    :cond_c7
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 432
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 431
    const-string p1, "<merge> without path in %s at %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 425
    :catch_db
    move-exception p2

    .line 426
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 427
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 426
    const-string p1, "<merge> path expand error in %s at %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private static blacklist parseOverlay(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    .line 503
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-nez p3, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v0

    :goto_c
    if-eq v2, v3, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    move v2, v0

    :goto_11
    const-string/jumbo v3, "scanner and packageManagerOverlayInfos cannot be both null or both non-null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 506
    const-string/jumbo v2, "package"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 507
    if-eqz v5, :cond_179

    .line 514
    nop

    .line 515
    const-string v2, " is ignored."

    const-string v4, " in partition "

    const-string/jumbo v6, "overlay "

    const-string v7, "OverlayConfig"

    if-eqz p2, :cond_93

    .line 516
    invoke-virtual {p2, v5}, Lcom/android/internal/content/om/OverlayScanner;->getParsedInfo(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    move-result-object p3

    .line 517
    if-nez p3, :cond_66

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object v8

    .line 518
    invoke-virtual {p2, v5, v8}, Lcom/android/internal/content/om/OverlayScanner;->isExcludedOverlayPackage(Ljava/lang/String;Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)Z

    move-result p2

    if-eqz p2, :cond_66

    .line 519
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 519
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void

    .line 522
    :cond_66
    if-eqz p3, :cond_76

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object p2

    iget-object v2, p3, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {p2, v2}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsOverlay(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_76

    move-object v9, p3

    goto :goto_c3

    .line 523
    :cond_76
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object p3

    .line 525
    invoke-virtual {p3}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object p3

    .line 526
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v5, p3, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 524
    const-string/jumbo p1, "overlay %s not present in partition %s in %s at %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 532
    :cond_93
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_c2

    .line 533
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getOverlayFolder()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 533
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void

    .line 532
    :cond_c2
    move-object v9, v3

    .line 539
    :goto_c3
    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmConfiguredOverlays(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_164

    .line 546
    nop

    .line 547
    const-string p2, "enabled"

    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 548
    const-string p3, "false"

    if-eqz p2, :cond_e0

    .line 549
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    move v6, v0

    goto :goto_e1

    .line 548
    :cond_e0
    move v6, v0

    .line 552
    :goto_e1
    nop

    .line 553
    const-string p2, "mutable"

    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 554
    if-eqz p2, :cond_10d

    .line 555
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 556
    xor-int/lit8 p3, p2, 0x1

    if-eqz p2, :cond_10e

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmFoundMutableOverlay(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Z

    move-result p2

    if-nez p2, :cond_f9

    goto :goto_10e

    .line 557
    :cond_f9
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 560
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 557
    const-string p1, "immutable overlays must precede mutable overlays: found in %s at %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 554
    :cond_10d
    move p3, v1

    .line 564
    :cond_10e
    :goto_10e
    if-eqz p3, :cond_114

    .line 565
    invoke-static {p4, v1}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fputmFoundMutableOverlay(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;Z)V

    goto :goto_12c

    .line 566
    :cond_114
    if-nez v6, :cond_12c

    .line 569
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "found default-disabled immutable overlay "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_12c
    :goto_12c
    new-instance v10, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;

    .line 573
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    .line 574
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_142

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_146

    :cond_142
    invoke-static {p1}, Lcom/android/internal/content/om/OverlayConfigParser;->currentParserContextToString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    :cond_146
    invoke-direct {v10, p0, p2, v3}, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 575
    new-instance v4, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmPartition(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    move-result-object p0

    iget-object v8, p0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    move v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;)V

    .line 577
    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmConfiguredOverlays(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-static {p4}, Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;->-$$Nest$fgetmOrderedConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    return-void

    .line 540
    :cond_164
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 543
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v5, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 541
    const-string/jumbo p1, "overlay %s configured multiple times in a single partition in %s at %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 508
    :cond_179
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 509
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 508
    const-string p1, "\"<overlay> without package in %s at %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static blacklist readConfigFile(Ljava/io/File;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/internal/content/om/OverlayScanner;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;",
            ")V"
        }
    .end annotation

    .line 300
    const-string v0, "OverlayConfig"

    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_6f

    .line 304
    nop

    .line 307
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 308
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 309
    const-string v3, "config"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 311
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 312
    :goto_18
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 313
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 314
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_88

    :cond_29
    goto :goto_3f

    :sswitch_2a
    const-string v5, "merge"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x0

    goto :goto_40

    :sswitch_34
    const-string/jumbo v5, "overlay"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x1

    goto :goto_40

    :goto_3f
    const/4 v5, -0x1

    :goto_40
    packed-switch v5, :pswitch_data_92

    .line 324
    goto :goto_4c

    .line 320
    :pswitch_44
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/content/om/OverlayConfigParser;->parseOverlay(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 322
    goto :goto_5d

    .line 316
    :pswitch_48
    invoke-static {p0, v2, p1, p2, p3}, Lcom/android/internal/content/om/OverlayConfigParser;->parseMerge(Ljava/io/File;Lorg/xmlpull/v1/XmlPullParser;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$ParsingContext;)V

    .line 318
    goto :goto_5d

    .line 324
    :goto_4c
    const-string v5, "Tag %s is unknown in %s at %s"

    .line 325
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, p0, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 324
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_5d} :catch_60
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_5d} :catch_60
    .catchall {:try_start_8 .. :try_end_5d} :catchall_5e

    .line 328
    :goto_5d
    goto :goto_18

    .line 332
    :catchall_5e
    move-exception p0

    goto :goto_6b

    .line 329
    :catch_60
    move-exception p0

    .line 330
    :try_start_61
    const-string p1, "Got exception parsing overlay configuration."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_5e

    .line 332
    :cond_66
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 333
    nop

    .line 334
    return-void

    .line 332
    :goto_6b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 333
    throw p0

    .line 301
    :catch_6f
    move-exception p1

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t find or open overlay configuration file "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    nop

    :sswitch_data_88
    .sparse-switch
        -0x410bbbb0 -> :sswitch_34
        0x62fa438 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_48
        :pswitch_44
    .end packed-switch
.end method
