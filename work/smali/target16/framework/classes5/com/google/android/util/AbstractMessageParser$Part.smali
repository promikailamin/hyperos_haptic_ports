.class public Lcom/google/android/util/AbstractMessageParser$Part;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation


# instance fields
.field private blacklist meText:Ljava/lang/String;

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
.method public constructor blacklist <init>()V
    .registers 2

    .line 1448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    .line 1450
    return-void
.end method

.method private blacklist getPartType()Ljava/lang/String;
    .registers 2

    .line 1457
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1458
    const-string v0, "d"

    return-object v0

    .line 1459
    :cond_9
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1460
    const-string v0, "m"

    return-object v0

    .line 1462
    :cond_10
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public blacklist add(Lcom/google/android/util/AbstractMessageParser$Token;)V
    .registers 3

    .line 1486
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1489
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    return-void

    .line 1487
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "media "

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public blacklist getMediaToken()Lcom/google/android/util/AbstractMessageParser$Token;
    .registers 3

    .line 1478
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1479
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Token;

    return-object v0

    .line 1481
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRawText()Ljava/lang/String;
    .registers 4

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1499
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 1500
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    :cond_e
    const/4 v1, 0x0

    :goto_f
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 1503
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1505
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTokens()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/util/AbstractMessageParser$Token;",
            ">;"
        }
    .end annotation

    .line 1509
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getType(Z)Ljava/lang/String;
    .registers 3

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_b

    const-string/jumbo p1, "s"

    goto :goto_e

    :cond_b
    const-string/jumbo p1, "r"

    :goto_e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser$Part;->getPartType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist isMedia()Z
    .registers 4

    .line 1467
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Part;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v0

    if-eqz v0, :cond_19

    move v1, v2

    :cond_19
    return v1
.end method

.method public blacklist setMeText(Ljava/lang/String;)V
    .registers 2

    .line 1493
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Part;->meText:Ljava/lang/String;

    .line 1494
    return-void
.end method
