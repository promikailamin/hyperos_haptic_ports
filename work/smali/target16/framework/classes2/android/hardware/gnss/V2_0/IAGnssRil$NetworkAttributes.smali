.class public final Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;
.super Ljava/lang/Object;
.source "IAGnssRil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkAttributes"
.end annotation


# instance fields
.field public blacklist apn:Ljava/lang/String;

.field public blacklist capabilities:S

.field public blacklist isConnected:Z

.field public blacklist networkHandle:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    .line 156
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

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
            "Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 220
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 221
    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 222
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 221
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 227
    new-instance v3, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;-><init>()V

    .line 228
    mul-int/lit8 v5, v1, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 229
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 233
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
            "Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;",
            ">;)V"
        }
    .end annotation

    .line 258
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 260
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 261
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 262
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 263
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 264
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 265
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 264
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 267
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 270
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 271
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 160
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 161
    return v0

    .line 163
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 164
    return v1

    .line 166
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;

    if-eq v2, v3, :cond_11

    .line 167
    return v1

    .line 169
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;

    .line 170
    iget-wide v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    iget-wide v4, p1, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 171
    return v1

    .line 173
    :cond_1c
    iget-boolean v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    iget-boolean v3, p1, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    if-eq v2, v3, :cond_23

    .line 174
    return v1

    .line 176
    :cond_23
    iget-short v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iget-short v3, p1, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 177
    return v1

    .line 179
    :cond_36
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 180
    return v1

    .line 182
    :cond_41
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 187
    iget-wide v0, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    .line 188
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    .line 189
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-short v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    .line 190
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    .line 191
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 187
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 16

    .line 238
    const-wide/16 v0, 0x0

    add-long v2, p3, v0

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    .line 239
    const-wide/16 v2, 0x8

    add-long/2addr v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    .line 240
    const-wide/16 v2, 0xa

    add-long/2addr v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    .line 241
    const-wide/16 v2, 0x10

    add-long/2addr p3, v2

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    .line 244
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    .line 245
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    add-long v8, p3, v0

    .line 243
    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 248
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 211
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 212
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 213
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, ".networkHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-wide v1, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, ", .isConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-boolean v1, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, ", .capabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-short v1, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    invoke-static {v1}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkCapability;->dumpBitfield(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, ", .apn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8

    .line 275
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->networkHandle:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 276
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->isConnected:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 277
    const-wide/16 v0, 0xa

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->capabilities:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 278
    const-wide/16 v0, 0x10

    add-long/2addr p2, v0

    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->apn:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 279
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 251
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 252
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IAGnssRil$NetworkAttributes;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 253
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 254
    return-void
.end method
