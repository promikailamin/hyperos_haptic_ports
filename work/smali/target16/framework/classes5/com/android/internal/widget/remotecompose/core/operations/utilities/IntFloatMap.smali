.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;
.super Ljava/lang/Object;
.source "IntFloatMap.java"


# static fields
.field private static final blacklist DEFAULT_CAPACITY:I = 0x10

.field private static final blacklist LOAD_FACTOR:F = 0.75f

.field private static final blacklist NOT_PRESENT:I = -0x80000000


# instance fields
.field private blacklist mKeys:[I

.field blacklist mSize:I

.field private blacklist mValues:[F


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    .line 31
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 32
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mValues:[F

    .line 33
    return-void
.end method

.method private blacklist findKey(I)I
    .registers 5

    .line 108
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 109
    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1e

    .line 110
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_17

    .line 111
    return v0

    .line 113
    :cond_17
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_8

    .line 115
    :cond_1e
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist hash(I)I
    .registers 2

    .line 119
    return p1
.end method

.method private blacklist insert(IF)F
    .registers 6

    .line 92
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 93
    :goto_8
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1d

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1d

    .line 94
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_8

    .line 96
    :cond_1d
    nop

    .line 97
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_2c

    .line 98
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mSize:I

    const/4 v1, 0x0

    goto :goto_30

    .line 100
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mValues:[F

    aget v1, v1, v0

    .line 102
    :goto_30
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    aput p1, v2, v0

    .line 103
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mValues:[F

    aput p2, p1, v0

    .line 104
    return v1
.end method

.method private blacklist resize()V
    .registers 7

    .line 123
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    .line 124
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mValues:[F

    .line 125
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    .line 126
    const/4 v2, 0x0

    move v3, v2

    :goto_d
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    array-length v4, v4

    const/high16 v5, -0x80000000

    if-ge v3, v4, :cond_1b

    .line 127
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    aput v5, v4, v3

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 129
    :cond_1b
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mValues:[F

    .line 130
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mSize:I

    .line 131
    nop

    :goto_25
    array-length v3, v0

    if-ge v2, v3, :cond_36

    .line 132
    aget v3, v0, v2

    if-eq v3, v5, :cond_33

    .line 133
    aget v3, v0, v2

    aget v4, v1, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->put(IF)F

    .line 131
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 136
    :cond_36
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 38
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mValues:[F

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mSize:I

    .line 40
    return-void
.end method

.method public blacklist contains(I)Z
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->findKey(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public blacklist get(I)F
    .registers 3

    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->findKey(I)I

    move-result p1

    .line 77
    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 78
    const/4 p1, 0x0

    return p1

    .line 79
    :cond_9
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mValues:[F

    aget p1, v0, p1

    return p1
.end method

.method public blacklist put(IF)F
    .registers 6

    .line 60
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1a

    .line 63
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mSize:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mKeys:[I

    array-length v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 64
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->resize()V

    .line 66
    :cond_15
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->insert(IF)F

    move-result p1

    return p1

    .line 61
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key cannot be NOT_PRESENT"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist size()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntFloatMap;->mSize:I

    return v0
.end method
