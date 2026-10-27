.class public final Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;
.super Ljava/lang/Object;
.source "IGnssDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugData"
.end annotation


# instance fields
.field public blacklist position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

.field public blacklist satelliteDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    .line 221
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

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
            "Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 285
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 286
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 287
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 286
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 290
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 291
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 292
    new-instance v3, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;-><init>()V

    .line 293
    mul-int/lit8 v5, v1, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 294
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 298
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
            "Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;",
            ">;)V"
        }
    .end annotation

    .line 328
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 330
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 331
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 332
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 333
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 334
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 335
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;

    mul-int/lit8 v5, v4, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 334
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 337
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 340
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 341
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 231
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 232
    return v0

    .line 234
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 235
    return v1

    .line 237
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;

    if-eq v2, v3, :cond_11

    .line 238
    return v1

    .line 240
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;

    .line 241
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    iget-object v3, p1, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 242
    return v1

    .line 244
    :cond_1e
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    iget-object v3, p1, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 245
    return v1

    .line 247
    :cond_29
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 248
    return v1

    .line 250
    :cond_34
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 255
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    .line 256
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    .line 257
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    .line 258
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 255
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 16

    .line 303
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    invoke-virtual {v2, p1, p2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 304
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    const-wide/16 v5, 0x50

    add-long/2addr v5, p3

    invoke-virtual {v2, p1, p2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 306
    const-wide/16 v5, 0x60

    add-long/2addr v5, p3

    const-wide/16 v7, 0x8

    add-long/2addr v7, v5

    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 307
    mul-int/lit8 v2, v8, 0x18

    int-to-long v9, v2

    .line 308
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v1

    add-long/2addr v5, v3

    .line 307
    const/4 v7, 0x1

    move-object v0, p1

    move-wide v3, v1

    move-wide v1, v9

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 311
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 312
    const/4 v2, 0x0

    :goto_31
    if-ge v2, v8, :cond_46

    .line 313
    new-instance v3, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;-><init>()V

    .line 314
    mul-int/lit8 v4, v2, 0x18

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 315
    iget-object v4, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 318
    :cond_46
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 276
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 277
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 278
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, ".position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, ", .time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, ", .satelliteDataArray = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 345
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->position:Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/gnss/V1_0/IGnssDebug$PositionDebug;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 346
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->time:Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    const-wide/16 v3, 0x50

    add-long/2addr v3, p2

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 348
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 349
    const-wide/16 v3, 0x60

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 350
    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 351
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 352
    nop

    :goto_2f
    if-ge v5, v0, :cond_42

    .line 353
    iget-object v4, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->satelliteDataArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;

    mul-int/lit8 v6, v5, 0x18

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 352
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 355
    :cond_42
    add-long/2addr p2, v1

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 357
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 321
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 322
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssDebug$DebugData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 323
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 324
    return-void
.end method
