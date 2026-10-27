.class public Landroid/app/slice/SliceQuery;
.super Ljava/lang/Object;
.source "SliceQuery.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SliceQuery"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z
    .registers 4

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 179
    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    const-string v0, "*/*"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 180
    const/4 p0, 0x1

    return p0

    .line 182
    :cond_11
    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_28

    .line 183
    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 185
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 186
    const-string v0, "\\*"

    const-string v1, ".*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    .line 185
    return p0
.end method

.method private static greylist-max-o contains(Landroid/app/slice/SliceItem;Landroid/app/slice/SliceItem;)Z
    .registers 3

    .line 76
    if-eqz p0, :cond_1b

    if-nez p1, :cond_5

    goto :goto_1b

    .line 77
    :cond_5
    invoke-static {p0}, Landroid/app/slice/SliceQuery;->stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/app/slice/SliceQuery$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/app/slice/SliceQuery$$ExternalSyntheticLambda2;-><init>(Landroid/app/slice/SliceItem;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0

    .line 76
    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-o find(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 4

    .line 115
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v0, v0}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o find(Landroid/app/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 4

    .line 108
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o find(Landroid/app/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 8

    .line 136
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/app/slice/SliceItem;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string/jumbo v2, "slice"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v0}, Landroid/app/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o find(Landroid/app/slice/SliceItem;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 4

    .line 122
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v0, v0}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o find(Landroid/app/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 4

    .line 129
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o find(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/app/slice/SliceItem;
    .registers 5

    .line 145
    invoke-static {p0}, Landroid/app/slice/SliceQuery;->stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/app/slice/SliceQuery$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/slice/SliceQuery$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/slice/SliceItem;

    .line 145
    return-object p0
.end method

.method public static greylist-max-o findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v0, v0}, Landroid/app/slice/SliceQuery;->findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 91
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Landroid/app/slice/SliceQuery;->findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o findAll(Landroid/app/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {p0}, Landroid/app/slice/SliceQuery;->stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/app/slice/SliceQuery$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/slice/SliceQuery$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 101
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 99
    return-object p0
.end method

.method public static greylist-max-o findNotContaining(Landroid/app/slice/SliceItem;Ljava/util/List;)Landroid/app/slice/SliceItem;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;)",
            "Landroid/app/slice/SliceItem;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    .line 63
    :goto_1
    if-nez v0, :cond_18

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_18

    .line 64
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/slice/SliceItem;

    .line 65
    invoke-static {p0, v1}, Landroid/app/slice/SliceQuery;->contains(Landroid/app/slice/SliceItem;Landroid/app/slice/SliceItem;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 66
    move-object v0, v1

    .line 68
    :cond_17
    goto :goto_1

    .line 69
    :cond_18
    return-object v0
.end method

.method public static greylist-max-o getPrimaryIcon(Landroid/app/slice/Slice;)Landroid/app/slice/SliceItem;
    .registers 4

    .line 40
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceItem;

    .line 41
    invoke-virtual {v0}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 42
    return-object v0

    .line 44
    :cond_21
    const-string/jumbo v1, "slice"

    invoke-static {v0, v1}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 45
    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    :cond_33
    nop

    .line 46
    const-string v1, "actions"

    invoke-virtual {v0, v1}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 47
    const-string/jumbo v1, "list_item"

    invoke-virtual {v0, v1}, Landroid/app/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 48
    const-string v1, "action"

    invoke-static {v0, v1}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 49
    invoke-static {v0, v2}, Landroid/app/slice/SliceQuery;->find(Landroid/app/slice/SliceItem;Ljava/lang/String;)Landroid/app/slice/SliceItem;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_54

    .line 51
    return-object v0

    .line 54
    :cond_54
    goto :goto_8

    .line 55
    :cond_55
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic blacklist lambda$contains$0(Landroid/app/slice/SliceItem;Landroid/app/slice/SliceItem;)Z
    .registers 2

    .line 77
    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method static synthetic blacklist lambda$find$2(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/slice/SliceItem;)Z
    .registers 4

    .line 145
    invoke-static {p3, p0}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 146
    invoke-virtual {p3, p1}, Landroid/app/slice/SliceItem;->hasHints([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-virtual {p3, p2}, Landroid/app/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 145
    :goto_15
    return p0
.end method

.method static synthetic blacklist lambda$findAll$1(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/slice/SliceItem;)Z
    .registers 4

    .line 99
    invoke-static {p3, p0}, Landroid/app/slice/SliceQuery;->compareTypes(Landroid/app/slice/SliceItem;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 100
    invoke-virtual {p3, p1}, Landroid/app/slice/SliceItem;->hasHints([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    invoke-virtual {p3, p2}, Landroid/app/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    .line 99
    :goto_15
    return p0
.end method

.method public static greylist-max-o stream(Landroid/app/slice/SliceItem;)Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/slice/SliceItem;",
            ")",
            "Ljava/util/stream/Stream<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 154
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance p0, Landroid/app/slice/SliceQuery$1;

    invoke-direct {p0, v0}, Landroid/app/slice/SliceQuery$1;-><init>(Ljava/util/Queue;)V

    .line 171
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
