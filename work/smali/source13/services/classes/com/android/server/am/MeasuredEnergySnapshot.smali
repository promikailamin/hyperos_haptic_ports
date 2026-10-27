.class public Lcom/android/server/am/MeasuredEnergySnapshot;
.super Ljava/lang/Object;
.source "MeasuredEnergySnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    }
.end annotation


# static fields
.field private static final MILLIVOLTS_PER_VOLT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MeasuredEnergySnapshot"

.field public static final UNAVAILABLE:J = -0x1L


# instance fields
.field private final mAttributionSnapshots:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnergyConsumers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

.field private final mNumCpuClusterOrdinals:I

.field private final mNumDisplayOrdinals:I

.field private final mNumOtherOrdinals:I

.field private final mVoltageSnapshots:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p1, "idToConsumerMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    .line 97
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    .line 99
    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/android/server/am/MeasuredEnergySnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumCpuClusterOrdinals:I

    .line 101
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/server/am/MeasuredEnergySnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumDisplayOrdinals:I

    .line 102
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/server/am/MeasuredEnergySnapshot;->calculateNumOrdinals(ILandroid/util/SparseArray;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumOtherOrdinals:I

    .line 103
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    .line 104
    return-void
.end method

.method private calculateChargeConsumedUC(JI)J
    .registers 8
    .param p1, "deltaEnergyUJ"    # J
    .param p3, "avgVoltageMV"    # I

    .line 395
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    div-int/lit8 v2, p3, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p3

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static calculateNumOrdinals(ILandroid/util/SparseArray;)I
    .registers 7
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/power/stats/EnergyConsumer;",
            ">;)I"
        }
    .end annotation

    .line 381
    .local p1, "idToConsumer":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/power/stats/EnergyConsumer;>;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 382
    :cond_4
    const/4 v0, 0x0

    .line 383
    .local v0, "numOrdinals":I
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 384
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_a
    if-ge v2, v1, :cond_1b

    .line 385
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/power/stats/EnergyConsumer;

    .line 386
    .local v3, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    iget-byte v4, v3, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-ne v4, p0, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 384
    .end local v3    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 388
    .end local v2    # "idx":I
    :cond_1b
    return v0
.end method

