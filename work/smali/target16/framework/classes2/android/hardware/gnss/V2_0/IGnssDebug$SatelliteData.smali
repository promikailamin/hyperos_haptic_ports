.class public final Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;
.super Ljava/lang/Object;
.source "IGnssDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SatelliteData"
.end annotation


# instance fields
.field public blacklist constellation:B

.field public blacklist v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    .line 105
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

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
            "Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 157
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 158
    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 159
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 158
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 164
    new-instance v3, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;-><init>()V

    .line 165
    mul-int/lit8 v5, v1, 0x18

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 166
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 170
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
            "Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;",
            ">;)V"
        }
    .end annotation

    .line 187
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 189
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 190
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 191
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 192
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 193
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 194
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;

    mul-int/lit8 v5, v4, 0x18

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 196
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 199
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 200
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 110
    return v0

    .line 112
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 113
    return v1

    .line 115
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;

    if-eq v2, v3, :cond_11

    .line 116
    return v1

    .line 118
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;

    .line 119
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    iget-object v3, p1, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 120
    return v1

    .line 122
    :cond_1e
    iget-byte v2, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    iget-byte p1, p1, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    if-eq v2, p1, :cond_25

    .line 123
    return v1

    .line 125
    :cond_25
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 130
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    .line 131
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    .line 132
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 175
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 176
    const-wide/16 v0, 0x14

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    .line 177
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 148
    const-wide/16 v0, 0x18

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 149
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 150
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ".v1_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", .constellation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-byte v1, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    invoke-static {v1}, Landroid/hardware/gnss/V2_0/GnssConstellationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 204
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->v1_0:Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$SatelliteData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 205
    const-wide/16 v0, 0x14

    add-long/2addr p2, v0

    iget-byte v0, p0, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->constellation:B

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 206
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 180
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 181
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_0/IGnssDebug$SatelliteData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 182
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 183
    return-void
.end method
