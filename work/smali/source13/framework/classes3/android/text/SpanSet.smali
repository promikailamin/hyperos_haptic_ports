.class public Landroid/text/SpanSet;
.super Ljava/lang/Object;
.source "SpanSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TE;>;"
        }
    .end annotation
.end field

.field greylist-max-o numberOfSpans:I

.field greylist-max-o spanEnds:[I

.field greylist-max-o spanFlags:[I

.field greylist-max-o spanStarts:[I

.field greylist-max-r spans:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TE;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 47
    return-void
.end method


# virtual methods
.method greylist-max-o getNextTransition(II)I
    .registers 6
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 105
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_1a

    .line 106
    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    .line 107
    .local v1, "spanStart":I
    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    .line 108
    .local v2, "spanEnd":I
    if-le v1, p1, :cond_12

    if-ge v1, p2, :cond_12

    move p2, v1

    .line 109
    :cond_12
    if-le v2, p1, :cond_17

    if-ge v2, p2, :cond_17

    move p2, v2

    .line 105
    .end local v1    # "spanStart":I
    .end local v2    # "spanEnd":I
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    .end local v0    # "i":I
    :cond_1a
    return p2
.end method

.method public greylist-max-o hasSpansIntersecting(II)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 93
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_17

    .line 95
    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    if-ge v1, p2, :cond_14

    iget-object v1, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_12

    goto :goto_14

    .line 96
    :cond_12
    const/4 v1, 0x1

    return v1

    .line 93
    :cond_14
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o init(Landroid/text/Spanned;II)V
    .registers 14
    .param p1, "spanned"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 51
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "allSpans":[Ljava/lang/Object;, "[TE;"
    array-length v1, v0

    .line 54
    .local v1, "length":I
    if-lez v1, :cond_26

    iget-object v2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v2, :cond_10

    array-length v2, v2

    if-ge v2, v1, :cond_26

    .line 56
    :cond_10
    iget-object v2, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 57
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    .line 58
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    .line 59
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/text/SpanSet;->spanFlags:[I

    .line 62
    :cond_26
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 63
    .local v2, "prevNumberOfSpans":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 64
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    if-ge v3, v1, :cond_58

    .line 65
    aget-object v4, v0, v3

    .line 67
    .local v4, "span":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 68
    .local v5, "spanStart":I
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 69
    .local v6, "spanEnd":I
    if-ne v5, v6, :cond_3b

    goto :goto_55

    .line 71
    :cond_3b
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 73
    .local v7, "spanFlag":I
    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput-object v4, v8, v9

    .line 74
    iget-object v8, p0, Landroid/text/SpanSet;->spanStarts:[I

    aput v5, v8, v9

    .line 75
    iget-object v8, p0, Landroid/text/SpanSet;->spanEnds:[I

    aput v6, v8, v9

    .line 76
    iget-object v8, p0, Landroid/text/SpanSet;->spanFlags:[I

    aput v7, v8, v9

    .line 78
    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 64
    .end local v4    # "span":Ljava/lang/Object;, "TE;"
    .end local v5    # "spanStart":I
    .end local v6    # "spanEnd":I
    .end local v7    # "spanFlag":I
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 82
    .end local v3    # "i":I
    :cond_58
    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v3, v2, :cond_62

    .line 84
    iget-object v4, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 86
    :cond_62
    return-void
.end method

.method public greylist-max-o recycle()V
    .registers 5

    .line 118
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 119
    const/4 v1, 0x0

    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 121
    :cond_b
    return-void
.end method
