.class public final Landroid/hardware/radio/V1_6/LinkCapacityEstimate;
.super Ljava/lang/Object;
.source "LinkCapacityEstimate.java"


# instance fields
.field public blacklist downlinkCapacityKbps:I

.field public blacklist secondaryDownlinkCapacityKbps:I

.field public blacklist secondaryUplinkCapacityKbps:I

.field public blacklist uplinkCapacityKbps:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 22
    iput v0, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->uplinkCapacityKbps:I

    .line 31
    iput v0, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    .line 40
    iput v0, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

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
            "Landroid/hardware/radio/V1_6/LinkCapacityEstimate;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 104
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 105
    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 106
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 105
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 111
    new-instance v3, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;-><init>()V

    .line 112
    mul-int/lit8 v5, v1, 0x10

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 113
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 117
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
            "Landroid/hardware/radio/V1_6/LinkCapacityEstimate;",
            ">;)V"
        }
    .end annotation

    .line 136
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 138
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 139
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 140
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 141
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 142
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 143
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    mul-int/lit8 v5, v4, 0x10

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 145
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 148
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 149
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 44
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 45
    return v0

    .line 47
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 48
    return v1

    .line 50
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    if-eq v2, v3, :cond_11

    .line 51
    return v1

    .line 53
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;

    .line 54
    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->downlinkCapacityKbps:I

    iget v3, p1, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->downlinkCapacityKbps:I

    if-eq v2, v3, :cond_1a

    .line 55
    return v1

    .line 57
    :cond_1a
    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->uplinkCapacityKbps:I

    iget v3, p1, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->uplinkCapacityKbps:I

    if-eq v2, v3, :cond_21

    .line 58
    return v1

    .line 60
    :cond_21
    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    iget v3, p1, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    if-eq v2, v3, :cond_28

    .line 61
    return v1

    .line 63
    :cond_28
    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    iget p1, p1, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    if-eq v2, p1, :cond_2f

    .line 64
    return v1

    .line 66
    :cond_2f
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 71
    iget v0, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->uplinkCapacityKbps:I

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    .line 122
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->downlinkCapacityKbps:I

    .line 123
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->uplinkCapacityKbps:I

    .line 124
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    .line 125
    const-wide/16 v0, 0xc

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    .line 126
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 95
    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 96
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 97
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ".downlinkCapacityKbps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->downlinkCapacityKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .uplinkCapacityKbps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->uplinkCapacityKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", .secondaryDownlinkCapacityKbps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", .secondaryUplinkCapacityKbps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 153
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->downlinkCapacityKbps:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 154
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->uplinkCapacityKbps:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 155
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryDownlinkCapacityKbps:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 156
    const-wide/16 v0, 0xc

    add-long/2addr p2, v0

    iget v0, p0, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->secondaryUplinkCapacityKbps:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 157
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 129
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/LinkCapacityEstimate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 131
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 132
    return-void
.end method
