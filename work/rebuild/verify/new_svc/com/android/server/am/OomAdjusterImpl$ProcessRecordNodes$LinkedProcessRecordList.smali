.class public Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;
.super Ljava/lang/Object;
.source "OomAdjusterImpl.java"


# instance fields
.field public final HEAD:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

.field public final TAIL:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

.field public final mValueFunction:Ljava/util/function/ToIntFunction;


# direct methods
.method public constructor <init>(Ljava/util/function/ToIntFunction;)V
    .registers 5

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 384
    new-instance v2, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    invoke-direct {v2, v1}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 388
    iput-object v2, v0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 389
    iput-object v0, v2, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 390
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public offer(Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;)V
    .registers 6

    .line 401
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    iget-object v1, p1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-interface {v0, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    .line 404
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iget-object v1, v1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 405
    :goto_c
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    if-eq v1, v2, :cond_1d

    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    iget-object v3, v1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-interface {v2, v3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    if-le v2, v0, :cond_1d

    .line 406
    iget-object v1, v1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    goto :goto_c

    .line 410
    :cond_1d
    iput-object v1, p1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 411
    iget-object p0, v1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iput-object p0, p1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 412
    iget-object p0, v1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 413
    iput-object p1, v1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    return-void
.end method

.method public poll()Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iget-object v0, v0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 395
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 396
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->unlink()V

    return-object v0
.end method

.method public reset()V
    .registers 5

    .line 418
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iget-object v1, v0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    if-eq v1, p0, :cond_f

    .line 419
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iput-object v3, v1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 421
    :cond_f
    iput-object p0, v0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    .line 422
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    return-void
.end method
