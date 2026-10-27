.class public abstract Lcom/google/android/util/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/AbstractMessageParser$Part;,
        Lcom/google/android/util/AbstractMessageParser$Token;,
        Lcom/google/android/util/AbstractMessageParser$Html;,
        Lcom/google/android/util/AbstractMessageParser$Video;,
        Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;,
        Lcom/google/android/util/AbstractMessageParser$Photo;,
        Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;,
        Lcom/google/android/util/AbstractMessageParser$Link;,
        Lcom/google/android/util/AbstractMessageParser$MusicTrack;,
        Lcom/google/android/util/AbstractMessageParser$Resources;,
        Lcom/google/android/util/AbstractMessageParser$TrieNode;,
        Lcom/google/android/util/AbstractMessageParser$Smiley;,
        Lcom/google/android/util/AbstractMessageParser$Acronym;,
        Lcom/google/android/util/AbstractMessageParser$Format;
    }
.end annotation


# static fields
.field public static final blacklist musicNote:Ljava/lang/String; = "\u266b "


# instance fields
.field private blacklist formatStart:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Lcom/google/android/util/AbstractMessageParser$Format;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist nextChar:I

.field private blacklist nextClass:I

.field private blacklist parseAcronyms:Z

.field private blacklist parseFormatting:Z

.field private blacklist parseMeText:Z

.field private blacklist parseMusic:Z

.field private blacklist parseSmilies:Z

.field private blacklist parseUrls:Z

.field private blacklist parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist text:Ljava/lang/String;

.field private blacklist tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/util/AbstractMessageParser$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 10

    .line 92
    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZZZZZ)V
    .registers 8

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 105
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 106
    const/16 p1, 0xa

    iput p1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    .line 109
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    .line 110
    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    .line 111
    iput-boolean p3, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    .line 112
    iput-boolean p4, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    .line 113
    iput-boolean p5, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    .line 114
    iput-boolean p6, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    .line 115
    iput-boolean p7, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    .line 116
    return-void
.end method

.method private blacklist addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V
    .registers 3

    .line 1251
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    return-void
.end method

.method private blacklist addURLToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 468
    invoke-static {p1, p2}, Lcom/google/android/util/AbstractMessageParser;->tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 469
    return-void
.end method

