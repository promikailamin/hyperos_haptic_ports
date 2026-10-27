.class public final Landroid/hardware/radio/V1_4/NrIndicators;
.super Ljava/lang/Object;
.source "NrIndicators.java"


# instance fields
.field public blacklist isDcNrRestricted:Z

.field public blacklist isEndcAvailable:Z

.field public blacklist isNrAvailable:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    .line 19
    iput-boolean v0, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    .line 26
    iput-boolean v0, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

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
            "Landroid/hardware/radio/V1_4/NrIndicators;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 84
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 85
    mul-int/lit8 v3, v2, 0x3

    int-to-long v5, v3

    .line 86
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 85
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 91
    new-instance v3, Landroid/hardware/radio/V1_4/NrIndicators;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/NrIndicators;-><init>()V

    .line 92
    mul-int/lit8 v5, v1, 0x3

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_4/NrIndicators;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 97
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
            "Landroid/hardware/radio/V1_4/NrIndicators;",
            ">;)V"
        }
    .end annotation

    .line 115
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 117
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 118
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 119
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 120
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x3

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 121
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 122
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_4/NrIndicators;

    mul-int/lit8 v5, v4, 0x3

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_4/NrIndicators;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 124
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 127
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 128
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 30
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 31
    return v0

    .line 33
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 34
    return v1

    .line 36
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_4/NrIndicators;

    if-eq v2, v3, :cond_11

    .line 37
    return v1

    .line 39
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_4/NrIndicators;

    .line 40
    iget-boolean v2, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    if-eq v2, v3, :cond_1a

    .line 41
    return v1

    .line 43
    :cond_1a
    iget-boolean v2, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    if-eq v2, v3, :cond_21

    .line 44
    return v1

    .line 46
    :cond_21
    iget-boolean v2, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    iget-boolean p1, p1, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    if-eq v2, p1, :cond_28

    .line 47
    return v1

    .line 49
    :cond_28
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 54
    iget-boolean v0, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 54
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    .line 102
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    .line 103
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    .line 104
    const-wide/16 v0, 0x2

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    .line 105
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 75
    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 76
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_4/NrIndicators;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 77
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ".isEndcAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-boolean v1, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .isDcNrRestricted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-boolean v1, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .isNrAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-boolean v1, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 132
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isEndcAvailable:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 133
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isDcNrRestricted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 134
    const-wide/16 v0, 0x2

    add-long/2addr p2, v0

    iget-boolean v0, p0, Landroid/hardware/radio/V1_4/NrIndicators;->isNrAvailable:Z

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 135
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 108
    new-instance v0, Landroid/os/HwBlob;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 109
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/NrIndicators;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 111
    return-void
.end method
