.class public final Lcom/miui/enterprise/signature/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mFirst:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final blacklist mSecond:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 7
    .local p0, "this":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<TA;TB;>;"
    .local p1, "first":Ljava/lang/Object;, "TA;"
    .local p2, "second":Ljava/lang/Object;, "TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/miui/enterprise/signature/Pair;->mFirst:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lcom/miui/enterprise/signature/Pair;->mSecond:Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public static whitelist create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/miui/enterprise/signature/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lcom/miui/enterprise/signature/Pair<",
            "TA;TB;>;"
        }
    .end annotation

    .line 13
    .local p0, "first":Ljava/lang/Object;, "TA;"
    .local p1, "second":Ljava/lang/Object;, "TB;"
    new-instance v0, Lcom/miui/enterprise/signature/Pair;

    invoke-direct {v0, p0, p1}, Lcom/miui/enterprise/signature/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 35
    .local p0, "this":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<TA;TB;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 36
    return v0

    .line 38
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 39
    return v1

    .line 41
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 42
    return v1

    .line 45
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/miui/enterprise/signature/Pair;

    .line 46
    .local v2, "other":Lcom/miui/enterprise/signature/Pair;
    iget-object v3, p0, Lcom/miui/enterprise/signature/Pair;->mFirst:Ljava/lang/Object;

    if-nez v3, :cond_1f

    .line 47
    iget-object v3, v2, Lcom/miui/enterprise/signature/Pair;->mFirst:Ljava/lang/Object;

    if-eqz v3, :cond_28

    .line 48
    return v1

    .line 50
    :cond_1f
    iget-object v4, v2, Lcom/miui/enterprise/signature/Pair;->mFirst:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 51
    return v1

    .line 53
    :cond_28
    iget-object v3, p0, Lcom/miui/enterprise/signature/Pair;->mSecond:Ljava/lang/Object;

    if-nez v3, :cond_31

    .line 54
    iget-object v3, v2, Lcom/miui/enterprise/signature/Pair;->mSecond:Ljava/lang/Object;

    if-eqz v3, :cond_3a

    .line 55
    return v1

    .line 57
    :cond_31
    iget-object v4, v2, Lcom/miui/enterprise/signature/Pair;->mSecond:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 58
    return v1

    .line 60
    :cond_3a
    return v0
.end method

.method public whitelist getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<TA;TB;>;"
    iget-object v0, p0, Lcom/miui/enterprise/signature/Pair;->mFirst:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getSecond()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<TA;TB;>;"
    iget-object v0, p0, Lcom/miui/enterprise/signature/Pair;->mSecond:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 26
    .local p0, "this":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<TA;TB;>;"
    const/16 v0, 0x1f

    .line 27
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 28
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/miui/enterprise/signature/Pair;->mFirst:Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    move v3, v4

    goto :goto_10

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v2, v3

    .line 29
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/miui/enterprise/signature/Pair;->mSecond:Ljava/lang/Object;

    if-nez v3, :cond_18

    goto :goto_1c

    :cond_18
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1c
    add-int/2addr v1, v4

    .line 30
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 65
    .local p0, "this":Lcom/miui/enterprise/signature/Pair;, "Lcom/miui/enterprise/signature/Pair<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/Pair;->mFirst:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , second = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/Pair;->mSecond:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
