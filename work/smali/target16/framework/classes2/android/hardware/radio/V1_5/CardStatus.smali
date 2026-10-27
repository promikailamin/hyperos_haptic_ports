.class public final Landroid/hardware/radio/V1_5/CardStatus;
.super Ljava/lang/Object;
.source "CardStatus.java"


# instance fields
.field public blacklist applications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/AppStatus;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist base:Landroid/hardware/radio/V1_4/CardStatus;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/radio/V1_4/CardStatus;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/CardStatus;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_5/CardStatus;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 61
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 62
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 63
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 62
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 68
    new-instance v3, Landroid/hardware/radio/V1_5/CardStatus;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/CardStatus;-><init>()V

    .line 69
    mul-int/lit8 v5, v1, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_5/CardStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 74
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
            "Landroid/hardware/radio/V1_5/CardStatus;",
            ">;)V"
        }
    .end annotation

    .line 103
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 105
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 106
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 107
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 108
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 109
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 110
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_5/CardStatus;

    mul-int/lit8 v5, v4, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_5/CardStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 112
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 115
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 116
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 13
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 14
    return v0

    .line 16
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 17
    return v1

    .line 19
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/CardStatus;

    if-eq v2, v3, :cond_11

    .line 20
    return v1

    .line 22
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_5/CardStatus;

    .line 23
    iget-object v2, p0, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 24
    return v1

    .line 26
    :cond_1e
    iget-object v2, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 27
    return v1

    .line 29
    :cond_29
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 34
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    .line 35
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    .line 36
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 16

    .line 79
    iget-object v2, p0, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    invoke-virtual {v2, p1, p2, v5, v6}, Landroid/hardware/radio/V1_4/CardStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 81
    const-wide/16 v5, 0x60

    add-long/2addr v5, p3

    const-wide/16 v7, 0x8

    add-long/2addr v7, v5

    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 82
    mul-int/lit8 v2, v8, 0x48

    int-to-long v9, v2

    .line 83
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v1

    add-long/2addr v5, v3

    .line 82
    const/4 v7, 0x1

    move-object v0, p1

    move-wide v3, v1

    move-wide v1, v9

    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 86
    iget-object v2, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 87
    const/4 v2, 0x0

    :goto_29
    if-ge v2, v8, :cond_3e

    .line 88
    new-instance v3, Landroid/hardware/radio/V1_5/AppStatus;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/AppStatus;-><init>()V

    .line 89
    mul-int/lit8 v4, v2, 0x48

    int-to-long v4, v4

    invoke-virtual {v3, p1, v1, v4, v5}, Landroid/hardware/radio/V1_5/AppStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 90
    iget-object v4, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 93
    :cond_3e
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 52
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 53
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/CardStatus;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 54
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, ", .applications = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 120
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CardStatus;->base:Landroid/hardware/radio/V1_4/CardStatus;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/radio/V1_4/CardStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 122
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 123
    const-wide/16 v3, 0x60

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 124
    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 125
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x48

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    nop

    :goto_27
    if-ge v5, v0, :cond_3a

    .line 127
    iget-object v4, p0, Landroid/hardware/radio/V1_5/CardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/AppStatus;

    mul-int/lit8 v6, v5, 0x48

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/radio/V1_5/AppStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 129
    :cond_3a
    add-long/2addr p2, v1

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 131
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 96
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 97
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/CardStatus;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 99
    return-void
.end method
