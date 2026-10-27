.class public final Landroid/hardware/radio/V1_6/EpsQos;
.super Ljava/lang/Object;
.source "EpsQos.java"


# instance fields
.field public blacklist downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

.field public blacklist qci:S

.field public blacklist uplink:Landroid/hardware/radio/V1_6/QosBandwidth;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/hardware/radio/V1_6/EpsQos;->qci:S

    .line 11
    new-instance v0, Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/QosBandwidth;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/EpsQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 12
    new-instance v0, Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/QosBandwidth;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/EpsQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

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
            "Landroid/hardware/radio/V1_6/EpsQos;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 70
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 71
    mul-int/lit8 v3, v2, 0x14

    int-to-long v5, v3

    .line 72
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 71
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 77
    new-instance v3, Landroid/hardware/radio/V1_6/EpsQos;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/EpsQos;-><init>()V

    .line 78
    mul-int/lit8 v5, v1, 0x14

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_6/EpsQos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 79
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 83
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
            "Landroid/hardware/radio/V1_6/EpsQos;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 104
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 105
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 106
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x14

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 107
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 108
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_6/EpsQos;

    mul-int/lit8 v5, v4, 0x14

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_6/EpsQos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 110
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 113
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 114
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 16
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 17
    return v0

    .line 19
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 20
    return v1

    .line 22
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/EpsQos;

    if-eq v2, v3, :cond_11

    .line 23
    return v1

    .line 25
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_6/EpsQos;

    .line 26
    iget-short v2, p0, Landroid/hardware/radio/V1_6/EpsQos;->qci:S

    iget-short v3, p1, Landroid/hardware/radio/V1_6/EpsQos;->qci:S

    if-eq v2, v3, :cond_1a

    .line 27
    return v1

    .line 29
    :cond_1a
    iget-object v2, p0, Landroid/hardware/radio/V1_6/EpsQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    iget-object v3, p1, Landroid/hardware/radio/V1_6/EpsQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 30
    return v1

    .line 32
    :cond_25
    iget-object v2, p0, Landroid/hardware/radio/V1_6/EpsQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    iget-object p1, p1, Landroid/hardware/radio/V1_6/EpsQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 33
    return v1

    .line 35
    :cond_30
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 40
    iget-short v0, p0, Landroid/hardware/radio/V1_6/EpsQos;->qci:S

    .line 41
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_6/EpsQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 42
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_6/EpsQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 43
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 88
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Landroid/hardware/radio/V1_6/EpsQos;->qci:S

    .line 89
    iget-object v0, p0, Landroid/hardware/radio/V1_6/EpsQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_6/QosBandwidth;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 90
    iget-object v0, p0, Landroid/hardware/radio/V1_6/EpsQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    const-wide/16 v1, 0xc

    add-long/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/radio/V1_6/QosBandwidth;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 91
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 61
    const-wide/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 62
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/EpsQos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 63
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ".qci = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-short v1, p0, Landroid/hardware/radio/V1_6/EpsQos;->qci:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", .downlink = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Landroid/hardware/radio/V1_6/EpsQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", .uplink = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Landroid/hardware/radio/V1_6/EpsQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 118
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/radio/V1_6/EpsQos;->qci:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 119
    iget-object v0, p0, Landroid/hardware/radio/V1_6/EpsQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    const-wide/16 v1, 0x4

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_6/QosBandwidth;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 120
    iget-object v0, p0, Landroid/hardware/radio/V1_6/EpsQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    const-wide/16 v1, 0xc

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/radio/V1_6/QosBandwidth;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 121
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 94
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 95
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/EpsQos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 97
    return-void
.end method
