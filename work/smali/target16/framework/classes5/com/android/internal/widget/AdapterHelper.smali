.class Lcom/android/internal/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lcom/android/internal/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AdapterHelper$Callback;,
        Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist POSITION_TYPE_INVISIBLE:I = 0x0

.field static final blacklist POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final blacklist mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

.field final blacklist mDisableRecycler:Z

.field private blacklist mExistingUpdateTypes:I

.field blacklist mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final blacklist mOpReorderer:Lcom/android/internal/widget/OpReorderer;

.field final blacklist mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUpdateOpPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/AdapterHelper$Callback;)V
    .registers 3

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AdapterHelper;-><init>(Lcom/android/internal/widget/AdapterHelper$Callback;Z)V

    .line 72
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/widget/AdapterHelper$Callback;Z)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 75
    iput-object p1, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    .line 76
    iput-boolean p2, p0, Lcom/android/internal/widget/AdapterHelper;->mDisableRecycler:Z

    .line 77
    new-instance p1, Lcom/android/internal/widget/OpReorderer;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/OpReorderer;-><init>(Lcom/android/internal/widget/OpReorderer$Callback;)V

    iput-object p1, p0, Lcom/android/internal/widget/AdapterHelper;->mOpReorderer:Lcom/android/internal/widget/OpReorderer;

    .line 78
    return-void
.end method