.method private blacklist buildParts(Ljava/lang/String;)V
    .registers 7

    .line 237
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 238
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Token;

    .line 239
    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2a

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 240
    :cond_2a
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-direct {v4}, Lcom/google/android/util/AbstractMessageParser$Part;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_34
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/util/AbstractMessageParser$Part;->add(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 246
    :cond_3e
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_51

    .line 247
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-virtual {v0, p1}, Lcom/google/android/util/AbstractMessageParser$Part;->setMeText(Ljava/lang/String;)V

    .line 249
    :cond_51
    return-void
.end method

.method private blacklist getCharClass(I)I
    .registers 4

    .line 579
    if-ltz p1, :cond_37

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_b

    goto :goto_37

    .line 583
    :cond_b
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 584
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 585
    return v1

    .line 586
    :cond_19
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 587
    const/4 p1, 0x2

    return p1

    .line 588
    :cond_21
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 589
    const/4 p1, 0x3

    return p1

    .line 590
    :cond_29
    invoke-static {p1}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 594
    iget p1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    return p1

    .line 596
    :cond_35
    const/4 p1, 0x4

    return p1

    .line 580
    :cond_37
    :goto_37
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist isDomainChar(C)Z
    .registers 3

    .line 331
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_13

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private static blacklist isFormatChar(C)Z
    .registers 1

    .line 647
    sparse-switch p0, :sswitch_data_8

    .line 652
    const/4 p0, 0x0

    return p0

    .line 649
    :sswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2a -> :sswitch_5
        0x5e -> :sswitch_5
        0x5f -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist isPunctuation(C)Z
    .registers 1

    .line 632
    sparse-switch p0, :sswitch_data_8

    .line 638
    const/4 p0, 0x0

    return p0

    .line 635
    :sswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_8
    .sparse-switch
        0x21 -> :sswitch_5
        0x22 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2c -> :sswitch_5
        0x2e -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3f -> :sswitch_5
    .end sparse-switch
.end method

.method private static blacklist isSmileyBreak(CC)Z
    .registers 2

    .line 607
    sparse-switch p0, :sswitch_data_c

    goto :goto_a

    .line 615
    :sswitch_4
    sparse-switch p1, :sswitch_data_52

    goto :goto_a

    .line 623
    :sswitch_8
    const/4 p0, 0x1

    return p0

    .line 627
    :goto_a
    const/4 p0, 0x0

    return p0

    :sswitch_data_c
    .sparse-switch
        0x24 -> :sswitch_4
        0x26 -> :sswitch_4
        0x2a -> :sswitch_4
        0x2b -> :sswitch_4
        0x2d -> :sswitch_4
        0x2f -> :sswitch_4
        0x3c -> :sswitch_4
        0x3d -> :sswitch_4
        0x3e -> :sswitch_4
        0x40 -> :sswitch_4
        0x5b -> :sswitch_4
        0x5c -> :sswitch_4
        0x5d -> :sswitch_4
        0x5e -> :sswitch_4
        0x7c -> :sswitch_4
        0x7d -> :sswitch_4
        0x7e -> :sswitch_4
    .end sparse-switch

    :sswitch_data_52
    .sparse-switch
        0x23 -> :sswitch_8
        0x24 -> :sswitch_8
        0x25 -> :sswitch_8
        0x2a -> :sswitch_8
        0x2f -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_8
        0x40 -> :sswitch_8
        0x5b -> :sswitch_8
        0x5c -> :sswitch_8
        0x5e -> :sswitch_8
        0x7e -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist isSmileyBreak(I)Z
    .registers 4

    .line 550
    if-lez p1, :cond_20

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 551
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(CC)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 552
    const/4 p1, 0x1

    return p1

    .line 556
    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist isURLBreak(I)Z
    .registers 3

    .line 564
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result p1

    packed-switch p1, :pswitch_data_c

    .line 573
    return v0

    .line 568
    :pswitch_a
    const/4 p1, 0x0

    return p1

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private blacklist isValidDomain(Ljava/lang/String;)Z
    .registers 3

    .line 337
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/util/AbstractMessageParser$Resources;->getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/util/AbstractMessageParser;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/util/AbstractMessageParser;->matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 338
    const/4 p1, 0x1

    return p1

    .line 340
    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist isWordBreak(I)Z
    .registers 3

    .line 545
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result p1

    if-eq v0, p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private blacklist lastPart()Lcom/google/android/util/AbstractMessageParser$Part;
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object v0
.end method

.method private static blacklist longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 4

    .line 1415
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 7

    .line 1425
    nop

    .line 1426
    const/4 v0, 0x0

    .line 1427
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_36

    .line 1428
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    .line 1429
    if-nez p0, :cond_1d

    .line 1430
    goto :goto_36

    .line 1431
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 1432
    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 1433
    goto :goto_33

    .line 1434
    :cond_2a
    if-eqz p3, :cond_34

    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 1435
    nop

    .line 1427
    :goto_33
    move-object v0, p0

    :cond_34
    move p2, v2

    goto :goto_2

    .line 1439
    :cond_36
    :goto_36
    return-object v0
.end method

.method private static blacklist matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z
    .registers 5

    .line 1397
    const/4 v0, 0x0

    move v1, v0

    .line 1398
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 1399
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    .line 1400
    if-nez p0, :cond_15

    .line 1401
    goto :goto_1f

    .line 1402
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1403
    const/4 p0, 0x1

    return p0

    .line 1402
    :cond_1d
    move v1, v2

    goto :goto_2

    .line 1406
    :cond_1f
    :goto_1f
    return v0
.end method

.method private blacklist parseAcronym()Z
    .registers 5

    .line 316
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 317
    return v1

    .line 319
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/util/AbstractMessageParser$Resources;->getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-static {v0, p0, v2}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    .line 320
    if-nez v0, :cond_17

    .line 321
    return v1

    .line 323
    :cond_17
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Acronym;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Acronym;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 324
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist parseFormatting()Z
    .registers 9

    .line 488
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 489
    return v1

    .line 491
    :cond_6
    iget v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 492
    :goto_8
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/android/util/AbstractMessageParser;->isFormatChar(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 496
    :cond_1f
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    if-eq v0, v2, :cond_ae

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v2

    if-nez v2, :cond_2b

    goto/16 :goto_ae

    .line 503
    :cond_2b
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 506
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    :goto_32
    const/4 v4, 0x1

    if-ge v3, v0, :cond_7b

    .line 507
    iget-object v5, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 508
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 509
    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 512
    new-instance v4, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-direct {v4, v5, v1}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    invoke-direct {p0, v4}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    goto :goto_78

    .line 514
    :cond_4e
    iget-object v7, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Format;

    .line 515
    if-eqz v7, :cond_66

    .line 517
    invoke-virtual {v7, v4}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    .line 518
    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 522
    :cond_66
    new-instance v7, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-direct {v7, v5, v4}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    .line 523
    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-direct {p0, v7}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 525
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :goto_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 531
    :cond_7b
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_83
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    .line 532
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 533
    new-instance v6, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-direct {v6, v5, v1}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    .line 534
    invoke-virtual {v6, v4}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    .line 535
    invoke-direct {p0, v6}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 537
    :cond_aa
    goto :goto_83

    .line 539
    :cond_ab
    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 540
    return v4

    .line 497
    :cond_ae
    :goto_ae
    return v1
.end method

.method private blacklist parseMusicTrack()Z
    .registers 4

    .line 260
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string/jumbo v1, "\u266b "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 261
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 262
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 263
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist parseSmiley()Z
    .registers 8

    .line 293
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 294
    return v1

    .line 296
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    .line 298
    if-nez v0, :cond_18

    .line 299
    return v1

    .line 301
    :cond_18
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v2

    .line 302
    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v4

    .line 303
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_34

    if-ne v2, v5, :cond_39

    :cond_34
    if-eq v4, v6, :cond_53

    if-ne v4, v5, :cond_39

    goto :goto_53

    .line 307
    :cond_39
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Smiley;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/util/AbstractMessageParser$Smiley;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 308
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 309
    return v3

    .line 305
    :cond_53
    :goto_53
    return v1
.end method

.method private blacklist parseText()V
    .registers 6

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 273
    :cond_7
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 274
    sparse-switch v2, :sswitch_data_5a

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 276
    :sswitch_1a
    const-string v2, "&gt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 275
    :sswitch_20
    const-string v2, "&lt;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 279
    :sswitch_26
    const-string v2, "&apos;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 277
    :sswitch_2c
    const-string v2, "&amp;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 278
    :sswitch_32
    const-string v2, "&quot;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 280
    :sswitch_38
    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :goto_3d
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 285
    new-instance v2, Lcom/google/android/util/AbstractMessageParser$Html;

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/android/util/AbstractMessageParser$Html;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    .line 286
    return-void

    :sswitch_data_5a
    .sparse-switch
        0xa -> :sswitch_38
        0x22 -> :sswitch_32
        0x26 -> :sswitch_2c
        0x27 -> :sswitch_26
        0x3c -> :sswitch_20
        0x3e -> :sswitch_1a
    .end sparse-switch
.end method

.method private blacklist parseURL()Z
    .registers 8

    .line 349
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14c

    iget v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->isURLBreak(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_14c

    .line 353
    :cond_f
    iget v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 356
    move v2, v0

    .line 357
    :goto_12
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 361
    :cond_29
    nop

    .line 362
    nop

    .line 364
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_34

    .line 365
    return v1

    .line 366
    :cond_34
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    const/4 v5, 0x1

    if-ne v3, v4, :cond_5a

    .line 368
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSchemes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 370
    return v1

    .line 372
    :cond_56
    const-string v3, ""

    goto/16 :goto_115

    :cond_5a
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_14b

    .line 374
    :goto_64
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7e

    .line 375
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 376
    if-eq v3, v6, :cond_7b

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 377
    goto :goto_7e

    .line 379
    :cond_7b
    add-int/lit8 v2, v2, 0x1

    .line 381
    goto :goto_64

    .line 385
    :cond_7e
    :goto_7e
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isValidDomain(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8d

    .line 387
    return v1

    .line 392
    :cond_8d
    add-int/lit8 v3, v2, 0x1

    iget-object v6, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_c4

    iget-object v6, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_c4

    .line 393
    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 394
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 395
    nop

    .line 396
    :goto_ac
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_c3

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 397
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 398
    add-int/lit8 v3, v3, 0x1

    goto :goto_ac

    .line 409
    :cond_c3
    move v2, v3

    :cond_c4
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_ce

    .line 410
    move v1, v5

    goto :goto_112

    .line 412
    :cond_ce
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 413
    const/16 v4, 0x3f

    if-ne v3, v4, :cond_f8

    .line 416
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_e4

    .line 417
    move v1, v5

    goto :goto_112

    .line 419
    :cond_e4
    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 420
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_f6

    invoke-static {v3}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 421
    :cond_f6
    move v1, v5

    .line 423
    :cond_f7
    goto :goto_112

    .line 424
    :cond_f8
    invoke-static {v3}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v4

    if-eqz v4, :cond_100

    .line 425
    move v1, v5

    goto :goto_112

    .line 426
    :cond_100
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_108

    .line 427
    move v1, v5

    goto :goto_112

    .line 428
    :cond_108
    const/16 v4, 0x2f

    if-eq v3, v4, :cond_112

    const/16 v4, 0x23

    if-ne v3, v4, :cond_111

    goto :goto_112

    .line 432
    :cond_111
    return v1

    .line 439
    :cond_112
    :goto_112
    nop

    .line 440
    const-string v3, "http://"

    .line 446
    :goto_115
    if-nez v1, :cond_12e

    .line 447
    :goto_117
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_12e

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 448
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_12e

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_117

    .line 453
    :cond_12e
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-direct {p0, v1, v0}, Lcom/google/android/util/AbstractMessageParser;->addURLToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iput v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    .line 460
    return v5

    .line 441
    :cond_14b
    return v1

    .line 350
    :cond_14c
    :goto_14c
    return v1
.end method

.method protected static blacklist reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_17

    .line 1348
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1347
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 1350
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;
    .registers 3

    .line 199
    if-nez p0, :cond_4

    .line 200
    const/4 p0, 0x0

    return-object p0

    .line 204
    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Video;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Video;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_b

    .line 206
    return-object v0

    .line 210
    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_12

    .line 212
    return-object v0

    .line 216
    :cond_12
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Photo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Photo;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_19

    .line 218
    return-object v0

    .line 222
    :cond_19
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_20

    .line 224
    return-object v0

    .line 228
    :cond_20
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Link;

    invoke-direct {v0, p0, p1}, Lcom/google/android/util/AbstractMessageParser$Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final blacklist getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object p1
.end method

.method public final blacklist getPartCount()I
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final blacklist getParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final blacklist getRawText()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract blacklist getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
.end method

.method public blacklist parse()V
    .registers 7

    .line 134
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseMusicTrack()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 135
    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    .line 136
    return-void

    .line 140
    :cond_b
    nop

    .line 141
    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string v3, "/me"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_40

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 143
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    move-object v1, v0

    .line 148
    :cond_40
    move v0, v2

    .line 149
    :goto_41
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_87

    .line 150
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-nez v3, :cond_67

    .line 151
    if-eqz v0, :cond_5f

    iget v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_67

    .line 152
    :cond_5f
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "last chunk did not end at word break"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 156
    :cond_67
    :goto_67
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseSmiley()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 157
    move v0, v5

    goto :goto_41

    .line 159
    :cond_6f
    nop

    .line 161
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseAcronym()Z

    move-result v0

    if-nez v0, :cond_85

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseURL()Z

    move-result v0

    if-nez v0, :cond_85

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseFormatting()Z

    move-result v0

    if-nez v0, :cond_85

    .line 162
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseText()V

    .line 149
    :cond_85
    move v0, v2

    goto :goto_41

    .line 168
    :cond_87
    move v0, v2

    :goto_88
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_d9

    .line 169
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 170
    if-lez v0, :cond_b7

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v3, :cond_b7

    .line 171
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace()V

    .line 173
    :cond_b7
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_d6

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v4, :cond_d6

    .line 174
    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace()V

    .line 168
    :cond_d6
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 180
    :cond_d9
    nop

    :goto_da
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_10b

    .line 181
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v0

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v0, v5}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_109

    .line 183
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 184
    add-int/lit8 v2, v2, -0x1

    .line 180
    :cond_109
    add-int/2addr v2, v5

    goto :goto_da

    .line 188
    :cond_10b
    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public blacklist toHtml()Ljava/lang/String;
    .registers 10

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1258
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Part;

    .line 1259
    nop

    .line 1261
    const-string v3, "<p>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_133

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/util/AbstractMessageParser$Token;

    .line 1263
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1264
    invoke-virtual {v4, v3}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_127

    .line 1266
    :cond_41
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v5

    const-string v6, "</a>"

    const-string v7, "\">"

    const-string v8, "<a href=\""

    packed-switch v5, :pswitch_data_140

    .line 1330
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown token type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1321
    :pswitch_70
    move-object v5, v4

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$Photo;

    .line 1322
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    move-object v5, v4

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    goto/16 :goto_127

    .line 1310
    :pswitch_8f
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    move-object v5, v4

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$Photo;

    .line 1312
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    move-result-object v5

    .line 1311
    invoke-static {v8, v5}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    goto/16 :goto_127

    .line 1300
    :pswitch_b3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    move-object v5, v4

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    .line 1302
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getDocID()Ljava/lang/String;

    move-result-object v5

    .line 1301
    invoke-static {v5}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    goto :goto_127

    .line 1291
    :pswitch_d2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    move-object v5, v4

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$Video;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Video;->getDocID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/util/AbstractMessageParser$Video;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    goto :goto_127

    .line 1286
    :pswitch_f1
    move-object v5, v4

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;->getTrack()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    goto :goto_127

    .line 1281
    :pswitch_fc
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    goto :goto_127

    .line 1277
    :pswitch_104
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    goto :goto_127

    .line 1268
    :pswitch_10c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    move-object v5, v4

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$Link;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Link;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    nop

    .line 1334
    :goto_127
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->controlCaps()Z

    move-result v5

    if-eqz v5, :cond_131

    .line 1335
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->setCaps()Z

    move-result v3

    .line 1337
    :cond_131
    goto/16 :goto_26

    .line 1338
    :cond_133
    const-string v2, "</p>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    goto/16 :goto_b

    .line 1341
    :cond_13a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_140
    .packed-switch 0x2
        :pswitch_10c
        :pswitch_104
        :pswitch_fc
        :pswitch_f1
        :pswitch_d2
        :pswitch_b3
        :pswitch_8f
        :pswitch_70
    .end packed-switch
.end method
