.class public Landroid/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final greylist-max-o MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private greylist-max-o mSize:I

.field private greylist-max-o mValues:[J


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/LongArray;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_a

    .line 58
    sget-object p1, Landroid/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    goto :goto_10

    .line 60
    :cond_a
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    .line 62
    :goto_10
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/LongArray;->mSize:I

    .line 63
    return-void
.end method

.method private constructor greylist-max-o <init>([JI)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    .line 42
    array-length p1, p1

    const-string v0, "size"

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/util/LongArray;->mSize:I

    .line 43
    return-void
.end method

.method public static greylist-max-o elementsEqual(Landroid/util/LongArray;Landroid/util/LongArray;)Z
    .registers 9

    .line 227
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_24

    if-nez p1, :cond_7

    goto :goto_24

    .line 228
    :cond_7
    iget v2, p0, Landroid/util/LongArray;->mSize:I

    iget v3, p1, Landroid/util/LongArray;->mSize:I

    if-eq v2, v3, :cond_e

    return v1

    .line 229
    :cond_e
    move v2, v1

    :goto_f
    iget v3, p0, Landroid/util/LongArray;->mSize:I

    if-ge v2, v3, :cond_23

    .line 230
    invoke-virtual {p0, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {p1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_20

    .line 231
    return v1

    .line 229
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 234
    :cond_23
    return v0

    .line 227
    :cond_24
    :goto_24
    if-ne p0, p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 5

    .line 137
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    .line 138
    add-int/2addr p1, v0

    .line 139
    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    array-length v1, v1

    if-lt p1, v1, :cond_20

    .line 140
    const/4 v1, 0x6

    if-ge v0, v1, :cond_e

    .line 141
    const/16 v1, 0xc

    goto :goto_10

    :cond_e
    shr-int/lit8 v1, v0, 0x1

    :goto_10
    add-int/2addr v1, v0

    .line 142
    if-le v1, p1, :cond_14

    move p1, v1

    .line 143
    :cond_14
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object p1

    .line 144
    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    .line 147
    :cond_20
    return-void
.end method

.method public static greylist-max-o fromArray([JI)Landroid/util/LongArray;
    .registers 2

    .line 76
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    invoke-static {p0}, Landroid/util/LongArray;->wrap([J)Landroid/util/LongArray;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o wrap([J)Landroid/util/LongArray;
    .registers 3

    .line 69
    new-instance v0, Landroid/util/LongArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/LongArray;-><init>([JI)V

    return-object v0
.end method


# virtual methods
.method public greylist-max-r add(IJ)V
    .registers 8

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 110
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    sub-int/2addr v1, p1

    .line 111
    iget v2, p0, Landroid/util/LongArray;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/util/LongArray;->mSize:I

    .line 112
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 114
    if-eqz v1, :cond_1c

    .line 116
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    :cond_1c
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, v0, p1

    .line 120
    return-void
.end method

.method public greylist-max-o add(J)V
    .registers 4

    .line 98
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LongArray;->add(IJ)V

    .line 99
    return-void
.end method

.method public greylist-max-o addAll(Landroid/util/LongArray;)V
    .registers 6

    .line 126
    iget v0, p1, Landroid/util/LongArray;->mSize:I

    .line 127
    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 129
    iget-object p1, p1, Landroid/util/LongArray;->mValues:[J

    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    iget v2, p0, Landroid/util/LongArray;->mSize:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget p1, p0, Landroid/util/LongArray;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/util/LongArray;->mSize:I

    .line 131
    return-void
.end method

.method public greylist-max-o clear()V
    .registers 2

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArray;->mSize:I

    .line 154
    return-void
.end method

.method public blacklist clone()Landroid/util/LongArray;
    .registers 3

    .line 158
    nop

    .line 160
    const/4 v0, 0x0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongArray;
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_8} :catch_16

    .line 161
    :try_start_8
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, v1, Landroid/util/LongArray;->mValues:[J
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_8 .. :try_end_12} :catch_13

    .line 164
    goto :goto_18

    .line 162
    :catch_13
    move-exception v0

    move-object v0, v1

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    move-object v1, v0

    .line 165
    :goto_18
    return-object v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    return-object v0
.end method

.method public greylist get(I)J
    .registers 4

    .line 173
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 174
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public greylist-max-o indexOf(J)I
    .registers 7

    .line 190
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    .line 191
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_11

    .line 192
    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_e

    .line 193
    return v1

    .line 191
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 196
    :cond_11
    const/4 p1, -0x1

    return p1
.end method

.method public greylist-max-o remove(I)V
    .registers 6

    .line 203
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 204
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongArray;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget p1, p0, Landroid/util/LongArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/util/LongArray;->mSize:I

    .line 206
    return-void
.end method

.method public greylist-max-o resize(I)V
    .registers 6

    .line 85
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 86
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    array-length v0, v0

    if-gt p1, v0, :cond_13

    .line 87
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    array-length v1, v1

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_1a

    .line 89
    :cond_13
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 91
    :goto_1a
    iput p1, p0, Landroid/util/LongArray;->mSize:I

    .line 92
    return-void
.end method

.method public greylist-max-o set(IJ)V
    .registers 5

    .line 181
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->checkBounds(II)V

    .line 182
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, v0, p1

    .line 183
    return-void
.end method

.method public greylist-max-r size()I
    .registers 2

    .line 213
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    return v0
.end method

.method public greylist-max-o toArray()[J
    .registers 3

    .line 220
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget v1, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method