.method private blacklist applyAdd(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    .line 431
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 432
    return-void
.end method

.method private blacklist applyMove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    .line 129
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 130
    return-void
.end method

.method private blacklist applyRemove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 12

    .line 133
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 134
    nop

    .line 135
    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    .line 136
    nop

    .line 137
    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    :goto_e
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v2, v1, :cond_49

    .line 138
    nop

    .line 139
    iget-object v8, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v8, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v8

    .line 140
    const/4 v9, 0x1

    if-nez v8, :cond_31

    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_23

    goto :goto_31

    .line 158
    :cond_23
    if-ne v4, v9, :cond_2e

    .line 161
    invoke-virtual {p0, v7, v0, v5, v6}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    .line 162
    invoke-direct {p0, v4}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 163
    move v4, v9

    goto :goto_2f

    .line 158
    :cond_2e
    move v4, v3

    .line 165
    :goto_2f
    move v6, v3

    goto :goto_3e

    .line 147
    :cond_31
    :goto_31
    if-nez v4, :cond_3c

    .line 150
    invoke-virtual {p0, v7, v0, v5, v6}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v4

    .line 151
    invoke-direct {p0, v4}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 152
    move v4, v9

    goto :goto_3d

    .line 147
    :cond_3c
    move v4, v3

    .line 154
    :goto_3d
    move v6, v9

    .line 167
    :goto_3e
    if-eqz v4, :cond_44

    .line 168
    sub-int/2addr v2, v5

    .line 169
    sub-int/2addr v1, v5

    .line 170
    move v5, v9

    goto :goto_46

    .line 172
    :cond_44
    add-int/lit8 v5, v5, 0x1

    .line 137
    :goto_46
    add-int/2addr v2, v9

    move v4, v6

    goto :goto_e

    .line 175
    :cond_49
    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v5, v1, :cond_54

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 177
    invoke-virtual {p0, v7, v0, v5, v6}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 179
    :cond_54
    if-nez v4, :cond_5a

    .line 180
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_5d

    .line 182
    :cond_5a
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 184
    :goto_5d
    return-void
.end method

.method private blacklist applyUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 11

    .line 187
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 188
    nop

    .line 189
    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v2

    .line 190
    nop

    .line 191
    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    :goto_e
    const/4 v6, 0x4

    if-ge v2, v1, :cond_44

    .line 192
    iget-object v7, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v7, v2}, Lcom/android/internal/widget/AdapterHelper$Callback;->findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 193
    const/4 v8, 0x1

    if-nez v7, :cond_31

    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v7

    if-eqz v7, :cond_21

    goto :goto_31

    .line 203
    :cond_21
    if-ne v4, v8, :cond_2f

    .line 204
    iget-object v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v6, v0, v5, v4}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 206
    invoke-direct {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 207
    nop

    .line 208
    move v0, v2

    move v5, v3

    .line 210
    :cond_2f
    move v4, v3

    goto :goto_40

    .line 194
    :cond_31
    :goto_31
    if-nez v4, :cond_3f

    .line 195
    iget-object v4, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v6, v0, v5, v4}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 197
    invoke-direct {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 198
    nop

    .line 199
    move v0, v2

    move v5, v3

    .line 201
    :cond_3f
    move v4, v8

    .line 212
    :goto_40
    add-int/2addr v5, v8

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 214
    :cond_44
    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v5, v1, :cond_51

    .line 215
    iget-object v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 217
    invoke-virtual {p0, v6, v0, v5, v1}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 219
    :cond_51
    if-nez v4, :cond_57

    .line 220
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_5a

    .line 222
    :cond_57
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 224
    :goto_5a
    return-void
.end method

.method private blacklist canFindInPreLayout(I)Z
    .registers 9

    .line 410
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 411
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_40

    .line 412
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 413
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_24

    .line 414
    iget v3, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v3

    if-ne v3, p1, :cond_3d

    .line 415
    return v6

    .line 417
    :cond_24
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v4, v6, :cond_3d

    .line 419
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    .line 420
    iget v3, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    :goto_2f
    if-ge v3, v4, :cond_3d

    .line 421
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v5

    if-ne v5, p1, :cond_3a

    .line 422
    return v6

    .line 420
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 411
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 427
    :cond_40
    return v1
.end method

.method private blacklist dispatchAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 12

    .line 230
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_94

    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_94

    .line 244
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    .line 248
    nop

    .line 249
    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 251
    iget v3, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_9e

    .line 259
    :pswitch_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :pswitch_36
    nop

    .line 254
    move v3, v1

    goto :goto_3b

    .line 256
    :pswitch_39
    nop

    .line 257
    move v3, v4

    .line 261
    :goto_3b
    move v5, v1

    move v6, v5

    :goto_3d
    iget v7, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v5, v7, :cond_80

    .line 262
    iget v7, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v8, v3, v5

    add-int/2addr v7, v8

    .line 263
    iget v8, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v7, v8}, Lcom/android/internal/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v7

    .line 267
    nop

    .line 268
    iget v8, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v8, :pswitch_data_a8

    :pswitch_52
    move v8, v4

    goto :goto_61

    .line 270
    :pswitch_54
    add-int/lit8 v8, v0, 0x1

    if-ne v7, v8, :cond_5a

    move v8, v1

    goto :goto_5b

    :cond_5a
    move v8, v4

    .line 271
    :goto_5b
    goto :goto_61

    .line 273
    :pswitch_5c
    if-ne v7, v0, :cond_60

    move v8, v1

    goto :goto_61

    :cond_60
    move v8, v4

    .line 276
    :goto_61
    if-eqz v8, :cond_66

    .line 277
    add-int/lit8 v6, v6, 0x1

    goto :goto_7d

    .line 280
    :cond_66
    iget v8, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    iget-object v9, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v8, v0, v6, v9}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 284
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;I)V

    .line 285
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 286
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v8, 0x4

    if-ne v0, v8, :cond_7a

    .line 287
    add-int/2addr v2, v6

    .line 289
    :cond_7a
    nop

    .line 290
    move v6, v1

    move v0, v7

    .line 261
    :goto_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 293
    :cond_80
    iget-object v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 295
    if-lez v6, :cond_93

    .line 296
    iget p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, p1, v0, v6, v1}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;I)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 311
    :cond_93
    return-void

    .line 231
    :cond_94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_9e
    .packed-switch 0x2
        :pswitch_39
        :pswitch_1c
        :pswitch_36
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x2
        :pswitch_5c
        :pswitch_52
        :pswitch_54
    .end packed-switch
.end method

.method private blacklist postponeAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 5

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v0, :sswitch_data_4e

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :sswitch_23
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    .line 445
    goto :goto_4d

    .line 451
    :sswitch_2d
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 452
    goto :goto_4d

    .line 447
    :sswitch_39
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    .line 449
    goto :goto_4d

    .line 441
    :sswitch_43
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, v1, p1}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 442
    nop

    .line 456
    :goto_4d
    return-void

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_43
        0x2 -> :sswitch_39
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_23
    .end sparse-switch
.end method

