.class public Lcom/google/android/util/AbstractMessageParser$TrieNode;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrieNode"
.end annotation


# instance fields
.field private final blacklist children:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Lcom/google/android/util/AbstractMessageParser$TrieNode;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist text:Ljava/lang/String;

.field private blacklist value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1359
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 1360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    .line 1361
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->text:Ljava/lang/String;

    .line 1362
    return-void
.end method

.method public static blacklist addToTrie(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1385
    const/4 v0, 0x0

    .line 1386
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1387
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getOrCreateChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    move v0, v1

    goto :goto_1

    .line 1389
    :cond_13
    invoke-virtual {p0, p2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->setValue(Ljava/lang/String;)V

    .line 1390
    return-void
.end method


# virtual methods
.method public final blacklist exists()Z
    .registers 2

    .line 1364
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->value:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 3

    .line 1370
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    return-object p1
.end method

.method public blacklist getOrCreateChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 6

    .line 1374
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 1375
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    .line 1376
    if-nez v1, :cond_2f

    .line 1377
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/util/AbstractMessageParser$TrieNode;-><init>(Ljava/lang/String;)V

    .line 1378
    iget-object p1, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    :cond_2f
    return-object v1
.end method

.method public final blacklist getText()Ljava/lang/String;
    .registers 2

    .line 1365
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 1366
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setValue(Ljava/lang/String;)V
    .registers 2

    .line 1367
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->value:Ljava/lang/String;

    return-void
.end method
