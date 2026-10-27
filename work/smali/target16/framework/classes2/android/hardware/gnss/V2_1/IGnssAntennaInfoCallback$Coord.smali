.class public final Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Coord"
.end annotation


# instance fields
.field public blacklist x:D

.field public blacklist xUncertainty:D

.field public blacklist y:D

.field public blacklist yUncertainty:D

.field public blacklist z:D

.field public blacklist zUncertainty:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    .line 217
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    .line 218
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    .line 219
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    .line 220
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    .line 221
    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

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
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 297
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 298
    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 299
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 298
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 302
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 303
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 304
    new-instance v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;-><init>()V

    .line 305
    mul-int/lit8 v5, v1, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 306
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 310
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
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;",
            ">;)V"
        }
    .end annotation

    .line 331
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 333
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 334
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 335
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 336
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 337
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 338
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 340
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 343
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 344
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 225
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 226
    return v0

    .line 228
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 229
    return v1

    .line 231
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    if-eq v2, v3, :cond_11

    .line 232
    return v1

    .line 234
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    .line 235
    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    iget-wide v4, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1c

    .line 236
    return v1

    .line 238
    :cond_1c
    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    iget-wide v4, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_25

    .line 239
    return v1

    .line 241
    :cond_25
    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    iget-wide v4, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2e

    .line 242
    return v1

    .line 244
    :cond_2e
    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    iget-wide v4, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_37

    .line 245
    return v1

    .line 247
    :cond_37
    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    iget-wide v4, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_40

    .line 248
    return v1

    .line 250
    :cond_40
    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    iget-wide v4, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_49

    .line 251
    return v1

    .line 253
    :cond_49
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 258
    iget-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    .line 260
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    .line 261
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    .line 263
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    .line 264
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 258
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    .line 315
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    .line 316
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    .line 317
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    .line 318
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    .line 319
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    .line 320
    const-wide/16 v0, 0x28

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide p1

    iput-wide p1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    .line 321
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 288
    const-wide/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 289
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 290
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, ".x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, ", .xUncertainty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, ", .y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, ", .yUncertainty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, ", .z = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, ", .zUncertainty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8

    .line 348
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->x:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 349
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 350
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->y:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 351
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 352
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->z:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 353
    const-wide/16 v0, 0x28

    add-long/2addr p2, v0

    iget-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 354
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 324
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 325
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 326
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 327
    return-void
.end method