.method private blacklist updatePositionWithPostponed(II)I
    .registers 9

    .line 329
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 330
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/16 v2, 0x8

    if-ltz v0, :cond_99

    .line 331
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 332
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_72

    .line 334
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v4, :cond_24

    .line 335
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 336
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_28

    .line 338
    :cond_24
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 339
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 341
    :goto_28
    if-lt p1, v2, :cond_54

    if-gt p1, v4, :cond_54

    .line 343
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v4, :cond_42

    .line 344
    if-ne p2, v1, :cond_38

    .line 345
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3f

    .line 346
    :cond_38
    if-ne p2, v5, :cond_3f

    .line 347
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 350
    :cond_3f
    :goto_3f
    add-int/lit8 p1, p1, 0x1

    goto :goto_71

    .line 352
    :cond_42
    if-ne p2, v1, :cond_4a

    .line 353
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_51

    .line 354
    :cond_4a
    if-ne p2, v5, :cond_51

    .line 355
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 358
    :cond_51
    :goto_51
    add-int/lit8 p1, p1, -0x1

    goto :goto_71

    .line 360
    :cond_54
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v2, :cond_71

    .line 362
    if-ne p2, v1, :cond_65

    .line 363
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 364
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_71

    .line 365
    :cond_65
    if-ne p2, v5, :cond_71

    .line 366
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 367
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 370
    :cond_71
    :goto_71
    goto :goto_95

    .line 371
    :cond_72
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_86

    .line 372
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v1, :cond_7e

    .line 373
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_95

    .line 374
    :cond_7e
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v5, :cond_95

    .line 375
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_95

    .line 378
    :cond_86
    if-ne p2, v1, :cond_8e

    .line 379
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_95

    .line 380
    :cond_8e
    if-ne p2, v5, :cond_95

    .line 381
    iget v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v1

    iput v2, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 330
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 394
    :cond_99
    iget-object p2, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_a0
    if-ltz p2, :cond_d0

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 396
    iget v1, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v1, v2, :cond_c1

    .line 397
    iget v1, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v1, v3, :cond_b8

    iget v1, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v1, :cond_cd

    .line 398
    :cond_b8
    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 399
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_cd

    .line 401
    :cond_c1
    iget v1, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v1, :cond_cd

    .line 402
    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 403
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 394
    :cond_cd
    :goto_cd
    add-int/lit8 p2, p2, -0x1

    goto :goto_a0

    .line 406
    :cond_d0
    return p1
.end method


# virtual methods
.method varargs blacklist addUpdateOp([Lcom/android/internal/widget/AdapterHelper$UpdateOp;)Lcom/android/internal/widget/AdapterHelper;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 82
    return-object p0
.end method

.method public blacklist applyPendingUpdatesToPosition(I)I
    .registers 7

    .line 587
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 588
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_46

    .line 589
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 590
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v3, :sswitch_data_48

    goto :goto_43

    .line 606
    :sswitch_17
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_1e

    .line 607
    iget p1, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_43

    .line 609
    :cond_1e
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, p1, :cond_24

    .line 610
    add-int/lit8 p1, p1, -0x1

    .line 612
    :cond_24
    iget v2, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v2, p1, :cond_43

    .line 613
    add-int/lit8 p1, p1, 0x1

    goto :goto_43

    .line 597
    :sswitch_2b
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_43

    .line 598
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    .line 599
    if-le v3, p1, :cond_38

    .line 600
    const/4 p1, -0x1

    return p1

    .line 602
    :cond_38
    iget v2, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    .line 603
    goto :goto_43

    .line 592
    :sswitch_3c
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_43

    .line 593
    iget v2, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    .line 588
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 619
    :cond_46
    return p1

    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_3c
        0x2 -> :sswitch_2b
        0x8 -> :sswitch_17
    .end sparse-switch
.end method

.method blacklist consumePostponedUpdates()V
    .registers 6

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1a

    .line 120
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 122
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 123
    iput v1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 124
    return-void
.end method

.method blacklist consumeUpdatesInOnePass()V
    .registers 8

    .line 556
    invoke-virtual {p0}, Lcom/android/internal/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_65

    .line 559
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 560
    iget v4, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v4, :sswitch_data_6e

    goto :goto_59

    .line 574
    :sswitch_1b
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 575
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_59

    .line 570
    :sswitch_2a
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 571
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 572
    goto :goto_59

    .line 566
    :sswitch_3b
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 567
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 568
    goto :goto_59

    .line 562
    :sswitch_4a
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 563
    iget-object v4, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v5, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v3}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 564
    nop

    .line 578
    :goto_59
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_62

    .line 579
    iget-object v3, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 558
    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 582
    :cond_65
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 583
    iput v1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 584
    return-void

    nop

    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_4a
        0x2 -> :sswitch_3b
        0x4 -> :sswitch_2a
        0x8 -> :sswitch_1b
    .end sparse-switch
.end method

