.class public final Landroid/hardware/gnss/V2_0/GnssLocation;
.super Ljava/lang/Object;
.source "GnssLocation.java"


# instance fields
.field public blacklist elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

.field public blacklist v1_0:Landroid/hardware/gnss/V1_0/GnssLocation;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->v1_0:Landroid/hardware/gnss/V1_0/GnssLocation;

    .line 14
    new-instance v0, Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_0/ElapsedRealtime;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

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
            "Landroid/hardware/gnss/V2_0/GnssLocation;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 66
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 67
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 68
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 67
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 73
    new-instance v3, Landroid/hardware/gnss/V2_0/GnssLocation;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_0/GnssLocation;-><init>()V

    .line 74
    mul-int/lit8 v5, v1, 0x58

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V2_0/GnssLocation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 75
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 79
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
            "Landroid/hardware/gnss/V2_0/GnssLocation;",
            ">;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 99
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 100
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 101
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 102
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 103
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V2_0/GnssLocation;

    mul-int/lit8 v5, v4, 0x58

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V2_0/GnssLocation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 105
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 108
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 109
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 18
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 19
    return v0

    .line 21
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 22
    return v1

    .line 24
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_0/GnssLocation;

    if-eq v2, v3, :cond_11

    .line 25
    return v1

    .line 27
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V2_0/GnssLocation;

    .line 28
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->v1_0:Landroid/hardware/gnss/V1_0/GnssLocation;

    iget-object v3, p1, Landroid/hardware/gnss/V2_0/GnssLocation;->v1_0:Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 29
    return v1

    .line 31
    :cond_1e
    iget-object v2, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    iget-object p1, p1, Landroid/hardware/gnss/V2_0/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 32
    return v1

    .line 34
    :cond_29
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 39
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->v1_0:Landroid/hardware/gnss/V1_0/GnssLocation;

    .line 40
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    .line 41
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 84
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->v1_0:Landroid/hardware/gnss/V1_0/GnssLocation;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/gnss/V1_0/GnssLocation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 85
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    const-wide/16 v1, 0x40

    add-long/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/gnss/V2_0/ElapsedRealtime;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 86
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 57
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 58
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_0/GnssLocation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 59
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, ".v1_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->v1_0:Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, ", .elapsedRealtime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 113
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->v1_0:Landroid/hardware/gnss/V1_0/GnssLocation;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/gnss/V1_0/GnssLocation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 114
    iget-object v0, p0, Landroid/hardware/gnss/V2_0/GnssLocation;->elapsedRealtime:Landroid/hardware/gnss/V2_0/ElapsedRealtime;

    const-wide/16 v1, 0x40

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/gnss/V2_0/ElapsedRealtime;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 115
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 89
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 90
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_0/GnssLocation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 92
    return-void
.end method
