.class public final Landroid/hardware/contexthub/V1_2/HubAppInfo;
.super Ljava/lang/Object;
.source "HubAppInfo.java"


# instance fields
.field public blacklist info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

.field public blacklist permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/HubAppInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

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
            "Landroid/hardware/contexthub/V1_2/HubAppInfo;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 69
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 70
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 71
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 70
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 76
    new-instance v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    invoke-direct {v3}, Landroid/hardware/contexthub/V1_2/HubAppInfo;-><init>()V

    .line 77
    mul-int/lit8 v5, v1, 0x38

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/contexthub/V1_2/HubAppInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 78
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 82
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
            "Landroid/hardware/contexthub/V1_2/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 120
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 121
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 122
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 123
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 124
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    mul-int/lit8 v5, v4, 0x38

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/contexthub/V1_2/HubAppInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 126
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 129
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 130
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 21
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 22
    return v0

    .line 24
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 25
    return v1

    .line 27
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    if-eq v2, v3, :cond_11

    .line 28
    return v1

    .line 30
    :cond_11
    check-cast p1, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    .line 31
    iget-object v2, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget-object v3, p1, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 32
    return v1

    .line 34
    :cond_1e
    iget-object v2, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 35
    return v1

    .line 37
    :cond_29
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 42
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 43
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    .line 44
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 19

    .line 87
    move-object/from16 v0, p2

    iget-object v1, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    move-object v6, p1

    invoke-virtual {v1, p1, v0, v4, v5}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 89
    const-wide/16 v4, 0x28

    add-long v4, p3, v4

    const-wide/16 v7, 0x8

    add-long/2addr v7, v4

    invoke-virtual {v0, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    .line 90
    mul-int/lit8 v7, v1, 0x10

    int-to-long v7, v7

    .line 91
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-long v11, v4, v2

    .line 90
    const/4 v13, 0x1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v0

    .line 94
    iget-object v2, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 95
    const/4 v2, 0x0

    move v3, v2

    :goto_2c
    if-ge v3, v1, :cond_56

    .line 96
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 97
    mul-int/lit8 v4, v3, 0x10

    int-to-long v5, v4

    invoke-virtual {v0, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    .line 99
    nop

    .line 100
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v7, v6

    .line 101
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v9

    add-int/2addr v4, v2

    int-to-long v11, v4

    .line 99
    const/4 v13, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 104
    iget-object v4, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 107
    :cond_56
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 60
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 61
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/contexthub/V1_2/HubAppInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 62
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ".info_1_0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", .permissions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 134
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 136
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 137
    const-wide/16 v3, 0x28

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 138
    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 139
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 140
    nop

    :goto_27
    if-ge v5, v0, :cond_3a

    .line 141
    mul-int/lit8 v4, v5, 0x10

    int-to-long v6, v4

    iget-object v4, p0, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 140
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 143
    :cond_3a
    add-long/2addr p2, v1

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 145
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 110
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 111
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/contexthub/V1_2/HubAppInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 113
    return-void
.end method