.method blacklist dispatchFirstPassAndUpdateViewHolders(Lcom/android/internal/widget/AdapterHelper$UpdateOp;I)V
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/AdapterHelper$Callback;->onDispatchFirstPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 315
    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_26

    .line 323
    :pswitch_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :pswitch_13
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Lcom/android/internal/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    .line 321
    goto :goto_25

    .line 317
    :pswitch_1d
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mCallback:Lcom/android/internal/widget/AdapterHelper$Callback;

    iget p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v0, p2, p1}, Lcom/android/internal/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    .line 318
    nop

    .line 326
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method blacklist findPositionOffset(I)I
    .registers 3

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(II)I

    move-result p1

    return p1
.end method

.method blacklist findPositionOffset(II)I
    .registers 7

    .line 471
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 472
    nop

    :goto_7
    if-ge p2, v0, :cond_4c

    .line 473
    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 474
    iget v2, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2b

    .line 475
    iget v2, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, p1, :cond_1e

    .line 476
    iget p1, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_49

    .line 478
    :cond_1e
    iget v2, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v2, p1, :cond_24

    .line 479
    add-int/lit8 p1, p1, -0x1

    .line 481
    :cond_24
    iget v1, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, p1, :cond_49

    .line 482
    add-int/lit8 p1, p1, 0x1

    goto :goto_49

    .line 485
    :cond_2b
    iget v2, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_49

    .line 486
    iget v2, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_41

    .line 487
    iget v2, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_3d

    .line 488
    const/4 p1, -0x1

    return p1

    .line 490
    :cond_3d
    iget v1, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v1

    goto :goto_49

    .line 491
    :cond_41
    iget v2, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_49

    .line 492
    iget v1, v1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v1

    .line 472
    :cond_49
    :goto_49
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 496
    :cond_4c
    return p1
.end method

.method blacklist hasAnyUpdateTypes(I)Z
    .registers 3

    .line 463
    iget v0, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method blacklist hasPendingUpdates()Z
    .registers 2

    .line 459
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist hasUpdates()Z
    .registers 2

    .line 623
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;
    .registers 6

    .line 726
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 727
    if-nez v0, :cond_10

    .line 728
    new-instance v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    goto :goto_18

    .line 730
    :cond_10
    iput p1, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 731
    iput p2, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 732
    iput p3, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 733
    iput-object p4, v0, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 735
    :goto_18
    return-object v0
.end method

.method blacklist onItemRangeChanged(IILjava/lang/Object;)Z
    .registers 8

    .line 503
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    .line 504
    return v0

    .line 506
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget p1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 508
    iget-object p1, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method blacklist onItemRangeInserted(II)Z
    .registers 7

    .line 515
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    .line 516
    return v0

    .line 518
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget p1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 520
    iget-object p1, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method blacklist onItemRangeMoved(III)Z
    .registers 8

    .line 539
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 540
    return v0

    .line 542
    :cond_4
    const/4 v1, 0x1

    if-ne p3, v1, :cond_22

    .line 545
    iget-object p3, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, p1, p2, v2}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget p1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 547
    iget-object p1, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_21

    move v0, v1

    :cond_21
    return v0

    .line 543
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Moving more than 1 item is not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist onItemRangeRemoved(II)Z
    .registers 8

    .line 527
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    .line 528
    return v0

    .line 530
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, p2, v3}, Lcom/android/internal/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget p1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v4

    iput p1, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 532
    iget-object p1, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1e

    move v0, v1

    :cond_1e
    return v0
.end method

.method blacklist preProcess()V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mOpReorderer:Lcom/android/internal/widget/OpReorderer;

    iget-object v1, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 94
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_3a

    .line 95
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    .line 96
    iget v3, v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v3, :sswitch_data_40

    goto :goto_2e

    .line 107
    :sswitch_1e
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyMove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2e

    .line 104
    :sswitch_22
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 105
    goto :goto_2e

    .line 101
    :sswitch_26
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyRemove(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 102
    goto :goto_2e

    .line 98
    :sswitch_2a
    invoke-direct {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->applyAdd(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 99
    nop

    .line 110
    :goto_2e
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_37

    .line 111
    iget-object v2, p0, Lcom/android/internal/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 94
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 114
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    return-void

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_26
        0x4 -> :sswitch_22
        0x8 -> :sswitch_1e
    .end sparse-switch
.end method

.method public blacklist recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .registers 3

    .line 740
    iget-boolean v0, p0, Lcom/android/internal/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_c

    .line 741
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mUpdateOpPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 744
    :cond_c
    return-void
.end method

.method blacklist recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 747
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 748
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 749
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 751
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 752
    return-void
.end method

.method blacklist reset()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 89
    return-void
.end method
