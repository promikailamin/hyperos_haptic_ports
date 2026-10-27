.class Landroid/widget/TextPatternUtil$EmailInfo;
.super Ljava/lang/Object;
.source "TextPatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextPatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmailInfo"
.end annotation


# instance fields
.field blacklist cursorPos:I

.field blacklist email:Ljava/lang/String;

.field blacklist start:I


# direct methods
.method constructor blacklist <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "s"    # I
    .param p2, "c"    # I
    .param p3, "e"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroid/widget/TextPatternUtil$EmailInfo;->start:I

    .line 79
    iput p2, p0, Landroid/widget/TextPatternUtil$EmailInfo;->cursorPos:I

    .line 80
    iput-object p3, p0, Landroid/widget/TextPatternUtil$EmailInfo;->email:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method blacklist isContainedIn(Ljava/lang/String;)Z
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Landroid/widget/TextPatternUtil$EmailInfo;->email:Ljava/lang/String;

    if-eqz v0, :cond_1c

    if-nez p1, :cond_7

    goto :goto_1c

    .line 87
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "lowerEmail":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "lowerAddress":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 90
    const/4 v2, 0x1

    return v2

    .line 92
    :cond_17
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 85
    .end local v0    # "lowerEmail":Ljava/lang/String;
    .end local v1    # "lowerAddress":Ljava/lang/String;
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method blacklist isInList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 97
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_21

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/widget/TextPatternUtil$EmailInfo;->isContainedIn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 100
    const/4 v0, 0x1

    return v0

    .line 102
    .end local v1    # "item":Ljava/lang/String;
    :cond_20
    goto :goto_c

    .line 104
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmailInfo{start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/TextPatternUtil$EmailInfo;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextPatternUtil$EmailInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
