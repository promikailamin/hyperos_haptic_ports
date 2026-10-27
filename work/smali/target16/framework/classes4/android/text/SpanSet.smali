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
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TE;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    .line 47
    const/4 p1, 0x0

    iput p1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 48
    return-void
.end method


# virtual methods
.method greylist-max-o getNextTransition(II)I
    .registers 6

    .line 106
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_1a

    .line 107
    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    .line 108
    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    .line 109
    if-le v1, p1, :cond_12

    if-ge v1, p2, :cond_12

    move p2, v1

    .line 110
    :cond_12
    if-le v2, p1, :cond_17

    if-ge v2, p2, :cond_17

    move p2, v2

    .line 106
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_1a
    return p2
.end method

.method public greylist-max-o hasSpansIntersecting(II)Z
    .registers 6

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v2, :cond_18

    .line 96
    iget-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v1

    if-ge v2, p2, :cond_15

    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v1

    if-gt v2, p1, :cond_13

    goto :goto_15

    .line 97
    :cond_13
    const/4 p1, 0x1

    return p1

    .line 94
    :cond_15
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 99
    :cond_18
    return v0
.end method

.method public greylist-max-o init(Landroid/text/Spanned;II)V
    .registers 12

    .line 52
    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 53
    array-length p3, p2

    .line 55
    if-lez p3, :cond_28

    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p3, :cond_28

    .line 57
    :cond_12
    iget-object v0, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    .line 58
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/text/SpanSet;->spanStarts:[I

    .line 59
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/text/SpanSet;->spanEnds:[I

    .line 60
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/text/SpanSet;->spanFlags:[I

    .line 63
    :cond_28
    iget v0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 65
    nop

    :goto_2e
    if-ge v1, p3, :cond_62

    .line 66
    aget-object v2, p2, v1

    .line 68
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 69
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 70
    if-ne v3, v4, :cond_3d

    goto :goto_5f

    .line 72
    :cond_3d
    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 74
    iget-object v6, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v7, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput-object v2, v6, v7

    .line 75
    iget-object v2, p0, Landroid/text/SpanSet;->spanStarts:[I

    iget v6, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v3, v2, v6

    .line 76
    iget-object v2, p0, Landroid/text/SpanSet;->spanEnds:[I

    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v4, v2, v3

    .line 77
    iget-object v2, p0, Landroid/text/SpanSet;->spanFlags:[I

    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    aput v5, v2, v3

    .line 79
    iget v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    .line 65
    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 83
    :cond_62
    iget p1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge p1, v0, :cond_6e

    .line 85
    iget-object p1, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget p2, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 p3, 0x0

    invoke-static {p1, p2, v0, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 87
    :cond_6e
    return-void
.end method

.method public greylist-max-o recycle()V
    .registers 5

    .line 119
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    if-eqz v0, :cond_d

    .line 120
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 122
    :cond_d
    return-void
.end method
