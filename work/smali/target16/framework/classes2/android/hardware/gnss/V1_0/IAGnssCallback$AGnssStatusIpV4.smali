.class public final Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;
.super Ljava/lang/Object;
.source "IAGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IAGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AGnssStatusIpV4"
.end annotation


# instance fields
.field public blacklist ipV4Addr:I

.field public blacklist status:B

.field public blacklist type:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->type:B

    .line 201
    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->status:B

    .line 205
    iput v0, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->ipV4Addr:I

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
            "Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 263
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 264
    mul-int/lit8 v3, v2, 0x8

    int-to-long v5, v3

    .line 265
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 264
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 268
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 270
    new-instance v3, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;

    invoke-direct {v3}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;-><init>()V

    .line 271
    mul-int/lit8 v5, v1, 0x8

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 272
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 276
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
            "Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;",
            ">;)V"
        }
    .end annotation

    .line 294
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 296
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 297
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 298
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 299
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 300
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 301
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;

    mul-int/lit8 v5, v4, 0x8

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 303
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 306
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 307
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 209
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 210
    return v0

    .line 212
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 213
    return v1

    .line 215
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;

    if-eq v2, v3, :cond_11

    .line 216
    return v1

    .line 218
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;

    .line 219
    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->type:B

    iget-byte v3, p1, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->type:B

    if-eq v2, v3, :cond_1a

    .line 220
    return v1

    .line 222
    :cond_1a
    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->status:B

    iget-byte v3, p1, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->status:B

    if-eq v2, v3, :cond_21

    .line 223
    return v1

    .line 225
    :cond_21
    iget v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->ipV4Addr:I

    iget p1, p1, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->ipV4Addr:I

    if-eq v2, p1, :cond_28

    .line 226
    return v1

    .line 228
    :cond_28
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 233
    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->type:B

    .line 234
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->status:B

    .line 235
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->ipV4Addr:I

    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 233
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    .line 281
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->type:B

    .line 282
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->status:B

    .line 283
    const-wide/16 v0, 0x4

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->ipV4Addr:I

    .line 284
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 254
    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 255
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 256
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
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->type:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", .status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->status:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusValue;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ", .ipV4Addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget v1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->ipV4Addr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 311
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->type:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 312
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->status:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 313
    const-wide/16 v0, 0x4

    add-long/2addr p2, v0

    iget v0, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->ipV4Addr:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 314
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 287
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 288
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV4;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 289
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 290
    return-void
.end method