.method private sanitizeCustomBucketName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "bucketName"    # Ljava/lang/String;

    .line 362
    if-nez p1, :cond_5

    .line 363
    const-string v0, ""

    return-object v0

    .line 365
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 366
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_36

    aget-char v4, v1, v3

    .line 367
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 368
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 369
    :cond_24
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 370
    const/16 v5, 0x5f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 372
    :cond_30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    .end local v4    # "c":C
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 375
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateAndGetDeltaForTypeOther(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumerAttribution;I)Landroid/util/SparseLongArray;
    .registers 21
    .param p1, "consumerInfo"    # Landroid/hardware/power/stats/EnergyConsumer;
    .param p2, "newAttributions"    # [Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .param p3, "avgVoltageMV"    # I

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-byte v3, v1, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    .line 274
    return-object v4

    .line 276
    :cond_c
    const/4 v3, 0x0

    if-nez p2, :cond_12

    .line 278
    new-array v5, v3, [Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .end local p2    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .local v5, "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    goto :goto_14

    .line 276
    .end local v5    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .restart local p2    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    :cond_12
    move-object/from16 v5, p2

    .line 282
    .end local p2    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .restart local v5    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    :goto_14
    iget-object v6, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    iget v7, v1, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseLongArray;

    .line 285
    .local v6, "uidOldEnergyMap":Landroid/util/SparseLongArray;
    if-nez v6, :cond_3e

    .line 286
    new-instance v7, Landroid/util/SparseLongArray;

    array-length v8, v5

    invoke-direct {v7, v8}, Landroid/util/SparseLongArray;-><init>(I)V

    move-object v6, v7

    .line 287
    iget-object v7, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    iget v8, v1, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    array-length v7, v5

    :goto_2f
    if-ge v3, v7, :cond_3d

    aget-object v8, v5, v3

    .line 289
    .local v8, "newAttribution":Landroid/hardware/power/stats/EnergyConsumerAttribution;
    iget v9, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    invoke-virtual {v6, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 288
    .end local v8    # "newAttribution":Landroid/hardware/power/stats/EnergyConsumerAttribution;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 291
    :cond_3d
    return-object v4

    .line 295
    :cond_3e
    new-instance v4, Landroid/util/SparseLongArray;

    invoke-direct {v4}, Landroid/util/SparseLongArray;-><init>()V

    .line 297
    .local v4, "uidChargeDeltas":Landroid/util/SparseLongArray;
    array-length v7, v5

    :goto_44
    if-ge v3, v7, :cond_c2

    aget-object v8, v5, v3

    .line 298
    .restart local v8    # "newAttribution":Landroid/hardware/power/stats/EnergyConsumerAttribution;
    iget v9, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    .line 299
    .local v9, "uid":I
    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    .line 301
    .local v10, "newEnergyUJ":J
    const-wide/16 v12, 0x0

    invoke-virtual {v6, v9, v12, v13}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v14

    .line 302
    .local v14, "oldEnergyUJ":J
    invoke-virtual {v6, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 305
    cmp-long v16, v14, v12

    if-gez v16, :cond_5e

    move-object/from16 v16, v5

    move-object/from16 p2, v6

    goto :goto_bb

    .line 306
    :cond_5e
    cmp-long v16, v10, v14

    if-nez v16, :cond_67

    move-object/from16 v16, v5

    move-object/from16 p2, v6

    goto :goto_bb

    .line 307
    :cond_67
    move-object/from16 v16, v5

    move-object/from16 p2, v6

    .end local v5    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .end local v6    # "uidOldEnergyMap":Landroid/util/SparseLongArray;
    .local v16, "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .local p2, "uidOldEnergyMap":Landroid/util/SparseLongArray;
    sub-long v5, v10, v14

    .line 308
    .local v5, "deltaUJ":J
    cmp-long v12, v5, v12

    if-ltz v12, :cond_7c

    if-gtz v2, :cond_74

    goto :goto_7c

    .line 315
    :cond_74
    invoke-direct {v0, v5, v6, v2}, Lcom/android/server/am/MeasuredEnergySnapshot;->calculateChargeConsumedUC(JI)J

    move-result-wide v12

    .line 316
    .local v12, "deltaChargeUC":J
    invoke-virtual {v4, v9, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_bb

    .line 309
    .end local v12    # "deltaChargeUC":J
    :cond_7c
    :goto_7c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EnergyConsumer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": new energy ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") but old energy ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "). Average voltage ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")Skipping. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "MeasuredEnergySnapshot"

    invoke-static {v13, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    nop

    .line 297
    .end local v5    # "deltaUJ":J
    .end local v8    # "newAttribution":Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .end local v9    # "uid":I
    .end local v10    # "newEnergyUJ":J
    .end local v14    # "oldEnergyUJ":J
    :goto_bb
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, p2

    move-object/from16 v5, v16

    goto :goto_44

    .line 318
    .end local v16    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .end local p2    # "uidOldEnergyMap":Landroid/util/SparseLongArray;
    .local v5, "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .restart local v6    # "uidOldEnergyMap":Landroid/util/SparseLongArray;
    :cond_c2
    return-object v4
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 323
    const-string v0, "Measured energy snapshot"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    const-string v0, "List of EnergyConsumers:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v1, :cond_57

    .line 326
    iget-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 327
    .local v1, "id":I
    iget-object v6, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/power/stats/EnergyConsumer;

    .line 328
    .local v6, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget v4, v6, Landroid/hardware/power/stats/EnergyConsumer;->id:I

    .line 329
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    iget v4, v6, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    iget-byte v3, v6, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x4

    iget-object v3, v6, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    aput-object v3, v7, v2

    .line 328
    const-string v2, "    Consumer %d is {id=%d, ordinal=%d, type=%d, name=%s}"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    .end local v1    # "id":I
    .end local v6    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 331
    .end local v0    # "i":I
    :cond_57
    const-string v0, "Map of consumerIds to energy (in microjoules):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5d
    iget-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_98

    .line 333
    iget-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 334
    .restart local v1    # "id":I
    iget-object v6, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    .line 335
    .local v6, "energyUJ":J
    iget-object v8, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    int-to-long v8, v8

    .line 336
    .local v8, "voltageMV":J
    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v5

    .line 337
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v3

    .line 336
    const-string v11, "    Consumer %d has energy %d uJ at %d mV"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    .end local v1    # "id":I
    .end local v6    # "energyUJ":J
    .end local v8    # "voltageMV":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 339
    .end local v0    # "i":I
    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "List of the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumOtherOrdinals:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OTHER EnergyConsumers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mAttributionSnapshots:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 342
    return-void
.end method

.method public getOtherOrdinalNames()[Ljava/lang/String;
    .registers 8

    .line 349
    iget v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumOtherOrdinals:I

    new-array v0, v0, [Ljava/lang/String;

    .line 350
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 351
    .local v1, "consumerIndex":I
    iget-object v2, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 352
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_c
    if-ge v3, v2, :cond_28

    .line 353
    iget-object v4, p0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/power/stats/EnergyConsumer;

    .line 354
    .local v4, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    iget-byte v5, v4, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    if-nez v5, :cond_25

    .line 355
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "consumerIndex":I
    .local v5, "consumerIndex":I
    iget-object v6, v4, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/am/MeasuredEnergySnapshot;->sanitizeCustomBucketName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    move v1, v5

    .line 352
    .end local v4    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    .end local v5    # "consumerIndex":I
    .restart local v1    # "consumerIndex":I
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 358
    .end local v3    # "idx":I
    :cond_28
    return-object v0
.end method

.method public updateAndGetDelta([Landroid/hardware/power/stats/EnergyConsumerResult;I)Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    .registers 26
    .param p1, "ecrs"    # [Landroid/hardware/power/stats/EnergyConsumerResult;
    .param p2, "voltageMV"    # I

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_1a2

    array-length v4, v1

    if-nez v4, :cond_f

    move v1, v2

    goto/16 :goto_1a3

    .line 154
    :cond_f
    const-string v4, "MeasuredEnergySnapshot"

    if-gtz v2, :cond_30

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected battery voltage ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mV) when taking measured energy snapshot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-object v3

    .line 161
    :cond_30
    new-instance v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;

    invoke-direct {v5}, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;-><init>()V

    .line 163
    .local v5, "output":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    array-length v6, v1

    const/4 v7, 0x0

    :goto_37
    if-ge v7, v6, :cond_1a0

    aget-object v8, v1, v7

    .line 165
    .local v8, "ecr":Landroid/hardware/power/stats/EnergyConsumerResult;
    iget v9, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    .line 166
    .local v9, "consumerId":I
    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 167
    .local v10, "newEnergyUJ":J
    iget-object v12, v8, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    .line 170
    .local v12, "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    iget-object v13, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mEnergyConsumers:Landroid/util/SparseArray;

    invoke-virtual {v13, v9, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/power/stats/EnergyConsumer;

    .line 171
    .local v13, "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    if-nez v13, :cond_69

    .line 172
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateAndGetDelta given invalid consumerId "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move v1, v2

    move/from16 v16, v6

    move/from16 v17, v7

    goto/16 :goto_194

    .line 175
    :cond_69
    iget-byte v14, v13, Landroid/hardware/power/stats/EnergyConsumer;->type:B

    .line 176
    .local v14, "type":I
    iget v15, v13, Landroid/hardware/power/stats/EnergyConsumer;->ordinal:I

    .line 179
    .local v15, "ordinal":I
    iget-object v3, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    move/from16 v16, v6

    move/from16 v17, v7

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v9, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    .line 180
    .local v6, "oldEnergyUJ":J
    iget-object v3, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 181
    .local v3, "oldVoltageMV":I
    iget-object v1, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mMeasuredEnergySnapshots:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 182
    iget-object v1, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mVoltageSnapshots:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    add-int v1, v3, v2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 185
    .local v1, "avgVoltageMV":I
    nop

    .line 186
    invoke-direct {v0, v13, v12, v1}, Lcom/android/server/am/MeasuredEnergySnapshot;->updateAndGetDeltaForTypeOther(Landroid/hardware/power/stats/EnergyConsumer;[Landroid/hardware/power/stats/EnergyConsumerAttribution;I)Landroid/util/SparseLongArray;

    move-result-object v18

    .line 193
    .local v18, "otherUidCharges":Landroid/util/SparseLongArray;
    const-wide/16 v19, 0x0

    cmp-long v21, v6, v19

    if-gez v21, :cond_9d

    move v1, v2

    goto/16 :goto_194

    .line 194
    :cond_9d
    cmp-long v21, v10, v6

    if-nez v21, :cond_a4

    move v1, v2

    goto/16 :goto_194

    .line 196
    :cond_a4
    move-object/from16 v21, v8

    move/from16 v22, v9

    .end local v8    # "ecr":Landroid/hardware/power/stats/EnergyConsumerResult;
    .end local v9    # "consumerId":I
    .local v21, "ecr":Landroid/hardware/power/stats/EnergyConsumerResult;
    .local v22, "consumerId":I
    sub-long v8, v10, v6

    .line 197
    .local v8, "deltaUJ":J
    cmp-long v19, v8, v19

    if-ltz v19, :cond_145

    if-gtz v3, :cond_b6

    move/from16 v20, v1

    move/from16 v19, v3

    goto/16 :goto_149

    .line 205
    :cond_b6
    move/from16 v19, v3

    .end local v3    # "oldVoltageMV":I
    .local v19, "oldVoltageMV":I
    invoke-direct {v0, v8, v9, v1}, Lcom/android/server/am/MeasuredEnergySnapshot;->calculateChargeConsumedUC(JI)J

    move-result-wide v2

    .line 206
    .local v2, "deltaChargeUC":J
    packed-switch v14, :pswitch_data_1a6

    .line 247
    move/from16 v20, v1

    .end local v1    # "avgVoltageMV":I
    .local v20, "avgVoltageMV":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring consumer "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v13, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v1, p2

    goto/16 :goto_194

    .line 234
    .end local v20    # "avgVoltageMV":I
    .restart local v1    # "avgVoltageMV":I
    :pswitch_e7
    iput-wide v2, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->wifiChargeUC:J

    .line 235
    move/from16 v1, p2

    goto/16 :goto_194

    .line 230
    :pswitch_ed
    iput-wide v2, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->mobileRadioChargeUC:J

    .line 231
    move/from16 v1, p2

    goto/16 :goto_194

    .line 226
    :pswitch_f3
    iput-wide v2, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->gnssChargeUC:J

    .line 227
    move/from16 v1, p2

    goto/16 :goto_194

    .line 219
    :pswitch_f9
    move/from16 v20, v1

    .end local v1    # "avgVoltageMV":I
    .restart local v20    # "avgVoltageMV":I
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->displayChargeUC:[J

    if-nez v1, :cond_105

    .line 220
    iget v1, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumDisplayOrdinals:I

    new-array v1, v1, [J

    iput-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->displayChargeUC:[J

    .line 222
    :cond_105
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->displayChargeUC:[J

    aput-wide v2, v1, v15

    .line 223
    move/from16 v1, p2

    goto/16 :goto_194

    .line 212
    .end local v20    # "avgVoltageMV":I
    .restart local v1    # "avgVoltageMV":I
    :pswitch_10d
    move/from16 v20, v1

    .end local v1    # "avgVoltageMV":I
    .restart local v20    # "avgVoltageMV":I
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->cpuClusterChargeUC:[J

    if-nez v1, :cond_119

    .line 213
    iget v1, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumCpuClusterOrdinals:I

    new-array v1, v1, [J

    iput-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->cpuClusterChargeUC:[J

    .line 215
    :cond_119
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->cpuClusterChargeUC:[J

    aput-wide v2, v1, v15

    .line 216
    move/from16 v1, p2

    goto/16 :goto_194

    .line 208
    .end local v20    # "avgVoltageMV":I
    .restart local v1    # "avgVoltageMV":I
    :pswitch_121
    move/from16 v20, v1

    .end local v1    # "avgVoltageMV":I
    .restart local v20    # "avgVoltageMV":I
    iput-wide v2, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->bluetoothChargeUC:J

    .line 209
    move/from16 v1, p2

    goto :goto_194

    .line 238
    .end local v20    # "avgVoltageMV":I
    .restart local v1    # "avgVoltageMV":I
    :pswitch_128
    move/from16 v20, v1

    .end local v1    # "avgVoltageMV":I
    .restart local v20    # "avgVoltageMV":I
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    if-nez v1, :cond_13a

    .line 239
    iget v1, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumOtherOrdinals:I

    new-array v1, v1, [J

    iput-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    .line 240
    iget v1, v0, Lcom/android/server/am/MeasuredEnergySnapshot;->mNumOtherOrdinals:I

    new-array v1, v1, [Landroid/util/SparseLongArray;

    iput-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    .line 242
    :cond_13a
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    aput-wide v2, v1, v15

    .line 243
    iget-object v1, v5, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    aput-object v18, v1, v15

    .line 244
    move/from16 v1, p2

    goto :goto_194

    .line 197
    .end local v2    # "deltaChargeUC":J
    .end local v19    # "oldVoltageMV":I
    .end local v20    # "avgVoltageMV":I
    .restart local v1    # "avgVoltageMV":I
    .restart local v3    # "oldVoltageMV":I
    :cond_145
    move/from16 v20, v1

    move/from16 v19, v3

    .line 198
    .end local v1    # "avgVoltageMV":I
    .end local v3    # "oldVoltageMV":I
    .restart local v19    # "oldVoltageMV":I
    .restart local v20    # "avgVoltageMV":I
    :goto_149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad data! EnergyConsumer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v13, Landroid/hardware/power/stats/EnergyConsumer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": new energy ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") < old energy ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), new voltage ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), old voltage ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v2, v19

    .end local v19    # "oldVoltageMV":I
    .local v2, "oldVoltageMV":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "). Skipping. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    nop

    .line 163
    .end local v2    # "oldVoltageMV":I
    .end local v6    # "oldEnergyUJ":J
    .end local v8    # "deltaUJ":J
    .end local v10    # "newEnergyUJ":J
    .end local v12    # "newAttributions":[Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .end local v13    # "consumer":Landroid/hardware/power/stats/EnergyConsumer;
    .end local v14    # "type":I
    .end local v15    # "ordinal":I
    .end local v18    # "otherUidCharges":Landroid/util/SparseLongArray;
    .end local v20    # "avgVoltageMV":I
    .end local v21    # "ecr":Landroid/hardware/power/stats/EnergyConsumerResult;
    .end local v22    # "consumerId":I
    :goto_194
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v0, p0

    move v2, v1

    move/from16 v6, v16

    const/4 v3, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_37

    .line 251
    :cond_1a0
    move v1, v2

    return-object v5

    .line 151
    .end local v5    # "output":Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
    :cond_1a2
    move v1, v2

    .line 152
    :goto_1a3
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_128
        :pswitch_121
        :pswitch_10d
        :pswitch_f9
        :pswitch_f3
        :pswitch_ed
        :pswitch_e7
    .end packed-switch
.end method
