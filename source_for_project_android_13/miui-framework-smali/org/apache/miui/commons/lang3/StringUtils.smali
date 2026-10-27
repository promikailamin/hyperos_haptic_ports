.class public Lorg/apache/miui/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;
    }
.end annotation


# static fields
.field public static final blacklist EMPTY:Ljava/lang/String; = ""

.field public static final blacklist INDEX_NOT_FOUND:I = -0x1

.field private static final blacklist PAD_LIMIT:I = 0x2000

.field private static final blacklist WHITESPACE_BLOCK:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 149
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/miui/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method public static blacklist abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .line 5679
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .line 5718
    if-nez p0, :cond_4

    .line 5719
    const/4 v0, 0x0

    return-object v0

    .line 5721
    :cond_4
    const/4 v0, 0x4

    if-lt p2, v0, :cond_96

    .line 5724
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p2, :cond_e

    .line 5725
    return-object p0

    .line 5727
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_18

    .line 5728
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 5730
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v2, p2, -0x3

    if-ge v1, v2, :cond_29

    .line 5731
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int p1, v1, v2

    .line 5733
    :cond_29
    const-string v1, "..."

    .line 5734
    .local v1, "abrevMarker":Ljava/lang/String;
    const-string v2, "..."

    if-gt p1, v0, :cond_48

    .line 5735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, p2, -0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5737
    :cond_48
    const/4 v0, 0x7

    if-lt p2, v0, :cond_8e

    .line 5740
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_71

    .line 5741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, -0x3

    invoke-static {v2, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5743
    :cond_71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, p2, -0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5738
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum abbreviation width with offset is 7"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5722
    .end local v1    # "abrevMarker":Ljava/lang/String;
    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum abbreviation width is 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "middle"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 5776
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4b

    .line 5780
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_4a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_1c

    goto :goto_4a

    .line 5784
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    .line 5785
    .local v0, "targetSting":I
    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    .line 5786
    .local v1, "startOffset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    .line 5788
    .local v2, "endOffset":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5789
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5790
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5791
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5793
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 5781
    .end local v0    # "targetSting":I
    .end local v1    # "startOffset":I
    .end local v2    # "endOffset":I
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_4a
    :goto_4a
    return-object p0

    .line 5777
    :cond_4b
    :goto_4b
    return-object p0
.end method

.method public static blacklist capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 5033
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_a

    goto :goto_2a

    .line 5036
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 5037
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    .line 5038
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5039
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5036
    return-object v0

    .line 5034
    .end local v1    # "strLen":I
    :cond_2a
    :goto_2a
    return-object p0
.end method

.method public static blacklist center(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4827
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist center(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4855
    if-eqz p0, :cond_1a

    if-gtz p1, :cond_5

    goto :goto_1a

    .line 4858
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4859
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 4860
    .local v1, "pads":I
    if-gtz v1, :cond_e

    .line 4861
    return-object p0

    .line 4863
    :cond_e
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4864
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 4865
    return-object p0

    .line 4856
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public static blacklist center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 4895
    if-eqz p0, :cond_22

    if-gtz p1, :cond_5

    goto :goto_22

    .line 4898
    :cond_5
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4899
    const-string p2, " "

    .line 4901
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4902
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 4903
    .local v1, "pads":I
    if-gtz v1, :cond_16

    .line 4904
    return-object p0

    .line 4906
    :cond_16
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4907
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4908
    return-object p0

    .line 4896
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_22
    :goto_22
    return-object p0
.end method

.method public static blacklist chomp(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .line 4341
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4342
    return-object p0

    .line 4345
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v0, v4, :cond_20

    .line 4346
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4347
    .local v0, "ch":C
    if-eq v0, v3, :cond_1d

    if-ne v0, v2, :cond_1c

    goto :goto_1d

    .line 4350
    :cond_1c
    return-object p0

    .line 4348
    :cond_1d
    :goto_1d
    const-string v1, ""

    return-object v1

    .line 4353
    .end local v0    # "ch":C
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    .line 4354
    .local v0, "lastIdx":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 4356
    .local v4, "last":C
    if-ne v4, v2, :cond_36

    .line 4357
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3a

    .line 4358
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 4360
    :cond_36
    if-eq v4, v3, :cond_3a

    .line 4361
    add-int/lit8 v0, v0, 0x1

    .line 4363
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4395
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist chop(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .line 4424
    if-nez p0, :cond_4

    .line 4425
    const/4 v0, 0x0

    return-object v0

    .line 4427
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4428
    .local v0, "strLen":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    .line 4429
    const-string v1, ""

    return-object v1

    .line 4431
    :cond_e
    add-int/lit8 v1, v0, -0x1

    .line 4432
    .local v1, "lastIdx":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4433
    .local v3, "ret":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 4434
    .local v4, "last":C
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2e

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2e

    .line 4435
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4437
    :cond_2e
    return-object v3
.end method

.method public static blacklist contains(Ljava/lang/CharSequence;I)Z
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 1378
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1379
    return v1

    .line 1381
    :cond_8
    invoke-static {p0, p1, v1}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    if-ltz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public static blacklist contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 1407
    const/4 v0, 0x0

    if-eqz p0, :cond_e

    if-nez p1, :cond_6

    goto :goto_e

    .line 1410
    :cond_6
    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    .line 1408
    :cond_e
    :goto_e
    return v0
.end method

.method public static blacklist containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .line 1639
    if-nez p1, :cond_4

    .line 1640
    const/4 v0, 0x0

    return v0

    .line 1642
    :cond_4
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0
.end method

.method public static varargs blacklist containsAny(Ljava/lang/CharSequence;[C)Z
    .registers 13
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1581
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_46

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_46

    .line 1584
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1585
    .local v0, "csLength":I
    array-length v2, p1

    .line 1586
    .local v2, "searchLength":I
    add-int/lit8 v3, v0, -0x1

    .line 1587
    .local v3, "csLast":I
    add-int/lit8 v4, v2, -0x1

    .line 1588
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v0, :cond_45

    .line 1589
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1590
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1f
    if-ge v7, v2, :cond_42

    .line 1591
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3f

    .line 1592
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_3e

    .line 1593
    if-ne v7, v4, :cond_2f

    .line 1595
    return v9

    .line 1597
    :cond_2f
    if-ge v5, v3, :cond_3f

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3f

    .line 1598
    return v9

    .line 1602
    :cond_3e
    return v9

    .line 1590
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 1588
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1607
    .end local v5    # "i":I
    :cond_45
    return v1

    .line 1582
    .end local v0    # "csLength":I
    .end local v2    # "searchLength":I
    .end local v3    # "csLast":I
    .end local v4    # "searchLast":I
    :cond_46
    :goto_46
    return v1
.end method

.method public static blacklist containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 12
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 1438
    const/4 v0, 0x0

    if-eqz p0, :cond_26

    if-nez p1, :cond_6

    goto :goto_26

    .line 1441
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1442
    .local v7, "len":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v8, v1, v7

    .line 1443
    .local v8, "max":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_12
    if-gt v9, v8, :cond_25

    .line 1444
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v9

    move-object v4, p1

    move v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1445
    const/4 v0, 0x1

    return v0

    .line 1443
    :cond_22
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    .line 1448
    .end local v9    # "i":I
    :cond_25
    return v0

    .line 1439
    .end local v7    # "len":I
    .end local v8    # "max":I
    :cond_26
    :goto_26
    return v0
.end method

.method public static blacklist containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "invalidChars"    # Ljava/lang/String;

    .line 1890
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1893
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0

    .line 1891
    :cond_e
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method public static varargs blacklist containsNone(Ljava/lang/CharSequence;[C)Z
    .registers 13
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1837
    const/4 v0, 0x1

    if-eqz p0, :cond_3e

    if-nez p1, :cond_6

    goto :goto_3e

    .line 1840
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1841
    .local v1, "csLen":I
    add-int/lit8 v2, v1, -0x1

    .line 1842
    .local v2, "csLast":I
    array-length v3, p1

    .line 1843
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 1844
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    if-ge v5, v1, :cond_3d

    .line 1845
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1846
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_17
    if-ge v7, v3, :cond_3a

    .line 1847
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_37

    .line 1848
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_36

    .line 1849
    if-ne v7, v4, :cond_27

    .line 1851
    return v9

    .line 1853
    :cond_27
    if-ge v5, v2, :cond_37

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_37

    .line 1854
    return v9

    .line 1858
    :cond_36
    return v9

    .line 1846
    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 1844
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1863
    .end local v5    # "i":I
    :cond_3d
    return v0

    .line 1838
    .end local v1    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_3e
    :goto_3e
    return v0
.end method

.method public static blacklist containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "validChars"    # Ljava/lang/String;

    .line 1805
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1808
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0

    .line 1806
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs blacklist containsOnly(Ljava/lang/CharSequence;[C)Z
    .registers 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "valid"    # [C

    .line 1769
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    if-nez p0, :cond_6

    goto :goto_1b

    .line 1772
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    .line 1773
    return v2

    .line 1775
    :cond_e
    array-length v1, p1

    if-nez v1, :cond_12

    .line 1776
    return v0

    .line 1778
    :cond_12
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1a

    move v0, v2

    :cond_1a
    return v0

    .line 1770
    :cond_1b
    :goto_1b
    return v0
.end method

.method public static blacklist containsWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .line 1461
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1462
    return v1

    .line 1464
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1465
    .local v0, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1e

    .line 1466
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1467
    const/4 v1, 0x1

    return v1

    .line 1465
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1470
    .end local v2    # "i":I
    :cond_1e
    return v1
.end method

.method public static blacklist countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "sub"    # Ljava/lang/CharSequence;

    .line 5143
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_20

    .line 5146
    :cond_d
    const/4 v0, 0x0

    .line 5147
    .local v0, "count":I
    const/4 v1, 0x0

    .line 5148
    .local v1, "idx":I
    :goto_f
    invoke-static {p0, p1, v1}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    .line 5149
    add-int/lit8 v0, v0, 0x1

    .line 5150
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_f

    .line 5152
    :cond_1f
    return v0

    .line 5144
    .end local v0    # "count":I
    .end local v1    # "idx":I
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 5566
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method public static blacklist defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 5588
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method public static blacklist defaultString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 5523
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method public static blacklist defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultStr"    # Ljava/lang/String;

    .line 5544
    if-nez p0, :cond_4

    move-object v0, p1

    goto :goto_5

    :cond_4
    move-object v0, p0

    :goto_5
    return-object v0
.end method

.method public static blacklist deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 3555
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3556
    return-object p0

    .line 3558
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3559
    .local v0, "sz":I
    new-array v1, v0, [C

    .line 3560
    .local v1, "chs":[C
    const/4 v2, 0x0

    .line 3561
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_27

    .line 3562
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_24

    .line 3563
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "count":I
    .local v4, "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v2

    move v2, v4

    .line 3561
    .end local v4    # "count":I
    .restart local v2    # "count":I
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3566
    .end local v3    # "i":I
    :cond_27
    if-ne v2, v0, :cond_2a

    .line 3567
    return-object p0

    .line 3569
    :cond_2a
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public static blacklist difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 5824
    if-nez p0, :cond_3

    .line 5825
    return-object p1

    .line 5827
    :cond_3
    if-nez p1, :cond_6

    .line 5828
    return-object p0

    .line 5830
    :cond_6
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 5831
    .local v0, "at":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 5832
    const-string v1, ""

    return-object v1

    .line 5834
    :cond_10
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 6435
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 11
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .line 6477
    const/4 v0, 0x0

    if-eqz p0, :cond_28

    if-nez p1, :cond_6

    goto :goto_28

    .line 6480
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_11

    .line 6481
    return v0

    .line 6483
    :cond_11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6484
    .local v0, "strOffset":I
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, p0

    move v3, p2

    move v4, v0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    return v1

    .line 6478
    .end local v0    # "strOffset":I
    :cond_28
    :goto_28
    if-nez p0, :cond_2d

    if-nez p1, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method public static varargs blacklist endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 7
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 6554
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_20

    .line 6557
    :cond_e
    array-length v0, p1

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_1f

    aget-object v3, p1, v2

    .line 6558
    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 6559
    const/4 v0, 0x1

    return v0

    .line 6557
    .end local v3    # "searchString":Ljava/lang/CharSequence;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 6562
    :cond_1f
    return v1

    .line 6555
    :cond_20
    :goto_20
    return v1
.end method

.method public static blacklist endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 6462
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 783
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method

.method public static blacklist equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .line 808
    if-eqz p0, :cond_1b

    if-nez p1, :cond_5

    goto :goto_1b

    .line 811
    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 809
    :cond_1b
    :goto_1b
    if-ne p0, p1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public static varargs blacklist getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "strs"    # [Ljava/lang/String;

    .line 6005
    const-string v0, ""

    if-eqz p0, :cond_22

    array-length v1, p0

    if-nez v1, :cond_8

    goto :goto_22

    .line 6008
    :cond_8
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v1

    .line 6009
    .local v1, "smallestIndexOfDiff":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_18

    .line 6011
    aget-object v2, p0, v3

    if-nez v2, :cond_15

    .line 6012
    return-object v0

    .line 6014
    :cond_15
    aget-object v0, p0, v3

    return-object v0

    .line 6015
    :cond_18
    if-nez v1, :cond_1b

    .line 6017
    return-object v0

    .line 6020
    :cond_1b
    aget-object v0, p0, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6006
    .end local v1    # "smallestIndexOfDiff":I
    :cond_22
    :goto_22
    return-object v0
.end method

.method public static blacklist getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 14
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;

    .line 6063
    if-eqz p0, :cond_6a

    if-eqz p1, :cond_6a

    .line 6084
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6085
    .local v0, "n":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6087
    .local v1, "m":I
    if-nez v0, :cond_f

    .line 6088
    return v1

    .line 6089
    :cond_f
    if-nez v1, :cond_12

    .line 6090
    return v0

    .line 6093
    :cond_12
    if-le v0, v1, :cond_1c

    .line 6095
    move-object v2, p0

    .line 6096
    .local v2, "tmp":Ljava/lang/CharSequence;
    move-object p0, p1

    .line 6097
    move-object p1, v2

    .line 6098
    move v0, v1

    .line 6099
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6102
    .end local v2    # "tmp":Ljava/lang/CharSequence;
    :cond_1c
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    .line 6103
    .local v2, "p":[I
    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [I

    .line 6114
    .local v3, "d":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-gt v4, v0, :cond_2c

    .line 6115
    aput v4, v2, v4

    .line 6114
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 6118
    :cond_2c
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_2d
    if-gt v5, v1, :cond_67

    .line 6119
    add-int/lit8 v6, v5, -0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 6120
    .local v6, "t_j":C
    const/4 v7, 0x0

    aput v5, v3, v7

    .line 6122
    const/4 v4, 0x1

    :goto_39
    if-gt v4, v0, :cond_61

    .line 6123
    add-int/lit8 v8, v4, -0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v6, :cond_46

    move v8, v7

    goto :goto_47

    :cond_46
    move v8, v9

    .line 6125
    .local v8, "cost":I
    :goto_47
    add-int/lit8 v10, v4, -0x1

    aget v10, v3, v10

    add-int/2addr v10, v9

    aget v11, v2, v4

    add-int/2addr v11, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v10, v4, -0x1

    aget v10, v2, v10

    add-int/2addr v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput v9, v3, v4

    .line 6122
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 6129
    .end local v8    # "cost":I
    :cond_61
    move-object v7, v2

    .line 6130
    .local v7, "_d":[I
    move-object v2, v3

    .line 6131
    move-object v3, v7

    .line 6118
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 6136
    .end local v6    # "t_j":C
    .end local v7    # "_d":[I
    :cond_67
    aget v6, v2, v0

    return v6

    .line 6064
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v2    # "p":[I
    .end local v3    # "d":[I
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 19
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;
    .param p2, "threshold"    # I

    .line 6172
    move/from16 v0, p2

    if-eqz p0, :cond_b8

    if-eqz p1, :cond_b8

    .line 6175
    if-ltz v0, :cond_b0

    .line 6223
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6224
    .local v1, "n":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 6227
    .local v2, "m":I
    const/4 v3, -0x1

    if-nez v1, :cond_17

    .line 6228
    if-gt v2, v0, :cond_16

    move v3, v2

    :cond_16
    return v3

    .line 6229
    :cond_17
    if-nez v2, :cond_1d

    .line 6230
    if-gt v1, v0, :cond_1c

    move v3, v1

    :cond_1c
    return v3

    .line 6233
    :cond_1d
    if-le v1, v2, :cond_2a

    .line 6235
    move-object/from16 v4, p0

    .line 6236
    .local v4, "tmp":Ljava/lang/CharSequence;
    move-object/from16 v5, p1

    .line 6237
    .end local p0    # "s":Ljava/lang/CharSequence;
    .local v5, "s":Ljava/lang/CharSequence;
    move-object v6, v4

    .line 6238
    .end local p1    # "t":Ljava/lang/CharSequence;
    .local v6, "t":Ljava/lang/CharSequence;
    move v1, v2

    .line 6239
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_2e

    .line 6233
    .end local v4    # "tmp":Ljava/lang/CharSequence;
    .end local v5    # "s":Ljava/lang/CharSequence;
    .end local v6    # "t":Ljava/lang/CharSequence;
    .restart local p0    # "s":Ljava/lang/CharSequence;
    .restart local p1    # "t":Ljava/lang/CharSequence;
    :cond_2a
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 6242
    .end local p0    # "s":Ljava/lang/CharSequence;
    .end local p1    # "t":Ljava/lang/CharSequence;
    .restart local v5    # "s":Ljava/lang/CharSequence;
    .restart local v6    # "t":Ljava/lang/CharSequence;
    :goto_2e
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [I

    .line 6243
    .local v4, "p":[I
    add-int/lit8 v7, v1, 0x1

    new-array v7, v7, [I

    .line 6247
    .local v7, "d":[I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 6248
    .local v8, "boundary":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3d
    if-ge v10, v8, :cond_44

    .line 6249
    aput v10, v4, v10

    .line 6248
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    .line 6253
    .end local v10    # "i":I
    :cond_44
    array-length v10, v4

    const v11, 0x7fffffff

    invoke-static {v4, v8, v10, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 6254
    invoke-static {v7, v11}, Ljava/util/Arrays;->fill([II)V

    .line 6257
    const/4 v10, 0x1

    .local v10, "j":I
    :goto_4f
    if-gt v10, v2, :cond_a7

    .line 6258
    add-int/lit8 v12, v10, -0x1

    invoke-interface {v6, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 6259
    .local v12, "t_j":C
    const/4 v13, 0x0

    aput v10, v7, v13

    .line 6262
    sub-int v13, v10, v0

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 6263
    .local v13, "min":I
    add-int v14, v10, v0

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 6266
    .local v14, "max":I
    if-le v13, v14, :cond_69

    .line 6267
    return v3

    .line 6271
    :cond_69
    if-le v13, v9, :cond_6f

    .line 6272
    add-int/lit8 v15, v13, -0x1

    aput v11, v7, v15

    .line 6276
    :cond_6f
    move v15, v13

    .local v15, "i":I
    :goto_70
    if-gt v15, v14, :cond_9d

    .line 6277
    add-int/lit8 v11, v15, -0x1

    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_81

    .line 6279
    add-int/lit8 v11, v15, -0x1

    aget v11, v4, v11

    aput v11, v7, v15

    goto :goto_96

    .line 6282
    :cond_81
    add-int/lit8 v11, v15, -0x1

    aget v11, v7, v11

    aget v3, v4, v15

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v11, v15, -0x1

    aget v11, v4, v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v9

    aput v3, v7, v15

    .line 6276
    :goto_96
    add-int/lit8 v15, v15, 0x1

    const/4 v3, -0x1

    const v11, 0x7fffffff

    goto :goto_70

    .line 6287
    .end local v15    # "i":I
    :cond_9d
    move-object v3, v4

    .line 6288
    .local v3, "_d":[I
    move-object v4, v7

    .line 6289
    move-object v7, v3

    .line 6257
    .end local v12    # "t_j":C
    .end local v13    # "min":I
    .end local v14    # "max":I
    add-int/lit8 v10, v10, 0x1

    const/4 v3, -0x1

    const v11, 0x7fffffff

    goto :goto_4f

    .line 6294
    .end local v3    # "_d":[I
    .end local v10    # "j":I
    :cond_a7
    aget v3, v4, v1

    if-gt v3, v0, :cond_ae

    .line 6295
    aget v3, v4, v1

    return v3

    .line 6297
    :cond_ae
    const/4 v3, -0x1

    return v3

    .line 6176
    .end local v1    # "n":I
    .end local v2    # "m":I
    .end local v4    # "p":[I
    .end local v5    # "s":Ljava/lang/CharSequence;
    .end local v6    # "t":Ljava/lang/CharSequence;
    .end local v7    # "d":[I
    .end local v8    # "boundary":I
    .restart local p0    # "s":Ljava/lang/CharSequence;
    .restart local p1    # "t":Ljava/lang/CharSequence;
    :cond_b0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Threshold must not be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6173
    :cond_b8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Strings must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist indexOf(Ljava/lang/CharSequence;I)I
    .registers 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 838
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 839
    const/4 v0, -0x1

    return v0

    .line 841
    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static blacklist indexOf(Ljava/lang/CharSequence;II)I
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .line 871
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 872
    const/4 v0, -0x1

    return v0

    .line 874
    :cond_8
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static blacklist indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 902
    if-eqz p0, :cond_b

    if-nez p1, :cond_5

    goto :goto_b

    .line 905
    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 903
    :cond_b
    :goto_b
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 942
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 945
    :cond_5
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 943
    :cond_a
    :goto_a
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .registers 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/String;

    .line 1548
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 1551
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    return v0

    .line 1549
    :cond_16
    :goto_16
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs blacklist indexOfAny(Ljava/lang/CharSequence;[C)I
    .registers 12
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1499
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_44

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_44

    .line 1502
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1503
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 1504
    .local v2, "csLast":I
    array-length v3, p1

    .line 1505
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 1506
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v0, :cond_43

    .line 1507
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1508
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1f
    if-ge v7, v3, :cond_40

    .line 1509
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3d

    .line 1510
    if-ge v5, v2, :cond_3c

    if-ge v7, v4, :cond_3c

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 1512
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3d

    .line 1513
    return v5

    .line 1516
    :cond_3c
    return v5

    .line 1508
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 1506
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1521
    .end local v5    # "i":I
    :cond_43
    return v1

    .line 1500
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_44
    :goto_44
    return v1
.end method

.method public static varargs blacklist indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 9
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .line 1926
    const/4 v0, -0x1

    if-eqz p0, :cond_29

    if-nez p1, :cond_6

    goto :goto_29

    .line 1929
    :cond_6
    array-length v1, p1

    .line 1932
    .local v1, "sz":I
    const v2, 0x7fffffff

    .line 1934
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 1935
    .local v3, "tmp":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v1, :cond_21

    .line 1936
    aget-object v5, p1, v4

    .line 1937
    .local v5, "search":Ljava/lang/CharSequence;
    if-nez v5, :cond_13

    .line 1938
    goto :goto_1e

    .line 1940
    :cond_13
    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1941
    if-ne v3, v0, :cond_1b

    .line 1942
    goto :goto_1e

    .line 1945
    :cond_1b
    if-ge v3, v2, :cond_1e

    .line 1946
    move v2, v3

    .line 1935
    .end local v5    # "search":Ljava/lang/CharSequence;
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1950
    .end local v4    # "i":I
    :cond_21
    const v4, 0x7fffffff

    if-ne v2, v4, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    return v0

    .line 1927
    .end local v1    # "sz":I
    .end local v2    # "ret":I
    .end local v3    # "tmp":I
    :cond_29
    :goto_29
    return v0
.end method

.method public static blacklist indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 9
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .line 1722
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_44

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_44

    .line 1725
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1726
    .local v0, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_43

    .line 1727
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1728
    .local v3, "ch":C
    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_22

    const/4 v5, 0x1

    goto :goto_23

    :cond_22
    move v5, v4

    .line 1729
    .local v5, "chFound":Z
    :goto_23
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v0, :cond_3d

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1730
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1731
    .local v6, "ch2":C
    if-eqz v5, :cond_3c

    invoke-static {p1, v6, v4}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v4

    if-gez v4, :cond_3c

    .line 1732
    return v2

    .line 1734
    .end local v6    # "ch2":C
    :cond_3c
    goto :goto_40

    .line 1735
    :cond_3d
    if-nez v5, :cond_40

    .line 1736
    return v2

    .line 1726
    .end local v3    # "ch":C
    .end local v5    # "chFound":Z
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1740
    .end local v2    # "i":I
    :cond_43
    return v1

    .line 1723
    .end local v0    # "strLen":I
    :cond_44
    :goto_44
    return v1
.end method

.method public static varargs blacklist indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .registers 12
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1672
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_43

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_43

    .line 1675
    :cond_e
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1676
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 1677
    .local v2, "csLast":I
    array-length v3, p1

    .line 1678
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 1680
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_18
    if-ge v5, v0, :cond_42

    .line 1681
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1682
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1f
    if-ge v7, v3, :cond_41

    .line 1683
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3e

    .line 1684
    if-ge v5, v2, :cond_3b

    if-ge v7, v4, :cond_3b

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 1685
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3e

    .line 1680
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1682
    .restart local v6    # "ch":C
    .restart local v7    # "j":I
    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 1693
    .end local v7    # "j":I
    :cond_41
    return v5

    .line 1695
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_42
    return v1

    .line 1673
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_43
    :goto_43
    return v1
.end method

.method public static blacklist indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 5863
    const/4 v0, -0x1

    if-ne p0, p1, :cond_4

    .line 5864
    return v0

    .line 5866
    :cond_4
    if-eqz p0, :cond_33

    if-nez p1, :cond_9

    goto :goto_33

    .line 5870
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 5871
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_21

    .line 5872
    goto :goto_24

    .line 5870
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 5875
    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_31

    goto :goto_32

    .line 5878
    :cond_31
    return v0

    .line 5876
    :cond_32
    :goto_32
    return v1

    .line 5867
    .end local v1    # "i":I
    :cond_33
    :goto_33
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs blacklist indexOfDifference([Ljava/lang/CharSequence;)I
    .registers 13
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 5914
    const/4 v0, -0x1

    if-eqz p0, :cond_63

    array-length v1, p0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_8

    goto :goto_63

    .line 5917
    :cond_8
    const/4 v1, 0x0

    .line 5918
    .local v1, "anyStringNull":Z
    const/4 v2, 0x1

    .line 5919
    .local v2, "allStringsNull":Z
    array-length v3, p0

    .line 5920
    .local v3, "arrayLen":I
    const v4, 0x7fffffff

    .line 5921
    .local v4, "shortestStrLen":I
    const/4 v5, 0x0

    .line 5926
    .local v5, "longestStrLen":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10
    if-ge v6, v3, :cond_31

    .line 5927
    aget-object v7, p0, v6

    if-nez v7, :cond_19

    .line 5928
    const/4 v1, 0x1

    .line 5929
    const/4 v4, 0x0

    goto :goto_2e

    .line 5931
    :cond_19
    const/4 v2, 0x0

    .line 5932
    aget-object v7, p0, v6

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5933
    aget-object v7, p0, v6

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 5926
    :goto_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 5938
    .end local v6    # "i":I
    :cond_31
    if-nez v2, :cond_62

    if-nez v5, :cond_38

    if-nez v1, :cond_38

    goto :goto_62

    .line 5943
    :cond_38
    const/4 v6, 0x0

    if-nez v4, :cond_3c

    .line 5944
    return v6

    .line 5948
    :cond_3c
    const/4 v7, -0x1

    .line 5949
    .local v7, "firstDiff":I
    const/4 v8, 0x0

    .local v8, "stringPos":I
    :goto_3e
    if-ge v8, v4, :cond_5c

    .line 5950
    aget-object v9, p0, v6

    invoke-interface {v9, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 5951
    .local v9, "comparisonChar":C
    const/4 v10, 0x1

    .local v10, "arrayPos":I
    :goto_47
    if-ge v10, v3, :cond_56

    .line 5952
    aget-object v11, p0, v10

    invoke-interface {v11, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-eq v11, v9, :cond_53

    .line 5953
    move v7, v8

    .line 5954
    goto :goto_56

    .line 5951
    :cond_53
    add-int/lit8 v10, v10, 0x1

    goto :goto_47

    .line 5957
    .end local v10    # "arrayPos":I
    :cond_56
    :goto_56
    if-eq v7, v0, :cond_59

    .line 5958
    goto :goto_5c

    .line 5949
    .end local v9    # "comparisonChar":C
    :cond_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    .line 5962
    .end local v8    # "stringPos":I
    :cond_5c
    :goto_5c
    if-ne v7, v0, :cond_61

    if-eq v4, v5, :cond_61

    .line 5966
    return v4

    .line 5968
    :cond_61
    return v7

    .line 5939
    .end local v7    # "firstDiff":I
    :cond_62
    :goto_62
    return v0

    .line 5915
    .end local v1    # "anyStringNull":Z
    .end local v2    # "allStringsNull":Z
    .end local v3    # "arrayLen":I
    .end local v4    # "shortestStrLen":I
    .end local v5    # "longestStrLen":I
    :cond_63
    :goto_63
    return v0
.end method

.method public static blacklist indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 1049
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static blacklist indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 12
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1085
    const/4 v0, -0x1

    if-eqz p0, :cond_35

    if-nez p1, :cond_6

    goto :goto_35

    .line 1088
    :cond_6
    if-gez p2, :cond_9

    .line 1089
    const/4 p2, 0x0

    .line 1091
    :cond_9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1092
    .local v1, "endLimit":I
    if-le p2, v1, :cond_17

    .line 1093
    return v0

    .line 1095
    :cond_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1e

    .line 1096
    return p2

    .line 1098
    :cond_1e
    move v2, p2

    .local v2, "i":I
    :goto_1f
    if-ge v2, v1, :cond_34

    .line 1099
    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move v5, v2

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1100
    return v2

    .line 1098
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1103
    .end local v2    # "i":I
    :cond_34
    return v0

    .line 1086
    .end local v1    # "endLimit":I
    :cond_35
    :goto_35
    return v0
.end method

.method public static blacklist isAllLowerCase(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5460
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_21

    .line 5463
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5464
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 5465
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5466
    return v0

    .line 5464
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5469
    .end local v2    # "i":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 5461
    .end local v1    # "sz":I
    :cond_21
    :goto_21
    return v0
.end method

.method public static blacklist isAllUpperCase(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5492
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_21

    .line 5495
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5496
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 5497
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5498
    return v0

    .line 5496
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5501
    .end local v2    # "i":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 5493
    .end local v1    # "sz":I
    :cond_21
    :goto_21
    return v0
.end method

.method public static blacklist isAlpha(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5178
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 5181
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5182
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 5183
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5184
    return v0

    .line 5182
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5187
    .end local v2    # "i":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 5179
    .end local v1    # "sz":I
    :cond_21
    :goto_21
    return v0
.end method

.method public static blacklist isAlphaSpace(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5213
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5214
    return v0

    .line 5216
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5217
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_21

    .line 5218
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    .line 5219
    return v0

    .line 5217
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5222
    .end local v2    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAlphanumeric(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5248
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 5251
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5252
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 5253
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5254
    return v0

    .line 5252
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5257
    .end local v2    # "i":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 5249
    .end local v1    # "sz":I
    :cond_21
    :goto_21
    return v0
.end method

.method public static blacklist isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5283
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5284
    return v0

    .line 5286
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5287
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_21

    .line 5288
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    .line 5289
    return v0

    .line 5287
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5292
    .end local v2    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5322
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5323
    return v0

    .line 5325
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5326
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 5327
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/miui/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 5328
    return v0

    .line 5326
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5331
    .end local v2    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isBlank(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 225
    const/4 v0, 0x1

    if-eqz p0, :cond_1e

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v2, v1

    .local v2, "strLen":I
    if-nez v1, :cond_b

    goto :goto_1e

    .line 228
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_1d

    .line 229
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 230
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 233
    .end local v1    # "i":I
    :cond_1d
    return v0

    .line 226
    .end local v2    # "strLen":I
    :cond_1e
    :goto_1e
    return v0
.end method

.method public static blacklist isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 185
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isNotBlank(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 254
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist isNotEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 204
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist isNumeric(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5358
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 5361
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5362
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 5363
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 5364
    return v0

    .line 5362
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 5367
    .end local v2    # "i":I
    :cond_1f
    const/4 v0, 0x1

    return v0

    .line 5359
    .end local v1    # "sz":I
    :cond_21
    :goto_21
    return v0
.end method

.method public static blacklist isNumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5395
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5396
    return v0

    .line 5398
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5399
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_21

    .line 5400
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1e

    .line 5401
    return v0

    .line 5399
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5404
    .end local v2    # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5428
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 5429
    return v0

    .line 5431
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5432
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 5433
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 5434
    return v0

    .line 5432
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5437
    .end local v2    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .registers 3
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3511
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_4

    .line 3512
    const/4 v0, 0x0

    return-object v0

    .line 3514
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3532
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_4

    .line 3533
    const/4 v0, 0x0

    return-object v0

    .line 3535
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist join(Ljava/util/Iterator;C)Ljava/lang/String;
    .registers 5
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3423
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_4

    .line 3424
    const/4 v0, 0x0

    return-object v0

    .line 3426
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3427
    const-string v0, ""

    return-object v0

    .line 3429
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3430
    .local v0, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3431
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3435
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3436
    .local v1, "buf":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_28

    .line 3437
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3440
    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3441
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3442
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3443
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3a

    .line 3444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3446
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_3a
    goto :goto_28

    .line 3448
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3467
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_4

    .line 3468
    const/4 v0, 0x0

    return-object v0

    .line 3470
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3471
    const-string v0, ""

    return-object v0

    .line 3473
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3474
    .local v0, "first":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 3475
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3479
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3480
    .local v1, "buf":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_28

    .line 3481
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3484
    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3485
    if-eqz p1, :cond_33

    .line 3486
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3488
    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3489
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_3c

    .line 3490
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3492
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_3c
    goto :goto_28

    .line 3493
    :cond_3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs blacklist join([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3240
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist join([Ljava/lang/Object;C)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C

    .line 3266
    if-nez p0, :cond_4

    .line 3267
    const/4 v0, 0x0

    return-object v0

    .line 3270
    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist join([Ljava/lang/Object;CII)Ljava/lang/String;
    .registers 8
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 3300
    if-nez p0, :cond_4

    .line 3301
    const/4 v0, 0x0

    return-object v0

    .line 3303
    :cond_4
    sub-int v0, p3, p2

    .line 3304
    .local v0, "noOfItems":I
    if-gtz v0, :cond_b

    .line 3305
    const-string v1, ""

    return-object v1

    .line 3308
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3310
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_13
    if-ge v2, p3, :cond_26

    .line 3311
    if-le v2, p2, :cond_1a

    .line 3312
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3314
    :cond_1a
    aget-object v3, p0, v2

    if-eqz v3, :cond_23

    .line 3315
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3310
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3318
    .end local v2    # "i":I
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;

    .line 3345
    if-nez p0, :cond_4

    .line 3346
    const/4 v0, 0x0

    return-object v0

    .line 3348
    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 3379
    if-nez p0, :cond_4

    .line 3380
    const/4 v0, 0x0

    return-object v0

    .line 3382
    :cond_4
    if-nez p1, :cond_8

    .line 3383
    const-string p1, ""

    .line 3388
    :cond_8
    sub-int v0, p3, p2

    .line 3389
    .local v0, "noOfItems":I
    if-gtz v0, :cond_f

    .line 3390
    const-string v1, ""

    return-object v1

    .line 3393
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3395
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "i":I
    :goto_17
    if-ge v2, p3, :cond_2a

    .line 3396
    if-le v2, p2, :cond_1e

    .line 3397
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3399
    :cond_1e
    aget-object v3, p0, v2

    if-eqz v3, :cond_27

    .line 3400
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3395
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 3403
    .end local v2    # "i":I
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist lastIndexOf(Ljava/lang/CharSequence;I)I
    .registers 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 1129
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1130
    const/4 v0, -0x1

    return v0

    .line 1132
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static blacklist lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .line 1164
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1165
    const/4 v0, -0x1

    return v0

    .line 1167
    :cond_8
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static blacklist lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 1194
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1197
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1195
    :cond_e
    :goto_e
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1268
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 1271
    :cond_5
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1269
    :cond_a
    :goto_a
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs blacklist lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .line 1980
    if-eqz p0, :cond_1f

    if-nez p1, :cond_5

    goto :goto_1f

    .line 1983
    :cond_5
    array-length v0, p1

    .line 1984
    .local v0, "sz":I
    const/4 v1, -0x1

    .line 1985
    .local v1, "ret":I
    const/4 v2, 0x0

    .line 1986
    .local v2, "tmp":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_1e

    .line 1987
    aget-object v4, p1, v3

    .line 1988
    .local v4, "search":Ljava/lang/CharSequence;
    if-nez v4, :cond_10

    .line 1989
    goto :goto_1b

    .line 1991
    :cond_10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {p0, v4, v5}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1992
    if-le v2, v1, :cond_1b

    .line 1993
    move v1, v2

    .line 1986
    .end local v4    # "search":Ljava/lang/CharSequence;
    :cond_1b
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1996
    .end local v3    # "i":I
    :cond_1e
    return v1

    .line 1981
    .end local v0    # "sz":I
    .end local v1    # "ret":I
    .end local v2    # "tmp":I
    :cond_1f
    :goto_1f
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 1298
    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 1301
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 1299
    :cond_e
    :goto_e
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 11
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 1334
    const/4 v0, -0x1

    if-eqz p0, :cond_3c

    if-nez p1, :cond_6

    goto :goto_3c

    .line 1337
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1b

    .line 1338
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int p2, v1, v2

    .line 1340
    :cond_1b
    if-gez p2, :cond_1e

    .line 1341
    return v0

    .line 1343
    :cond_1e
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_25

    .line 1344
    return p2

    .line 1347
    :cond_25
    move v1, p2

    .local v1, "i":I
    :goto_26
    if-ltz v1, :cond_3b

    .line 1348
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, p0

    move v4, v1

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1349
    return v1

    .line 1347
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 1352
    .end local v1    # "i":I
    :cond_3b
    return v0

    .line 1335
    :cond_3c
    :goto_3c
    return v0
.end method

.method public static blacklist lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .line 1235
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static blacklist left(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2136
    if-nez p0, :cond_4

    .line 2137
    const/4 v0, 0x0

    return-object v0

    .line 2139
    :cond_4
    if-gez p1, :cond_9

    .line 2140
    const-string v0, ""

    return-object v0

    .line 2142
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_10

    .line 2143
    return-object p0

    .line 2145
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4694
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4719
    if-nez p0, :cond_4

    .line 4720
    const/4 v0, 0x0

    return-object v0

    .line 4722
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 4723
    .local v0, "pads":I
    if-gtz v0, :cond_d

    .line 4724
    return-object p0

    .line 4726
    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    .line 4727
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4729
    :cond_1a
    invoke-static {p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 4756
    if-nez p0, :cond_4

    .line 4757
    const/4 v0, 0x0

    return-object v0

    .line 4759
    :cond_4
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4760
    const-string p2, " "

    .line 4762
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4763
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4764
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 4765
    .local v2, "pads":I
    if-gtz v2, :cond_19

    .line 4766
    return-object p0

    .line 4768
    :cond_19
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2a

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_2a

    .line 4769
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4772
    :cond_2a
    if-ne v2, v0, :cond_31

    .line 4773
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4774
    :cond_31
    if-ge v2, v0, :cond_3c

    .line 4775
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4777
    :cond_3c
    new-array v3, v2, [C

    .line 4778
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 4779
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_43
    if-ge v5, v2, :cond_4e

    .line 4780
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 4779
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 4782
    .end local v5    # "i":I
    :cond_4e
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static blacklist length(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 4798
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_8
    return v0
.end method

.method public static blacklist lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4982
    if-nez p0, :cond_4

    .line 4983
    const/4 v0, 0x0

    return-object v0

    .line 4985
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 5005
    if-nez p0, :cond_4

    .line 5006
    const/4 v0, 0x0

    return-object v0

    .line 5008
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist mid(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .line 2207
    if-nez p0, :cond_4

    .line 2208
    const/4 v0, 0x0

    return-object v0

    .line 2210
    :cond_4
    if-ltz p2, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_d

    goto :goto_24

    .line 2213
    :cond_d
    if-gez p1, :cond_10

    .line 2214
    const/4 p1, 0x0

    .line 2216
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_1d

    .line 2217
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2219
    :cond_1d
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2211
    :cond_24
    :goto_24
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 6529
    if-nez p0, :cond_4

    .line 6530
    const/4 v0, 0x0

    return-object v0

    .line 6532
    :cond_4
    sget-object v0, Lorg/apache/miui/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .line 983
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static blacklist ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .registers 7
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I
    .param p3, "lastIndex"    # Z

    .line 1001
    const/4 v0, -0x1

    if-eqz p0, :cond_35

    if-eqz p1, :cond_35

    if-gtz p2, :cond_8

    goto :goto_35

    .line 1004
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_17

    .line 1005
    if-eqz p3, :cond_15

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0

    .line 1007
    :cond_17
    const/4 v1, 0x0

    .line 1008
    .local v1, "found":I
    if-eqz p3, :cond_1e

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1010
    .local v0, "index":I
    :cond_1e
    if-eqz p3, :cond_27

    .line 1011
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_2d

    .line 1013
    :cond_27
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, p1, v2}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1015
    :goto_2d
    if-gez v0, :cond_30

    .line 1016
    return v0

    .line 1018
    :cond_30
    add-int/lit8 v1, v1, 0x1

    .line 1019
    if-lt v1, p2, :cond_1e

    .line 1020
    return v0

    .line 1002
    .end local v0    # "index":I
    .end local v1    # "found":I
    :cond_35
    :goto_35
    return v0
.end method

.method public static blacklist overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 4282
    if-nez p0, :cond_4

    .line 4283
    const/4 v0, 0x0

    return-object v0

    .line 4285
    :cond_4
    if-nez p1, :cond_8

    .line 4286
    const-string p1, ""

    .line 4288
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4289
    .local v0, "len":I
    if-gez p2, :cond_f

    .line 4290
    const/4 p2, 0x0

    .line 4292
    :cond_f
    if-le p2, v0, :cond_12

    .line 4293
    move p2, v0

    .line 4295
    :cond_12
    if-gez p3, :cond_15

    .line 4296
    const/4 p3, 0x0

    .line 4298
    :cond_15
    if-le p3, v0, :cond_18

    .line 4299
    move p3, v0

    .line 4301
    :cond_18
    if-le p2, p3, :cond_1d

    .line 4302
    move v1, p2

    .line 4303
    .local v1, "temp":I
    move p2, p3

    .line 4304
    move p3, v1

    .line 4306
    .end local v1    # "temp":I
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    add-int v2, v0, p2

    sub-int/2addr v2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 4307
    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4308
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4309
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4306
    return-object v1
.end method

.method public static blacklist remove(Ljava/lang/String;C)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .line 3763
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_2c

    .line 3766
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3767
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 3768
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v3, v0

    if-ge v2, v3, :cond_25

    .line 3769
    aget-char v3, v0, v2

    if-eq v3, p1, :cond_22

    .line 3770
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    aget-char v4, v0, v2

    aput-char v4, v0, v1

    move v1, v3

    .line 3768
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 3773
    .end local v2    # "i":I
    :cond_25
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 3764
    .end local v0    # "chars":[C
    .end local v1    # "pos":I
    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public static blacklist remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3737
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_15

    .line 3740
    :cond_d
    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, p1, v1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3738
    :cond_15
    :goto_15
    return-object p0
.end method

.method private static blacklist removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 674
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetjava6NormalizeMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetjava6NormalizerFormNFD()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 678
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetjava6NormalizeMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetjava6NormalizerFormNFD()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 679
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetjava6Pattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    return-object v0

    .line 675
    .end local v0    # "result":Ljava/lang/String;
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetjava6Exception()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "java.text.Normalizer is not available"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static blacklist removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 698
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetsunDecomposeMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 702
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetsunDecomposeMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 703
    .local v0, "result":Ljava/lang/String;
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetsunPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    return-object v0

    .line 699
    .end local v0    # "result":Ljava/lang/String;
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetsunException()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "sun.text.Normalizer is not available"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3668
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_23

    .line 3671
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3672
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3674
    :cond_22
    return-object p0

    .line 3669
    :cond_23
    :goto_23
    return-object p0
.end method

.method public static blacklist removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3704
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_23

    .line 3707
    :cond_d
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3708
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3710
    :cond_22
    return-object p0

    .line 3705
    :cond_23
    :goto_23
    return-object p0
.end method

.method public static blacklist removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3599
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1d

    .line 3602
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3603
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3605
    :cond_1c
    return-object p0

    .line 3600
    :cond_1d
    :goto_1d
    return-object p0
.end method

.method public static blacklist removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 3634
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1d

    .line 3637
    :cond_d
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3638
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3640
    :cond_1c
    return-object p0

    .line 3635
    :cond_1d
    :goto_1d
    return-object p0
.end method

.method public static blacklist repeat(CI)Ljava/lang/String;
    .registers 4
    .param p0, "ch"    # C
    .param p1, "repeat"    # I

    .line 4555
    new-array v0, p1, [C

    .line 4556
    .local v0, "buf":[C
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_b

    .line 4557
    aput-char p0, v0, v1

    .line 4556
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 4559
    .end local v1    # "i":I
    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static blacklist repeat(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "repeat"    # I

    .line 4466
    if-nez p0, :cond_4

    .line 4467
    const/4 v0, 0x0

    return-object v0

    .line 4469
    :cond_4
    if-gtz p1, :cond_9

    .line 4470
    const-string v0, ""

    return-object v0

    .line 4472
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4473
    .local v0, "inputLength":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_66

    if-nez v0, :cond_13

    goto :goto_66

    .line 4476
    :cond_13
    const/4 v2, 0x0

    if-ne v0, v1, :cond_23

    const/16 v3, 0x2000

    if-gt p1, v3, :cond_23

    .line 4477
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4480
    :cond_23
    mul-int v3, v0, p1

    .line 4481
    .local v3, "outputLength":I
    packed-switch v0, :pswitch_data_68

    .line 4494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4495
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    goto :goto_59

    .line 4485
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :pswitch_2f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 4486
    .local v2, "ch0":C
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 4487
    .local v1, "ch1":C
    new-array v4, v3, [C

    .line 4488
    .local v4, "output2":[C
    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, -0x2

    .local v5, "i":I
    :goto_3d
    if-ltz v5, :cond_4a

    .line 4489
    aput-char v2, v4, v5

    .line 4490
    add-int/lit8 v6, v5, 0x1

    aput-char v1, v4, v6

    .line 4488
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_3d

    .line 4492
    .end local v5    # "i":I
    :cond_4a
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 4483
    .end local v1    # "ch1":C
    .end local v2    # "ch0":C
    .end local v4    # "output2":[C
    :pswitch_50
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4495
    .local v1, "buf":Ljava/lang/StringBuilder;
    .local v2, "i":I
    :goto_59
    if-ge v2, p1, :cond_61

    .line 4496
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4495
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 4498
    .end local v2    # "i":I
    :cond_61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4474
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "outputLength":I
    :cond_66
    :goto_66
    return-object p0

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_50
        :pswitch_2f
    .end packed-switch
.end method

.method public static blacklist repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .line 4523
    if-eqz p0, :cond_1f

    if-nez p1, :cond_5

    goto :goto_1f

    .line 4527
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4528
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4524
    .end local v0    # "result":Ljava/lang/String;
    :cond_1f
    :goto_1f
    invoke-static {p0, p2}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 3829
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 3861
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    if-eqz p2, :cond_64

    if-nez p3, :cond_11

    goto :goto_64

    .line 3864
    :cond_11
    const/4 v0, 0x0

    .line 3865
    .local v0, "start":I
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3866
    .local v1, "end":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 3867
    return-object p0

    .line 3869
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3870
    .local v3, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 3871
    .local v4, "increase":I
    if-gez v4, :cond_27

    const/4 v5, 0x0

    goto :goto_28

    :cond_27
    move v5, v4

    :goto_28
    move v4, v5

    .line 3872
    const/16 v5, 0x40

    if-gez p3, :cond_30

    const/16 v5, 0x10

    goto :goto_34

    :cond_30
    if-le p3, v5, :cond_33

    goto :goto_34

    :cond_33
    move v5, p3

    :goto_34
    mul-int/2addr v4, v5

    .line 3873
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3874
    .local v5, "buf":Ljava/lang/StringBuilder;
    :goto_3f
    if-eq v1, v2, :cond_58

    .line 3875
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3876
    add-int v0, v1, v3

    .line 3877
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_53

    .line 3878
    goto :goto_58

    .line 3880
    :cond_53
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_3f

    .line 3882
    :cond_58
    :goto_58
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3883
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3862
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v3    # "replLength":I
    .end local v4    # "increase":I
    .end local v5    # "buf":Ljava/lang/StringBuilder;
    :cond_64
    :goto_64
    return-object p0
.end method

.method public static blacklist replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "replaceChar"    # C

    .line 4179
    if-nez p0, :cond_4

    .line 4180
    const/4 v0, 0x0

    return-object v0

    .line 4182
    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .line 4222
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_45

    .line 4225
    :cond_d
    if-nez p2, :cond_11

    .line 4226
    const-string p2, ""

    .line 4228
    :cond_11
    const/4 v0, 0x0

    .line 4229
    .local v0, "modified":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4230
    .local v1, "replaceCharsLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 4231
    .local v2, "strLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4232
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v2, :cond_3d

    .line 4233
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4234
    .local v5, "ch":C
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 4235
    .local v6, "index":I
    if-ltz v6, :cond_37

    .line 4236
    const/4 v0, 0x1

    .line 4237
    if-ge v6, v1, :cond_3a

    .line 4238
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 4241
    :cond_37
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4232
    .end local v5    # "ch":C
    .end local v6    # "index":I
    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 4244
    .end local v4    # "i":I
    :cond_3d
    if-eqz v0, :cond_44

    .line 4245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 4247
    :cond_44
    return-object p0

    .line 4223
    .end local v0    # "modified":Z
    .end local v1    # "replaceCharsLength":I
    .end local v2    # "strLength":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_45
    :goto_45
    return-object p0
.end method

.method public static blacklist replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 3926
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 22
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "timeToLive"    # I

    .line 4034
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    if-eqz v0, :cond_132

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_132

    if-eqz v1, :cond_132

    array-length v4, v1

    if-eqz v4, :cond_132

    if-eqz v2, :cond_132

    array-length v4, v2

    if-nez v4, :cond_1c

    goto/16 :goto_132

    .line 4040
    :cond_1c
    if-ltz p4, :cond_12a

    .line 4045
    array-length v4, v1

    .line 4046
    .local v4, "searchLength":I
    array-length v5, v2

    .line 4049
    .local v5, "replacementLength":I
    if-ne v4, v5, :cond_107

    .line 4057
    new-array v6, v4, [Z

    .line 4060
    .local v6, "noMoreMatchesForReplIndex":[Z
    const/4 v7, -0x1

    .line 4061
    .local v7, "textIndex":I
    const/4 v8, -0x1

    .line 4062
    .local v8, "replaceIndex":I
    const/4 v9, -0x1

    .line 4066
    .local v9, "tempIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_28
    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ge v10, v4, :cond_55

    .line 4067
    aget-boolean v13, v6, v10

    if-nez v13, :cond_52

    aget-object v13, v1, v10

    if-eqz v13, :cond_52

    aget-object v13, v1, v10

    .line 4068
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_52

    aget-object v13, v2, v10

    if-nez v13, :cond_41

    .line 4069
    goto :goto_52

    .line 4071
    :cond_41
    aget-object v13, v1, v10

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 4074
    if-ne v9, v11, :cond_4c

    .line 4075
    aput-boolean v12, v6, v10

    goto :goto_52

    .line 4077
    :cond_4c
    if-eq v7, v11, :cond_50

    if-ge v9, v7, :cond_52

    .line 4078
    :cond_50
    move v7, v9

    .line 4079
    move v8, v10

    .line 4066
    :cond_52
    :goto_52
    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    .line 4086
    .end local v10    # "i":I
    :cond_55
    if-ne v7, v11, :cond_58

    .line 4087
    return-object v0

    .line 4090
    :cond_58
    const/4 v10, 0x0

    .line 4093
    .local v10, "start":I
    const/4 v13, 0x0

    .line 4096
    .local v13, "increase":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5b
    array-length v15, v1

    if-ge v14, v15, :cond_7e

    .line 4097
    aget-object v15, v1, v14

    if-eqz v15, :cond_7b

    aget-object v15, v2, v14

    if-nez v15, :cond_67

    .line 4098
    goto :goto_7b

    .line 4100
    :cond_67
    aget-object v15, v2, v14

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    aget-object v16, v1, v14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v15, v15, v16

    .line 4101
    .local v15, "greater":I
    if-lez v15, :cond_7b

    .line 4102
    mul-int/lit8 v16, v15, 0x3

    add-int v13, v13, v16

    .line 4096
    .end local v15    # "greater":I
    :cond_7b
    :goto_7b
    add-int/lit8 v14, v14, 0x1

    goto :goto_5b

    .line 4106
    .end local v14    # "i":I
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v14, v14, 0x5

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 4108
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v13

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4110
    .local v14, "buf":Ljava/lang/StringBuilder;
    :goto_92
    if-eq v7, v11, :cond_e8

    .line 4112
    move v15, v10

    .local v15, "i":I
    :goto_95
    if-ge v15, v7, :cond_a2

    .line 4113
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4112
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x1

    goto :goto_95

    .line 4115
    .end local v15    # "i":I
    :cond_a2
    aget-object v12, v2, v8

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4117
    aget-object v12, v1, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v10, v7, v12

    .line 4119
    const/4 v7, -0x1

    .line 4120
    const/4 v8, -0x1

    .line 4121
    const/4 v9, -0x1

    .line 4124
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_b3
    if-ge v12, v4, :cond_e5

    .line 4125
    aget-boolean v15, v6, v12

    if-nez v15, :cond_e1

    aget-object v15, v1, v12

    if-eqz v15, :cond_e1

    aget-object v15, v1, v12

    .line 4126
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_df

    aget-object v15, v2, v12

    if-nez v15, :cond_cb

    .line 4127
    const/4 v15, 0x1

    goto :goto_e2

    .line 4129
    :cond_cb
    aget-object v15, v1, v12

    invoke-virtual {v0, v15, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 4132
    if-ne v9, v11, :cond_d7

    .line 4133
    const/4 v15, 0x1

    aput-boolean v15, v6, v12

    goto :goto_e2

    .line 4135
    :cond_d7
    const/4 v15, 0x1

    if-eq v7, v11, :cond_dc

    if-ge v9, v7, :cond_e2

    .line 4136
    :cond_dc
    move v7, v9

    .line 4137
    move v8, v12

    goto :goto_e2

    .line 4126
    :cond_df
    const/4 v15, 0x1

    goto :goto_e2

    .line 4125
    :cond_e1
    const/4 v15, 0x1

    .line 4124
    :cond_e2
    :goto_e2
    add-int/lit8 v12, v12, 0x1

    goto :goto_b3

    :cond_e5
    const/4 v15, 0x1

    move v12, v15

    .end local v12    # "i":I
    goto :goto_92

    .line 4144
    :cond_e8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 4145
    .local v11, "textLength":I
    move v12, v10

    .restart local v12    # "i":I
    :goto_ed
    if-ge v12, v11, :cond_f9

    .line 4146
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4145
    add-int/lit8 v12, v12, 0x1

    goto :goto_ed

    .line 4148
    .end local v12    # "i":I
    :cond_f9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4149
    .local v12, "result":Ljava/lang/String;
    if-nez v3, :cond_100

    .line 4150
    return-object v12

    .line 4153
    :cond_100
    add-int/lit8 v15, p4, -0x1

    invoke-static {v12, v1, v2, v3, v15}, Lorg/apache/miui/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 4050
    .end local v6    # "noMoreMatchesForReplIndex":[Z
    .end local v7    # "textIndex":I
    .end local v8    # "replaceIndex":I
    .end local v9    # "tempIndex":I
    .end local v10    # "start":I
    .end local v11    # "textLength":I
    .end local v12    # "result":Ljava/lang/String;
    .end local v13    # "increase":I
    .end local v14    # "buf":Ljava/lang/StringBuilder;
    :cond_107
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Search and Replace array lengths don\'t match: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4041
    .end local v4    # "searchLength":I
    .end local v5    # "replacementLength":I
    :cond_12a
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4036
    :cond_132
    :goto_132
    return-object v0
.end method

.method public static blacklist replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 3976
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p1

    .line 3977
    .local v0, "timeToLive":I
    :goto_5
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 3802
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 5608
    if-nez p0, :cond_4

    .line 5609
    const/4 v0, 0x0

    return-object v0

    .line 5611
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 5634
    if-nez p0, :cond_4

    .line 5635
    const/4 v0, 0x0

    return-object v0

    .line 5639
    :cond_4
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 5640
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 5641
    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist right(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 2169
    if-nez p0, :cond_4

    .line 2170
    const/4 v0, 0x0

    return-object v0

    .line 2172
    :cond_4
    if-gez p1, :cond_9

    .line 2173
    const-string v0, ""

    return-object v0

    .line 2175
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_10

    .line 2176
    return-object p0

    .line 2178
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 4582
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 4607
    if-nez p0, :cond_4

    .line 4608
    const/4 v0, 0x0

    return-object v0

    .line 4610
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 4611
    .local v0, "pads":I
    if-gtz v0, :cond_d

    .line 4612
    return-object p0

    .line 4614
    :cond_d
    const/16 v1, 0x2000

    if-le v0, v1, :cond_1a

    .line 4615
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4617
    :cond_1a
    invoke-static {p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 4644
    if-nez p0, :cond_4

    .line 4645
    const/4 v0, 0x0

    return-object v0

    .line 4647
    :cond_4
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4648
    const-string p2, " "

    .line 4650
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 4651
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 4652
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 4653
    .local v2, "pads":I
    if-gtz v2, :cond_19

    .line 4654
    return-object p0

    .line 4656
    :cond_19
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2a

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_2a

    .line 4657
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4660
    :cond_2a
    if-ne v2, v0, :cond_31

    .line 4661
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4662
    :cond_31
    if-ge v2, v0, :cond_3c

    .line 4663
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4665
    :cond_3c
    new-array v3, v2, [C

    .line 4666
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 4667
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_43
    if-ge v5, v2, :cond_4e

    .line 4668
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 4667
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 4670
    .end local v5    # "i":I
    :cond_4e
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static blacklist split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 2537
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 2565
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 2594
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2628
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 3138
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "camelCase"    # Z

    .line 3184
    if-nez p0, :cond_4

    .line 3185
    const/4 v0, 0x0

    return-object v0

    .line 3187
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 3188
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 3190
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3191
    .local v0, "c":[C
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3192
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 3193
    .local v2, "tokenStart":I
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    .line 3194
    .local v3, "currentType":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "pos":I
    :goto_1f
    array-length v5, v0

    if-ge v4, v5, :cond_52

    .line 3195
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v5

    .line 3196
    .local v5, "type":I
    if-ne v5, v3, :cond_2b

    .line 3197
    goto :goto_4f

    .line 3199
    :cond_2b
    if-eqz p1, :cond_43

    const/4 v6, 0x2

    if-ne v5, v6, :cond_43

    const/4 v6, 0x1

    if-ne v3, v6, :cond_43

    .line 3200
    add-int/lit8 v6, v4, -0x1

    .line 3201
    .local v6, "newTokenStart":I
    if-eq v6, v2, :cond_42

    .line 3202
    new-instance v7, Ljava/lang/String;

    sub-int v8, v6, v2

    invoke-direct {v7, v0, v2, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3203
    move v2, v6

    .line 3205
    .end local v6    # "newTokenStart":I
    :cond_42
    goto :goto_4e

    .line 3206
    :cond_43
    new-instance v6, Ljava/lang/String;

    sub-int v7, v4, v2

    invoke-direct {v6, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3207
    move v2, v4

    .line 3209
    :goto_4e
    move v3, v5

    .line 3194
    .end local v5    # "type":I
    :goto_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 3211
    .end local v4    # "pos":I
    :cond_52
    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-direct {v4, v0, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3212
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static blacklist splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 3166
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2655
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2686
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2715
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 2748
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 2767
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2768
    return-object v0

    .line 2771
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2773
    .local v1, "len":I
    if-nez v1, :cond_d

    .line 2774
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2777
    :cond_d
    if-eqz p1, :cond_71

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_71

    .line 2782
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2784
    .local v0, "separatorLength":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2785
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2786
    .local v4, "numberOfSubstrings":I
    const/4 v5, 0x0

    .line 2787
    .local v5, "beg":I
    const/4 v6, 0x0

    .line 2788
    .local v6, "end":I
    :goto_24
    if-ge v6, v1, :cond_64

    .line 2789
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 2791
    const/4 v7, -0x1

    if-le v6, v7, :cond_5b

    .line 2792
    if-le v6, v5, :cond_46

    .line 2793
    add-int/lit8 v4, v4, 0x1

    .line 2795
    if-ne v4, p2, :cond_3c

    .line 2796
    move v6, v1

    .line 2797
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 2801
    :cond_3c
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2806
    add-int v5, v6, v0

    goto :goto_24

    .line 2810
    :cond_46
    if-eqz p3, :cond_58

    .line 2811
    add-int/lit8 v4, v4, 0x1

    .line 2812
    if-ne v4, p2, :cond_55

    .line 2813
    move v6, v1

    .line 2814
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 2816
    :cond_55
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2819
    :cond_58
    :goto_58
    add-int v5, v6, v0

    goto :goto_24

    .line 2823
    :cond_5b
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2824
    move v6, v1

    goto :goto_24

    .line 2828
    :cond_64
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 2779
    .end local v0    # "separatorLength":I
    .end local v3    # "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "numberOfSubstrings":I
    .end local v5    # "beg":I
    .end local v6    # "end":I
    :cond_71
    :goto_71
    invoke-static {p0, v0, p2, p3}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 2857
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 2893
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 2976
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 3016
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C
    .param p2, "preserveAllTokens"    # Z

    .line 2911
    if-nez p0, :cond_4

    .line 2912
    const/4 v0, 0x0

    return-object v0

    .line 2914
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2915
    .local v0, "len":I
    if-nez v0, :cond_d

    .line 2916
    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 2918
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2919
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .line 2920
    .local v3, "start":I
    const/4 v4, 0x0

    .line 2921
    .local v4, "match":Z
    const/4 v5, 0x0

    .line 2922
    .local v5, "lastMatch":Z
    :goto_16
    if-ge v2, v0, :cond_34

    .line 2923
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_2f

    .line 2924
    if-nez v4, :cond_22

    if-eqz p2, :cond_2b

    .line 2925
    :cond_22
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2926
    const/4 v4, 0x0

    .line 2927
    const/4 v5, 0x1

    .line 2929
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 2930
    goto :goto_16

    .line 2932
    :cond_2f
    const/4 v5, 0x0

    .line 2933
    const/4 v4, 0x1

    .line 2934
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2936
    :cond_34
    if-nez v4, :cond_3a

    if-eqz p2, :cond_41

    if-eqz v5, :cond_41

    .line 2937
    :cond_3a
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2939
    :cond_41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method private static blacklist splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 14
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 3038
    if-nez p0, :cond_4

    .line 3039
    const/4 v0, 0x0

    return-object v0

    .line 3041
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3042
    .local v0, "len":I
    if-nez v0, :cond_d

    .line 3043
    sget-object v1, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 3045
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3046
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 3047
    .local v2, "sizePlus1":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .line 3048
    .local v4, "start":I
    const/4 v5, 0x0

    .line 3049
    .local v5, "match":Z
    const/4 v6, 0x0

    .line 3050
    .local v6, "lastMatch":Z
    const/4 v7, 0x1

    if-nez p1, :cond_44

    .line 3052
    :goto_1a
    if-ge v3, v0, :cond_a0

    .line 3053
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 3054
    if-nez v5, :cond_2a

    if-eqz p3, :cond_3c

    .line 3055
    :cond_2a
    const/4 v6, 0x1

    .line 3056
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_32

    .line 3057
    move v2, v0

    .line 3058
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 3060
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_32
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3061
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 3063
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_3c
    add-int/2addr v3, v7

    move v4, v3

    .line 3064
    goto :goto_1a

    .line 3066
    :cond_3f
    const/4 v6, 0x0

    .line 3067
    const/4 v5, 0x1

    .line 3068
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 3070
    :cond_44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_76

    .line 3072
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 3073
    .local v8, "sep":C
    :goto_4f
    if-ge v3, v0, :cond_75

    .line 3074
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_70

    .line 3075
    if-nez v5, :cond_5b

    if-eqz p3, :cond_6d

    .line 3076
    :cond_5b
    const/4 v6, 0x1

    .line 3077
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v9, "sizePlus1":I
    if-ne v2, p2, :cond_63

    .line 3078
    move v2, v0

    .line 3079
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 3081
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_63
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3082
    const/4 v2, 0x0

    move v5, v2

    move v2, v9

    .line 3084
    .end local v9    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_6d
    add-int/2addr v3, v7

    move v4, v3

    .line 3085
    goto :goto_4f

    .line 3087
    :cond_70
    const/4 v6, 0x0

    .line 3088
    const/4 v5, 0x1

    .line 3089
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 3091
    .end local v8    # "sep":C
    :cond_75
    goto :goto_a0

    .line 3093
    :cond_76
    :goto_76
    if-ge v3, v0, :cond_a0

    .line 3094
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_9b

    .line 3095
    if-nez v5, :cond_86

    if-eqz p3, :cond_98

    .line 3096
    :cond_86
    const/4 v6, 0x1

    .line 3097
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_8e

    .line 3098
    move v2, v0

    .line 3099
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 3101
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_8e
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3102
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 3104
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_98
    add-int/2addr v3, v7

    move v4, v3

    .line 3105
    goto :goto_76

    .line 3107
    :cond_9b
    const/4 v6, 0x0

    .line 3108
    const/4 v5, 0x1

    .line 3109
    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    .line 3112
    :cond_a0
    :goto_a0
    if-nez v5, :cond_a6

    if-eqz p3, :cond_ad

    if-eqz v6, :cond_ad

    .line 3113
    :cond_a6
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3115
    :cond_ad
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static blacklist startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 6327
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static blacklist startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 12
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .line 6368
    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    if-nez p1, :cond_6

    goto :goto_1f

    .line 6371
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_11

    .line 6372
    return v0

    .line 6374
    :cond_11
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move v4, p2

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/miui/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 6369
    :cond_1f
    :goto_1f
    if-nez p0, :cond_24

    if-nez p1, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0
.end method

.method public static varargs blacklist startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 7
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 6397
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_20

    .line 6400
    :cond_e
    array-length v0, p1

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_1f

    aget-object v3, p1, v2

    .line 6401
    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 6402
    const/4 v0, 0x1

    return v0

    .line 6400
    .end local v3    # "searchString":Ljava/lang/CharSequence;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 6405
    :cond_1f
    return v1

    .line 6398
    :cond_20
    :goto_20
    return v1
.end method

.method public static blacklist startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 6353
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 363
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 450
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 451
    return-object p0

    .line 453
    :cond_7
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 454
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # Ljava/lang/String;

    .line 630
    if-nez p0, :cond_4

    .line 631
    const/4 v0, 0x0

    return-object v0

    .line 634
    :cond_4
    const/4 v0, 0x0

    .line 635
    .local v0, "result":Ljava/lang/String;
    :try_start_5
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetjava6NormalizeMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 636
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_1c

    .line 637
    :cond_11
    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetsunDecomposeMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 638
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 646
    :goto_1c
    return-object v0

    .line 640
    :cond_1d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The stripAccents(CharSequence) method requires at least Java6, but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetjava6Exception()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; or a Sun JVM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/apache/miui/commons/lang3/StringUtils$InitStripAccents;->-$$Nest$sfgetsunException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "input":Ljava/lang/String;
    throw v1
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_48} :catch_63
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_48} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_48} :catch_51
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_48} :catch_48

    .line 653
    .end local v0    # "result":Ljava/lang/String;
    .restart local p0    # "input":Ljava/lang/String;
    :catch_48
    move-exception v0

    .line 654
    .local v0, "se":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "SecurityException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 651
    .end local v0    # "se":Ljava/lang/SecurityException;
    :catch_51
    move-exception v0

    .line 652
    .local v0, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "InvocationTargetException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 649
    .end local v0    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_5a
    move-exception v0

    .line 650
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IllegalAccessException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 647
    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    :catch_63
    move-exception v0

    .line 648
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IllegalArgumentException occurred"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs blacklist stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "strs"    # [Ljava/lang/String;

    .line 568
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 598
    if-eqz p0, :cond_18

    array-length v0, p0

    move v1, v0

    .local v1, "strsLen":I
    if-nez v0, :cond_7

    goto :goto_18

    .line 601
    :cond_7
    new-array v0, v1, [Ljava/lang/String;

    .line 602
    .local v0, "newArr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_17

    .line 603
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 605
    .end local v2    # "i":I
    :cond_17
    return-object v0

    .line 599
    .end local v0    # "newArr":[Ljava/lang/String;
    .end local v1    # "strsLen":I
    :cond_18
    :goto_18
    return-object p0
.end method

.method public static blacklist stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 528
    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "end":I
    if-nez v0, :cond_a

    goto :goto_3c

    .line 532
    :cond_a
    if-nez p1, :cond_1d

    .line 533
    :goto_c
    if-eqz v1, :cond_36

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 534
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 536
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_24

    .line 537
    return-object p0

    .line 539
    :cond_24
    :goto_24
    if-eqz v1, :cond_36

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_36

    .line 540
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 543
    :cond_36
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 529
    .end local v1    # "end":I
    :cond_3c
    :goto_3c
    return-object p0
.end method

.method public static blacklist stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 483
    if-eqz p0, :cond_38

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_a

    goto :goto_38

    .line 486
    :cond_a
    const/4 v0, 0x0

    .line 487
    .local v0, "start":I
    if-nez p1, :cond_1c

    .line 488
    :goto_d
    if-eq v0, v1, :cond_33

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 491
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    .line 492
    return-object p0

    .line 494
    :cond_23
    :goto_23
    if-eq v0, v1, :cond_33

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_33

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 498
    :cond_33
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 484
    .end local v0    # "start":I
    .end local v1    # "strLen":I
    :cond_38
    :goto_38
    return-object p0
.end method

.method public static blacklist stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 420
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_a

    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public static blacklist stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 390
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 391
    return-object v0

    .line 393
    :cond_4
    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 394
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, p0

    :goto_10
    return-object v0
.end method

.method public static blacklist substring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 2026
    if-nez p0, :cond_4

    .line 2027
    const/4 v0, 0x0

    return-object v0

    .line 2031
    :cond_4
    if-gez p1, :cond_b

    .line 2032
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 2035
    :cond_b
    if-gez p1, :cond_e

    .line 2036
    const/4 p1, 0x0

    .line 2038
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_17

    .line 2039
    const-string v0, ""

    return-object v0

    .line 2042
    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist substring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2081
    if-nez p0, :cond_4

    .line 2082
    const/4 v0, 0x0

    return-object v0

    .line 2086
    :cond_4
    if-gez p2, :cond_b

    .line 2087
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 2089
    :cond_b
    if-gez p1, :cond_12

    .line 2090
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 2094
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1c

    .line 2095
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 2099
    :cond_1c
    if-le p1, p2, :cond_21

    .line 2100
    const-string v0, ""

    return-object v0

    .line 2103
    :cond_21
    if-gez p1, :cond_24

    .line 2104
    const/4 p1, 0x0

    .line 2106
    :cond_24
    if-gez p2, :cond_27

    .line 2107
    const/4 p2, 0x0

    .line 2110
    :cond_27
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2294
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2295
    return-object p0

    .line 2297
    :cond_7
    const-string v0, ""

    if-nez p1, :cond_c

    .line 2298
    return-object v0

    .line 2300
    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2301
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 2302
    return-object v0

    .line 2304
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2375
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2376
    return-object p0

    .line 2378
    :cond_7
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_10

    .line 2379
    return-object v1

    .line 2381
    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2382
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_23

    goto :goto_2d

    .line 2385
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2383
    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public static blacklist substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2252
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    if-nez p1, :cond_9

    goto :goto_20

    .line 2255
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    .line 2256
    const-string v0, ""

    return-object v0

    .line 2258
    :cond_12
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2259
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    .line 2260
    return-object p0

    .line 2262
    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2253
    .end local v0    # "pos":I
    :cond_20
    :goto_20
    return-object p0
.end method

.method public static blacklist substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 2335
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1b

    .line 2338
    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2339
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 2340
    return-object p0

    .line 2342
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2336
    .end local v0    # "pos":I
    :cond_1b
    :goto_1b
    return-object p0
.end method

.method public static blacklist substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 2412
    invoke-static {p0, p1, p1}, Lorg/apache/miui/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 2443
    const/4 v0, 0x0

    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    if-nez p2, :cond_8

    goto :goto_25

    .line 2446
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2447
    .local v1, "start":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    .line 2448
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 2449
    .local v3, "end":I
    if-eq v3, v2, :cond_24

    .line 2450
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2453
    .end local v3    # "end":I
    :cond_24
    return-object v0

    .line 2444
    .end local v1    # "start":I
    :cond_25
    :goto_25
    return-object v0
.end method

.method public static blacklist substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 2479
    const/4 v0, 0x0

    if-eqz p0, :cond_58

    invoke-static {p1}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-static {p2}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_58

    .line 2482
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2483
    .local v1, "strLen":I
    if-nez v1, :cond_19

    .line 2484
    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 2486
    :cond_19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2487
    .local v2, "closeLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2488
    .local v3, "openLen":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2489
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 2490
    .local v5, "pos":I
    :goto_27
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_44

    .line 2491
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 2492
    .local v6, "start":I
    if-gez v6, :cond_32

    .line 2493
    goto :goto_44

    .line 2495
    :cond_32
    add-int/2addr v6, v3

    .line 2496
    invoke-virtual {p0, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 2497
    .local v7, "end":I
    if-gez v7, :cond_3a

    .line 2498
    goto :goto_44

    .line 2500
    :cond_3a
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2501
    add-int v5, v7, v2

    .line 2502
    .end local v6    # "start":I
    .end local v7    # "end":I
    goto :goto_27

    .line 2503
    :cond_44
    :goto_44
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 2504
    return-object v0

    .line 2506
    :cond_4b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 2480
    .end local v1    # "strLen":I
    .end local v2    # "closeLen":I
    .end local v3    # "openLen":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pos":I
    :cond_58
    :goto_58
    return-object v0
.end method

.method public static blacklist swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .line 5101
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5102
    return-object p0

    .line 5105
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5107
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-ge v1, v2, :cond_3a

    .line 5108
    aget-char v2, v0, v1

    .line 5109
    .local v2, "ch":C
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 5110
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v1

    goto :goto_37

    .line 5111
    :cond_1e
    invoke-static {v2}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 5112
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v1

    goto :goto_37

    .line 5113
    :cond_2b
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 5114
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v0, v1

    .line 5107
    .end local v2    # "ch":C
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 5117
    .end local v1    # "i":I
    :cond_3a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static blacklist toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 6580
    new-instance v0, Ljava/lang/String;

    if-nez p1, :cond_8

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_b

    :cond_8
    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_b
    return-object v0
.end method

.method public static blacklist trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 283
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public static blacklist trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 335
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public static blacklist trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 309
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public static blacklist uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .line 5064
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    .local v1, "strLen":I
    if-nez v0, :cond_a

    goto :goto_2a

    .line 5067
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    .line 5068
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    .line 5069
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5070
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5067
    return-object v0

    .line 5065
    .end local v1    # "strLen":I
    :cond_2a
    :goto_2a
    return-object p0
.end method

.method public static blacklist upperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 4933
    if-nez p0, :cond_4

    .line 4934
    const/4 v0, 0x0

    return-object v0

    .line 4936
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 4956
    if-nez p0, :cond_4

    .line 4957
    const/4 v0, 0x0

    return-object v0

    .line 4959
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
