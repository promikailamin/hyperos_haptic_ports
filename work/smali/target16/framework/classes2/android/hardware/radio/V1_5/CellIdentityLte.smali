.class public final Landroid/hardware/radio/V1_5/CellIdentityLte;
.super Ljava/lang/Object;
.source "CellIdentityLte.java"


# instance fields
.field public blacklist additionalPlmns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist bands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist base:Landroid/hardware/radio/V1_2/CellIdentityLte;

.field public blacklist optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/hardware/radio/V1_2/CellIdentityLte;

    invoke-direct {v0}, Landroid/hardware/radio/V1_2/CellIdentityLte;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/OptionalCsgInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_5/CellIdentityLte;",
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
    mul-int/lit16 v3, v2, 0xa0

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
    new-instance v3, Landroid/hardware/radio/V1_5/CellIdentityLte;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/CellIdentityLte;-><init>()V

    .line 92
    mul-int/lit16 v5, v1, 0xa0

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_5/CellIdentityLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Landroid/hardware/radio/V1_5/CellIdentityLte;",
            ">;)V"
        }
    .end annotation

    .line 146
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 148
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 149
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 150
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 151
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xa0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 152
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 153
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_5/CellIdentityLte;

    mul-int/lit16 v5, v4, 0xa0

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_5/CellIdentityLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 155
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 158
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 159
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 24
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 25
    return v0

    .line 27
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 28
    return v1

    .line 30
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/CellIdentityLte;

    if-eq v2, v3, :cond_11

    .line 31
    return v1

    .line 33
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_5/CellIdentityLte;

    .line 34
    iget-object v2, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 35
    return v1

    .line 37
    :cond_1e
    iget-object v2, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 38
    return v1

    .line 40
    :cond_29
    iget-object v2, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/CellIdentityLte;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 41
    return v1

    .line 43
    :cond_34
    iget-object v2, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 44
    return v1

    .line 46
    :cond_3f
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 51
    iget-object v0, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    .line 52
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    .line 53
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    .line 54
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

    .line 55
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 26

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    const-wide/16 v10, 0x0

    add-long v3, p3, v10

    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/hardware/radio/V1_2/CellIdentityLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 104
    const-wide/16 v2, 0x58

    add-long v2, p3, v2

    const-wide/16 v12, 0x8

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 105
    mul-int/lit8 v4, v14, 0x10

    int-to-long v4, v4

    .line 106
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 105
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v15

    .line 109
    iget-object v1, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/16 v16, 0x0

    move/from16 v1, v16

    :goto_33
    if-ge v1, v14, :cond_6d

    .line 111
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 112
    mul-int/lit8 v2, v1, 0x10

    int-to-long v3, v2

    invoke-virtual {v15, v3, v4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v3

    .line 114
    nop

    .line 115
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    .line 116
    move v6, v2

    move-object v7, v3

    move-wide v2, v4

    invoke-virtual {v15}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-int/lit8 v6, v6, 0x0

    move-wide/from16 v17, v10

    int-to-long v10, v6

    .line 114
    const/4 v8, 0x0

    move-wide/from16 v19, v10

    move-object v11, v7

    move-wide/from16 v6, v19

    move v10, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 119
    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v2, v10, 0x1

    move v1, v2

    move-wide/from16 v10, v17

    goto :goto_33

    .line 122
    :cond_6d
    move-object/from16 v1, p1

    move-wide/from16 v17, v10

    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    const-wide/16 v3, 0x68

    add-long v3, p3, v3

    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/hardware/radio/V1_5/OptionalCsgInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 124
    const-wide/16 v2, 0x90

    add-long v2, p3, v2

    add-long/2addr v12, v2

    invoke-virtual {v9, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 125
    mul-int/lit8 v4, v10, 0x4

    int-to-long v4, v4

    .line 126
    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    add-long v2, v2, v17

    .line 125
    const/4 v8, 0x1

    move-wide/from16 v19, v6

    move-wide v6, v2

    move-wide v2, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 129
    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 130
    move/from16 v2, v16

    :goto_9e
    if-ge v2, v10, :cond_b4

    .line 131
    nop

    .line 132
    mul-int/lit8 v3, v2, 0x4

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    .line 133
    iget-object v4, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 136
    :cond_b4
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 75
    const-wide/16 v0, 0xa0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 76
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 77
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ".base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ", .additionalPlmns = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", .optionalCsgInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", .bands = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->base:Landroid/hardware/radio/V1_2/CellIdentityLte;

    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    invoke-virtual {v2, v1, v5, v6}, Landroid/hardware/radio/V1_2/CellIdentityLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 165
    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 166
    const-wide/16 v5, 0x58

    add-long v5, p2, v5

    const-wide/16 v7, 0x8

    add-long v9, v5, v7

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 167
    const-wide/16 v9, 0xc

    add-long v11, v5, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 168
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v2, 0x10

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 169
    move v12, v13

    :goto_2e
    if-ge v12, v2, :cond_45

    .line 170
    mul-int/lit8 v14, v12, 0x10

    int-to-long v14, v14

    move-wide/from16 v16, v3

    iget-object v3, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->additionalPlmns:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v14, v15, v3}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 169
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v16

    goto :goto_2e

    .line 172
    :cond_45
    move-wide/from16 v16, v3

    add-long v5, v5, v16

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 174
    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->optionalCsgInfo:Landroid/hardware/radio/V1_5/OptionalCsgInfo;

    const-wide/16 v3, 0x68

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/radio/V1_5/OptionalCsgInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 176
    iget-object v2, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 177
    const-wide/16 v3, 0x90

    add-long v3, p2, v3

    add-long/2addr v7, v3

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 178
    add-long/2addr v9, v3

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 179
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x4

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 180
    nop

    :goto_6f
    if-ge v13, v2, :cond_86

    .line 181
    mul-int/lit8 v6, v13, 0x4

    int-to-long v6, v6

    iget-object v8, v0, Landroid/hardware/radio/V1_5/CellIdentityLte;->bands:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 180
    add-int/lit8 v13, v13, 0x1

    goto :goto_6f

    .line 183
    :cond_86
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 185
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 139
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 140
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/CellIdentityLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 142
    return-void
.end method
