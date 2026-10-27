.class public Lcom/google/android/util/SmileyParser;
.super Lcom/google/android/util/AbstractMessageParser;
.source "SmileyParser.java"


# instance fields
.field private blacklist mRes:Lcom/google/android/util/SmileyResources;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/google/android/util/SmileyResources;)V
    .registers 11

    .line 34
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    .line 42
    iput-object p2, v0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    .line 43
    return-void
.end method


# virtual methods
.method protected blacklist getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    return-object v0
.end method

.method public blacklist getSpannableString(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 10

    .line 56
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/util/SmileyParser;->getPartCount()I

    move-result v1

    if-nez v1, :cond_e

    .line 59
    const-string p1, ""

    return-object p1

    .line 63
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/util/SmileyParser;->getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 66
    nop

    :goto_1c
    if-ge v1, v3, :cond_55

    .line 67
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/util/AbstractMessageParser$Token;

    .line 68
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 69
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v6

    sget-object v7, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    if-ne v6, v7, :cond_52

    .line 71
    iget-object v6, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    invoke-virtual {v4}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/google/android/util/SmileyResources;->getSmileyRes(Ljava/lang/String;)I

    move-result v4

    .line 72
    const/4 v6, -0x1

    if-eq v4, v6, :cond_52

    .line 73
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, p1, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 75
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 73
    const/16 v7, 0x21

    invoke-virtual {v0, v6, v5, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 66
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 80
    :cond_55
    return-object v0
.end method
