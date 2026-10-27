.class public final Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;
.super Ljava/lang/Object;
.source "IGnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_1/IGnssConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlacklistedSource"
.end annotation


# instance fields
.field public blacklist constellation:B

.field public blacklist svid:S


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->constellation:B

    .line 100
    iput-short v0, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->svid:S

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
            "Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 152
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 153
    mul-int/lit8 v3, v2, 0x4

    int-to-long v5, v3

    .line 154
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 153
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 159
    new-instance v3, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;

    invoke-direct {v3}, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;-><init>()V

    .line 160
    mul-int/lit8 v5, v1, 0x4

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 161
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 165
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
            "Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;",
            ">;)V"
        }
    .end annotation

    .line 182
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 184
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 185
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 186
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 187
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x4

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 188
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 189
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;

    mul-int/lit8 v5, v4, 0x4

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 191
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 194
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 195
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 104
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 105
    return v0

    .line 107
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 108
    return v1

    .line 110
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;

    if-eq v2, v3, :cond_11

    .line 111
    return v1

    .line 113
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;

    .line 114
    iget-byte v2, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->constellation:B

    iget-byte v3, p1, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->constellation:B

    if-eq v2, v3, :cond_1a

    .line 115
    return v1

    .line 117
    :cond_1a
    iget-short v2, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->svid:S

    iget-short p1, p1, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->svid:S

    if-eq v2, p1, :cond_21

    .line 118
    return v1

    .line 120
    :cond_21
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 125
    iget-byte v0, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->constellation:B

    .line 126
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-short v1, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->svid:S

    .line 127
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    .line 170
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->constellation:B

    .line 171
    const-wide/16 v0, 0x2

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->svid:S

    .line 172
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 143
    const-wide/16 v0, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 144
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 145
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ".constellation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-byte v1, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->constellation:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/GnssConstellationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", .svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-short v1, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->svid:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 199
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->constellation:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 200
    const-wide/16 v0, 0x2

    add-long/2addr p2, v0

    iget-short v0, p0, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->svid:S

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 201
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 175
    new-instance v0, Landroid/os/HwBlob;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 176
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_1/IGnssConfiguration$BlacklistedSource;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 178
    return-void
.end method
