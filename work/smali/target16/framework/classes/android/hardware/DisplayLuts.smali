.class public final Landroid/hardware/DisplayLuts;
.super Ljava/lang/Object;
.source "DisplayLuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/DisplayLuts$Entry;
    }
.end annotation


# instance fields
.field private blacklist mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/DisplayLuts$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOffsets:Landroid/util/IntArray;

.field private blacklist mTotalLength:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/DisplayLuts;->mOffsets:Landroid/util/IntArray;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    .line 53
    return-void
.end method

.method private blacklist addEntry(Landroid/hardware/DisplayLuts$Entry;)V
    .registers 4

    .line 212
    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mOffsets:Landroid/util/IntArray;

    iget v1, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    .line 214
    iget v0, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    invoke-virtual {p1}, Landroid/hardware/DisplayLuts$Entry;->getBuffer()[F

    move-result-object p1

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    .line 215
    return-void
.end method

.method private blacklist clear()V
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mOffsets:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    .line 220
    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    return-void
.end method


# virtual methods
.method public blacklist getLutBuffers()[F
    .registers 7

    .line 274
    iget v0, p0, Landroid/hardware/DisplayLuts;->mTotalLength:I

    new-array v0, v0, [F

    .line 276
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    iget-object v3, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 277
    iget-object v3, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/DisplayLuts$Entry;

    invoke-virtual {v3}, Landroid/hardware/DisplayLuts$Entry;->getBuffer()[F

    move-result-object v3

    .line 278
    iget-object v4, p0, Landroid/hardware/DisplayLuts;->mOffsets:Landroid/util/IntArray;

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->get(I)I

    move-result v4

    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 280
    :cond_27
    return-object v0
.end method

.method public blacklist getLutDimensions()[I
    .registers 4

    .line 305
    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 306
    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 307
    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/DisplayLuts$Entry;

    invoke-virtual {v2}, Landroid/hardware/DisplayLuts$Entry;->getDimension()I

    move-result v2

    aput v2, v0, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 309
    :cond_22
    return-object v0
.end method

.method public blacklist getLutSamplingKeys()[I
    .registers 4

    .line 316
    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 317
    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 318
    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/DisplayLuts$Entry;

    invoke-virtual {v2}, Landroid/hardware/DisplayLuts$Entry;->getSamplingKey()I

    move-result v2

    aput v2, v0, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 320
    :cond_22
    return-object v0
.end method

.method public blacklist getLutSizes()[I
    .registers 4

    .line 294
    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 295
    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 296
    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/DisplayLuts$Entry;

    invoke-virtual {v2}, Landroid/hardware/DisplayLuts$Entry;->getSize()I

    move-result v2

    aput v2, v0, v1

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 298
    :cond_22
    return-object v0
.end method

.method public blacklist getOffsets()[I
    .registers 2

    .line 287
    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mOffsets:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist set(Landroid/hardware/DisplayLuts$Entry;)V
    .registers 3

    .line 233
    if-eqz p1, :cond_9

    .line 236
    invoke-direct {p0}, Landroid/hardware/DisplayLuts;->clear()V

    .line 237
    invoke-direct {p0, p1}, Landroid/hardware/DisplayLuts;->addEntry(Landroid/hardware/DisplayLuts$Entry;)V

    .line 238
    return-void

    .line 234
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The entry is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist set(Landroid/hardware/DisplayLuts$Entry;Landroid/hardware/DisplayLuts$Entry;)V
    .registers 5

    .line 251
    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    .line 254
    invoke-virtual {p1}, Landroid/hardware/DisplayLuts$Entry;->getDimension()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 255
    invoke-virtual {p2}, Landroid/hardware/DisplayLuts$Entry;->getDimension()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    .line 258
    invoke-direct {p0}, Landroid/hardware/DisplayLuts;->clear()V

    .line 259
    invoke-direct {p0, p1}, Landroid/hardware/DisplayLuts;->addEntry(Landroid/hardware/DisplayLuts$Entry;)V

    .line 260
    invoke-direct {p0, p2}, Landroid/hardware/DisplayLuts;->addEntry(Landroid/hardware/DisplayLuts$Entry;)V

    .line 261
    return-void

    .line 256
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The entries should be 1D and 3D in order!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The entry is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayLuts{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v2, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/DisplayLuts$Entry;

    .line 204
    invoke-virtual {v3}, Landroid/hardware/DisplayLuts$Entry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    goto :goto_12

    .line 207
    :cond_29
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist valid()Z
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/hardware/DisplayLuts;->mEntries:Ljava/util/ArrayList;

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
