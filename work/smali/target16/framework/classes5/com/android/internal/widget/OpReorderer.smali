.class Lcom/android/internal/widget/OpReorderer;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/OpReorderer$Callback;
    }
.end annotation


# instance fields
.field final blacklist mCallback:Lcom/android/internal/widget/OpReorderer$Callback;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/OpReorderer$Callback;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    .line 34
    return-void
.end method

.method private blacklist getLastMoveOutOfOrder(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;)I"
        }
    .end annotation

    .line 219
    nop

    .line 220
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_8
    if-ltz v0, :cond_1d

    .line 221
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 222
    iget v3, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_19

    .line 223
    if-eqz v2, :cond_1a

    .line 224
    return v0

    .line 227
    :cond_19
    move v2, v1

    .line 220
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 230
    :cond_1d
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist swapMoveAdd(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 162
    nop

    .line 164
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v0, v1, :cond_9

    .line 165
    const/4 v0, -0x1

    goto :goto_a

    .line 164
    :cond_9
    const/4 v0, 0x0

    .line 167
    :goto_a
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_12

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 170
    :cond_12
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v2, :cond_1f

    .line 171
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 173
    :cond_1f
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, v2, :cond_2c

    .line 174
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    iput v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 176
    :cond_2c
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v0

    iput v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 177
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method private blacklist swapMoveOp(Ljava/util/List;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;II)V"
        }
    .end annotation

    .line 46
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 47
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 48
    iget v0, v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_2e

    :pswitch_13
    goto :goto_2c

    .line 56
    :pswitch_14
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/OpReorderer;->swapMoveUpdate(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2c

    .line 50
    :pswitch_1c
    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/OpReorderer;->swapMoveRemove(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 51
    goto :goto_2c

    .line 53
    :pswitch_24
    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/widget/OpReorderer;->swapMoveAdd(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 54
    nop

    .line 59
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1c
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method blacklist reorderOps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 40
    nop

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/OpReorderer;->getLastMoveOutOfOrder(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 41
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/widget/OpReorderer;->swapMoveOp(Ljava/util/List;II)V

    goto :goto_1

    .line 43
    :cond_e
    return-void
.end method

.method blacklist swapMoveRemove(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 63
    nop

    .line 65
    nop

    .line 68
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1f

    .line 69
    nop

    .line 70
    iget v0, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v0, v1, :cond_1d

    iget v0, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_1d

    .line 72
    move v0, v3

    move v3, v2

    goto :goto_34

    .line 83
    :cond_1d
    move v0, v3

    goto :goto_34

    .line 75
    :cond_1f
    nop

    .line 76
    iget v0, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_33

    iget v0, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_33

    .line 78
    move v0, v2

    move v3, v0

    goto :goto_34

    .line 83
    :cond_33
    move v0, v2

    :goto_34
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v5, 0x2

    if-ge v1, v4, :cond_41

    .line 84
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v2

    iput v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_60

    .line 85
    :cond_41
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v6

    if-ge v1, v4, :cond_60

    .line 87
    iget p2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p2, v2

    iput p2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 88
    iput v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 89
    iput v2, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 90
    iget p2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-nez p2, :cond_5f

    .line 91
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    iget-object p1, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    invoke-interface {p1, p5}, Lcom/android/internal/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 95
    :cond_5f
    return-void

    .line 99
    :cond_60
    :goto_60
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v6, 0x0

    if-gt v1, v4, :cond_6d

    .line 100
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v2

    iput v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_8e

    .line 101
    :cond_6d
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v7, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v7

    if-ge v1, v4, :cond_8e

    .line 102
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v4

    iget v4, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v4

    .line 104
    iget-object v4, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    iget v7, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v7, v2

    invoke-interface {v4, v5, v7, v1, v6}, Lcom/android/internal/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 105
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v2

    iput v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 109
    :cond_8e
    :goto_8e
    if-eqz v3, :cond_9c

    .line 110
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object p1, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    invoke-interface {p1, p3}, Lcom/android/internal/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 113
    return-void

    .line 117
    :cond_9c
    if-eqz v0, :cond_d5

    .line 118
    if-eqz v6, :cond_ba

    .line 119
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v0, v1, :cond_ad

    .line 120
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 122
    :cond_ad
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v0, v1, :cond_ba

    .line 123
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 126
    :cond_ba
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v0, v1, :cond_c7

    .line 127
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 129
    :cond_c7
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-le v0, v1, :cond_10b

    .line 130
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_10b

    .line 133
    :cond_d5
    if-eqz v6, :cond_f1

    .line 134
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v0, v1, :cond_e4

    .line 135
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 137
    :cond_e4
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v0, v1, :cond_f1

    .line 138
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, v6, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 141
    :cond_f1
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v0, v1, :cond_fe

    .line 142
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 144
    :cond_fe
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-lt v0, v1, :cond_10b

    .line 145
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v1

    iput v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 149
    :cond_10b
    :goto_10b
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget p5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq p5, v0, :cond_118

    .line 151
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_11b

    .line 153
    :cond_118
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 155
    :goto_11b
    if-eqz v6, :cond_120

    .line 156
    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 158
    :cond_120
    return-void
.end method

.method blacklist swapMoveUpdate(Ljava/util/List;ILcom/android/internal/widget/AdapterHelper$UpdateOp;ILcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            "I",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ")V"
        }
    .end annotation

    .line 183
    nop

    .line 184
    nop

    .line 186
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_11

    .line 187
    iget v0, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v0, v3

    iput v0, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_2a

    .line 188
    :cond_11
    iget v0, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_2a

    .line 190
    iget v0, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v0, v3

    iput v0, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget-object v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v2, v1, v3, v5}, Lcom/android/internal/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    goto :goto_2b

    .line 194
    :cond_2a
    :goto_2a
    move-object v0, v4

    :goto_2b
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v1, v5, :cond_37

    .line 195
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v3

    iput v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_58

    .line 196
    :cond_37
    iget v1, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_58

    .line 197
    iget v1, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v4

    iget v4, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v1, v4

    .line 199
    iget-object v4, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    iget v5, p3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v5, v3

    iget-object v3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v1, v3}, Lcom/android/internal/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    .line 201
    iget v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 203
    :cond_58
    :goto_58
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget p3, p5, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-lez p3, :cond_63

    .line 205
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6b

    .line 207
    :cond_63
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    iget-object p3, p0, Lcom/android/internal/widget/OpReorderer;->mCallback:Lcom/android/internal/widget/OpReorderer$Callback;

    invoke-interface {p3, p5}, Lcom/android/internal/widget/OpReorderer$Callback;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 210
    :goto_6b
    if-eqz v0, :cond_70

    .line 211
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 213
    :cond_70
    if-eqz v4, :cond_75

    .line 214
    invoke-interface {p1, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 216
    :cond_75
    return-void
.end method
