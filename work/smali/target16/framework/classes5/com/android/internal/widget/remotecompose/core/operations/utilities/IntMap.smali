.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CAPACITY:I = 0x10

.field private static final blacklist LOAD_FACTOR:F = 0.75f

.field private static final blacklist NOT_PRESENT:I = -0x80000000


# instance fields
.field private blacklist mKeys:[I

.field blacklist mSize:I

.field private blacklist mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    .line 35
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    .line 37
    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_23

    .line 38
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 40
    :cond_23
    return-void
.end method

.method private blacklist findKey(I)I
    .registers 5

    .line 121
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 122
    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1e

    .line 123
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_17

    .line 124
    return v0

    .line 126
    :cond_17
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_8

    .line 128
    :cond_1e
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist hash(I)I
    .registers 2

    .line 132
    return p1
.end method

.method private blacklist insert(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 106
    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1d

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1d

    .line 107
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_8

    .line 109
    :cond_1d
    nop

    .line 110
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_2c

    .line 111
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    const/4 v1, 0x0

    goto :goto_32

    .line 113
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 115
    :goto_32
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput p1, v2, v0

    .line 116
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-object v1
.end method

.method private blacklist rehashFrom(I)V
    .registers 6

    .line 185
    nop

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v0, v0, p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2d

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v0, v0, p1

    .line 189
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 192
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput v1, v3, p1

    .line 193
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    .line 197
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->insert(ILjava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v0, v0

    rem-int/2addr p1, v0

    .line 200
    goto :goto_1

    .line 201
    :cond_2d
    return-void
.end method

.method private blacklist resize()V
    .registers 8

    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    .line 137
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    .line 138
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    .line 139
    const/4 v2, 0x0

    move v3, v2

    :goto_d
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v4, v4

    const/high16 v5, -0x80000000

    if-ge v3, v4, :cond_1b

    .line 140
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput v5, v4, v3

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 142
    :cond_1b
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    .line 143
    move v3, v2

    :goto_26
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_34

    .line 144
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 146
    :cond_34
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    .line 147
    nop

    :goto_37
    array-length v3, v0

    if-ge v2, v3, :cond_4a

    .line 148
    aget v3, v0, v2

    if-eq v3, v5, :cond_47

    .line 149
    aget v3, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 152
    :cond_4a
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 45
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    .line 47
    return-void
.end method

.method public blacklist get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->findKey(I)I

    move-result p1

    .line 89
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 90
    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist put(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 58
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1a

    .line 59
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->resize()V

    .line 62
    :cond_15
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->insert(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key cannot be NOT_PRESENT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist putAll(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "TT;>;)V"
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 72
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v1, v1, v0

    .line 73
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_18

    .line 74
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 75
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_1b
    return-void
.end method

.method public blacklist remove(I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 163
    move v1, v0

    .line 165
    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v2, v2, v1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_40

    .line 166
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_37

    .line 167
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput v4, v0, v1

    .line 169
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    .line 173
    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v0, v0

    rem-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->rehashFrom(I)V

    .line 174
    return-object p1

    .line 176
    :cond_37
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 177
    if-ne v1, v0, :cond_9

    .line 178
    nop

    .line 181
    :cond_40
    return-object v3
.end method

.method public blacklist size()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    return v0
.end method
