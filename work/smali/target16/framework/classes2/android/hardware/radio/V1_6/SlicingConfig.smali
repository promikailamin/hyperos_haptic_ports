.class public final Landroid/hardware/radio/V1_6/SlicingConfig;
.super Ljava/lang/Object;
.source "SlicingConfig.java"


# instance fields
.field public blacklist sliceInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/SliceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist urspRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/UrspRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_6/SlicingConfig;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 65
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 66
    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 67
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 66
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 72
    new-instance v3, Landroid/hardware/radio/V1_6/SlicingConfig;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/SlicingConfig;-><init>()V

    .line 73
    mul-int/lit8 v5, v1, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_6/SlicingConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 78
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
            "Landroid/hardware/radio/V1_6/SlicingConfig;",
            ">;)V"
        }
    .end annotation

    .line 119
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 122
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 123
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 124
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 125
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 126
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_6/SlicingConfig;

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_6/SlicingConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 125
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 128
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 131
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 132
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 17
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 18
    return v0

    .line 20
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 21
    return v1

    .line 23
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/SlicingConfig;

    if-eq v2, v3, :cond_11

    .line 24
    return v1

    .line 26
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_6/SlicingConfig;

    .line 27
    iget-object v2, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 28
    return v1

    .line 30
    :cond_1e
    iget-object v2, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 31
    return v1

    .line 33
    :cond_29
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 38
    iget-object v0, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    .line 39
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

    .line 40
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 23

    .line 84
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const-wide/16 v10, 0x0

    add-long v1, p3, v10

    const-wide/16 v12, 0x8

    add-long v3, v1, v12

    invoke-virtual {v9, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 85
    mul-int/lit8 v3, v14, 0x28

    int-to-long v3, v3

    .line 86
    move-wide v6, v1

    move-wide v2, v3

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 85
    const/4 v8, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 89
    iget-object v3, v0, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 90
    const/4 v15, 0x0

    move v3, v15

    :goto_28
    if-ge v3, v14, :cond_3d

    .line 91
    new-instance v4, Landroid/hardware/radio/V1_6/UrspRule;

    invoke-direct {v4}, Landroid/hardware/radio/V1_6/UrspRule;-><init>()V

    .line 92
    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_6/UrspRule;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
    iget-object v5, v0, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 97
    :cond_3d
    const-wide/16 v2, 0x10

    add-long v2, p3, v2

    add-long/2addr v12, v2

    invoke-virtual {v9, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 98
    mul-int/lit8 v4, v12, 0x14

    int-to-long v4, v4

    .line 99
    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    add-long/2addr v2, v10

    .line 98
    const/4 v8, 0x1

    move-wide/from16 v16, v6

    move-wide v6, v2

    move-wide v2, v4

    move-wide/from16 v4, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 102
    iget-object v3, v0, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 103
    nop

    :goto_5f
    if-ge v15, v12, :cond_74

    .line 104
    new-instance v3, Landroid/hardware/radio/V1_6/SliceInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/SliceInfo;-><init>()V

    .line 105
    mul-int/lit8 v4, v15, 0x14

    int-to-long v4, v4

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/hardware/radio/V1_6/SliceInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 106
    iget-object v4, v0, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v15, v15, 0x1

    goto :goto_5f

    .line 109
    :cond_74
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 56
    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 57
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/SlicingConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 58
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ".urspRules = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", .sliceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22

    .line 137
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 138
    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long v9, v5, v7

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 139
    const-wide/16 v9, 0xc

    add-long v11, v5, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 140
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v2, 0x28

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 141
    move v12, v13

    :goto_25
    if-ge v12, v2, :cond_3c

    .line 142
    iget-object v14, v0, Landroid/hardware/radio/V1_6/SlicingConfig;->urspRules:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_6/UrspRule;

    mul-int/lit8 v15, v12, 0x28

    move-wide/from16 v16, v3

    int-to-long v3, v15

    invoke-virtual {v14, v11, v3, v4}, Landroid/hardware/radio/V1_6/UrspRule;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 141
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v16

    goto :goto_25

    .line 144
    :cond_3c
    move-wide/from16 v16, v3

    add-long v5, v5, v16

    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 147
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 148
    const-wide/16 v3, 0x10

    add-long v3, p2, v3

    add-long/2addr v7, v3

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 149
    add-long/2addr v9, v3

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 150
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x14

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 151
    nop

    :goto_5d
    if-ge v13, v2, :cond_70

    .line 152
    iget-object v6, v0, Landroid/hardware/radio/V1_6/SlicingConfig;->sliceInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_6/SliceInfo;

    mul-int/lit8 v7, v13, 0x14

    int-to-long v7, v7

    invoke-virtual {v6, v5, v7, v8}, Landroid/hardware/radio/V1_6/SliceInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 151
    add-int/lit8 v13, v13, 0x1

    goto :goto_5d

    .line 154
    :cond_70
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 156
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 112
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 113
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/SlicingConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 115
    return-void
.end method
