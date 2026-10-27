.class public final Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssMeasurement"
.end annotation


# instance fields
.field public blacklist accumulatedDeltaRangeState:S

.field public blacklist v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 261
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 262
    mul-int/lit16 v3, v2, 0x98

    int-to-long v5, v3

    .line 263
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 262
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 267
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 268
    new-instance v3, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    invoke-direct {v3}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;-><init>()V

    .line 269
    mul-int/lit16 v5, v1, 0x98

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 270
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 274
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;",
            ">;)V"
        }
    .end annotation

    .line 291
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 293
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 294
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 295
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 296
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x98

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 297
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 298
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    mul-int/lit16 v5, v4, 0x98

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 300
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 303
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 304
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 213
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 214
    return v0

    .line 216
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 217
    return v1

    .line 219
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    if-eq v2, v3, :cond_11

    .line 220
    return v1

    .line 222
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;

    .line 223
    iget-object v2, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    iget-object v3, p1, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 224
    return v1

    .line 226
    :cond_1e
    iget-short v2, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iget-short p1, p1, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 227
    return v1

    .line 229
    :cond_31
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 234
    iget-object v0, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    .line 235
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-short v1, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    .line 236
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 234
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 279
    iget-object v0, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 280
    const-wide/16 v0, 0x90

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    .line 281
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 252
    const-wide/16 v0, 0x98

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 253
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 254
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ".v1_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", .accumulatedDeltaRangeState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-short v1, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-static {v1}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssAccumulatedDeltaRangeState;->dumpBitfield(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 308
    iget-object v0, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->v1_0:Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 309
    const-wide/16 v0, 0x90

    add-long/2addr p2, v0

    iget-short v0, p0, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->accumulatedDeltaRangeState:S

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 310
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 284
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x98

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 285
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_1/IGnssMeasurementCallback$GnssMeasurement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 286
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 287
    return-void
.end method
