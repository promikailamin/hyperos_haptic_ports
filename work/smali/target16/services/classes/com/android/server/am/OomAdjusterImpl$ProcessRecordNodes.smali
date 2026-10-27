.class public Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;
.super Ljava/lang/Object;
.source "OomAdjusterImpl.java"


# instance fields
.field public mFirstPopulatedSlot:I

.field public final mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;

.field public final mSlotFunction:Ljava/util/function/ToIntFunction;

.field public final mType:I


# direct methods
.method public static synthetic $r8$lambda$DKFM_pjiaMYpxWTmujFk4u1HJ1g(Lcom/android/server/am/psc/ProcessRecordInternal;)I
    .registers 1

    .line 322
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T1b92OLKt5DWy2dIL1r26FN_zH4(Lcom/android/server/am/psc/ProcessRecordInternal;)I
    .registers 1

    .line 327
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$W-k2uGjjBwirM0fxrAljFtSYDaY(Lcom/android/server/am/psc/ProcessRecordInternal;)I
    .registers 1

    .line 319
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/OomAdjusterImpl;->processStateToSlot(I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mkLMZxuup_bikRHNvp7eqlmxipI(Lcom/android/server/am/psc/ProcessRecordInternal;)I
    .registers 1

    .line 323
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/OomAdjusterImpl;->adjToSlot(I)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qQaFS9akxbLk59n0DYu8LpZy4WM(Lcom/android/server/am/psc/ProcessRecordInternal;)I
    .registers 1

    .line 326
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ziC7HizWvAtJTNsQEcid-7MwqX8(Lcom/android/server/am/psc/ProcessRecordInternal;)I
    .registers 1

    .line 318
    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/OomAdjusterImpl;II)V
    .registers 6

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 311
    iput p1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 314
    iput p2, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mType:I

    if-eqz p2, :cond_27

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1a

    .line 326
    new-instance p2, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda4;-><init>()V

    .line 327
    new-instance v0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda5;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    goto :goto_33

    .line 322
    :cond_1a
    new-instance p2, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda2;-><init>()V

    .line 323
    new-instance v0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    goto :goto_33

    .line 318
    :cond_27
    new-instance p2, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>()V

    .line 319
    new-instance v0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    .line 331
    :goto_33
    new-array v0, p3, [Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;

    :goto_37
    if-ge p1, p3, :cond_45

    .line 333
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;

    new-instance v1, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;

    invoke-direct {v1, p2}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;-><init>(Ljava/util/function/ToIntFunction;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_37

    .line 335
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->reset()V

    return-void
.end method


# virtual methods
.method public offer(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 4

    .line 361
    iget-object v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iget v1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mType:I

    aget-object v0, v0, v1

    .line 363
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    .line 364
    iget v1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    if-ge p1, v1, :cond_12

    .line 366
    iput p1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    .line 368
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->unlink()V

    .line 369
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object p0, p0, p1

    invoke-virtual {p0, v0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->offer(Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;)V

    return-void
.end method

.method public poll()Lcom/android/server/am/ProcessRecord;
    .registers 5

    .line 347
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;

    array-length v0, v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_5
    :goto_5
    if-nez v2, :cond_1c

    .line 349
    iget v3, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    if-ge v3, v0, :cond_1c

    .line 350
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->poll()Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    move-result-object v2

    if-nez v2, :cond_5

    .line 353
    iget v3, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    goto :goto_5

    :cond_1c
    if-nez v2, :cond_1f

    return-object v1

    .line 357
    :cond_1f
    iget-object p0, v2, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 340
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 341
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes$LinkedProcessRecordList;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public unlink(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 2

    .line 373
    iget-object p1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;

    iget p0, p0, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNodes;->mType:I

    aget-object p0, p1, p0

    .line 374
    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterImpl$ProcessRecordNode;->unlink()V

    return-void
.end method
