.class public final Landroid/hardware/radio/V1_2/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"


# instance fields
.field public blacklist cdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfoCdma;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cellInfoType:I

.field public blacklist connectionStatus:I

.field public blacklist gsm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfoGsm;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist lte:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfoLte;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist registered:Z

.field public blacklist tdscdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfoTdscdma;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist timeStamp:J

.field public blacklist timeStampType:I

.field public blacklist wcdma:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfoWcdma;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    .line 12
    iput-boolean v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    .line 16
    iput v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    .line 20
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    .line 45
    iput v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

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
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 145
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 146
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 147
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 146
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 152
    new-instance v3, Landroid/hardware/radio/V1_2/CellInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/CellInfo;-><init>()V

    .line 153
    mul-int/lit8 v5, v1, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_2/CellInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 154
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 158
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
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 243
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 245
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 246
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 247
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 248
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 249
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 250
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_2/CellInfo;

    mul-int/lit8 v5, v4, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_2/CellInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 249
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 252
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 255
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 256
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 49
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 50
    return v0

    .line 52
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 53
    return v1

    .line 55
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_2/CellInfo;

    if-eq v2, v3, :cond_11

    .line 56
    return v1

    .line 58
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_2/CellInfo;

    .line 59
    iget v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    iget v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    if-eq v2, v3, :cond_1a

    .line 60
    return v1

    .line 62
    :cond_1a
    iget-boolean v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    if-eq v2, v3, :cond_21

    .line 63
    return v1

    .line 65
    :cond_21
    iget v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    iget v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    if-eq v2, v3, :cond_28

    .line 66
    return v1

    .line 68
    :cond_28
    iget-wide v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    iget-wide v4, p1, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_31

    .line 69
    return v1

    .line 71
    :cond_31
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 72
    return v1

    .line 74
    :cond_3c
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 75
    return v1

    .line 77
    :cond_47
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 78
    return v1

    .line 80
    :cond_52
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 81
    return v1

    .line 83
    :cond_5d
    iget-object v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 84
    return v1

    .line 86
    :cond_68
    iget v2, p0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    iget p1, p1, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    if-eq v2, p1, :cond_6f

    .line 87
    return v1

    .line 89
    :cond_6f
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 12

    .line 94
    iget v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    .line 99
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    .line 100
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    .line 101
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    .line 102
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    .line 103
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 94
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const-wide/16 v10, 0x0

    add-long v1, p3, v10

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    .line 164
    const-wide/16 v1, 0x4

    add-long v1, p3, v1

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    .line 165
    const-wide/16 v12, 0x8

    add-long v1, p3, v12

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    .line 166
    const-wide/16 v1, 0x10

    add-long v1, p3, v1

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    .line 168
    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    add-long v3, v1, v12

    invoke-virtual {v9, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 169
    mul-int/lit8 v3, v14, 0x60

    int-to-long v3, v3

    .line 170
    move-wide v6, v1

    move-wide v2, v3

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 169
    const/4 v8, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 173
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 174
    const/4 v15, 0x0

    move v3, v15

    :goto_4e
    if-ge v3, v14, :cond_63

    .line 175
    new-instance v4, Landroid/hardware/radio/V1_2/CellInfoGsm;

    invoke-direct {v4}, Landroid/hardware/radio/V1_2/CellInfoGsm;-><init>()V

    .line 176
    mul-int/lit8 v5, v3, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_2/CellInfoGsm;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 177
    iget-object v5, v0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 181
    :cond_63
    const-wide/16 v2, 0x28

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 182
    mul-int/lit8 v4, v14, 0x50

    int-to-long v4, v4

    .line 183
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 182
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 186
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 187
    move v3, v15

    :goto_82
    if-ge v3, v14, :cond_97

    .line 188
    new-instance v4, Landroid/hardware/radio/V1_2/CellInfoCdma;

    invoke-direct {v4}, Landroid/hardware/radio/V1_2/CellInfoCdma;-><init>()V

    .line 189
    mul-int/lit8 v5, v3, 0x50

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_2/CellInfoCdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 190
    iget-object v5, v0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 194
    :cond_97
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 195
    mul-int/lit8 v4, v14, 0x70

    int-to-long v4, v4

    .line 196
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 195
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 199
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 200
    move v3, v15

    :goto_b6
    if-ge v3, v14, :cond_cb

    .line 201
    new-instance v4, Landroid/hardware/radio/V1_2/CellInfoLte;

    invoke-direct {v4}, Landroid/hardware/radio/V1_2/CellInfoLte;-><init>()V

    .line 202
    mul-int/lit8 v5, v3, 0x70

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_2/CellInfoLte;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 203
    iget-object v5, v0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    .line 207
    :cond_cb
    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 208
    mul-int/lit8 v4, v14, 0x60

    int-to-long v4, v4

    .line 209
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 208
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 212
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 213
    move v3, v15

    :goto_ea
    if-ge v3, v14, :cond_ff

    .line 214
    new-instance v4, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    invoke-direct {v4}, Landroid/hardware/radio/V1_2/CellInfoWcdma;-><init>()V

    .line 215
    mul-int/lit8 v5, v3, 0x60

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_2/CellInfoWcdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 216
    iget-object v5, v0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_ea

    .line 220
    :cond_ff
    const-wide/16 v2, 0x58

    add-long v2, p3, v2

    add-long/2addr v12, v2

    invoke-virtual {v9, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 221
    mul-int/lit8 v4, v12, 0x68

    int-to-long v4, v4

    .line 222
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 221
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 225
    iget-object v3, v0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 226
    nop

    :goto_11d
    if-ge v15, v12, :cond_132

    .line 227
    new-instance v3, Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    invoke-direct {v3}, Landroid/hardware/radio/V1_2/CellInfoTdscdma;-><init>()V

    .line 228
    mul-int/lit8 v4, v15, 0x68

    int-to-long v4, v4

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 229
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v15, v15, 0x1

    goto :goto_11d

    .line 232
    :cond_132
    const-wide/16 v1, 0x68

    add-long v1, p3, v1

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    .line 233
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 136
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 137
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_2/CellInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 138
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ".cellInfoType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CellInfoType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", .registered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-boolean v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", .timeStampType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/TimeStampType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ", .timeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-wide v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ", .gsm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", .cdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", .lte = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ", .wcdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ", .tdscdma = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, ", .connectionStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    invoke-static {v1}, Landroid/hardware/radio/V1_2/CellConnectionStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22

    .line 260
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_2/CellInfo;->cellInfoType:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 261
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget-boolean v6, v0, Landroid/hardware/radio/V1_2/CellInfo;->registered:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 262
    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    iget v8, v0, Landroid/hardware/radio/V1_2/CellInfo;->timeStampType:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 263
    const-wide/16 v6, 0x10

    add-long v6, p2, v6

    iget-wide v8, v0, Landroid/hardware/radio/V1_2/CellInfo;->timeStamp:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 265
    iget-object v6, v0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 266
    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    add-long v9, v7, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 267
    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 268
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x60

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 269
    move v12, v13

    :goto_47
    if-ge v12, v6, :cond_5e

    .line 270
    iget-object v14, v0, Landroid/hardware/radio/V1_2/CellInfo;->gsm:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_2/CellInfoGsm;

    mul-int/lit8 v15, v12, 0x60

    move-wide/from16 v16, v2

    int-to-long v2, v15

    invoke-virtual {v14, v11, v2, v3}, Landroid/hardware/radio/V1_2/CellInfoGsm;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 269
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v16

    goto :goto_47

    .line 272
    :cond_5e
    move-wide/from16 v16, v2

    add-long v7, v7, v16

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 275
    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 276
    const-wide/16 v6, 0x28

    add-long v6, p2, v6

    add-long v11, v6, v4

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 277
    add-long v11, v6, v9

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 278
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x50

    invoke-direct {v3, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 279
    move v8, v13

    :goto_81
    if-ge v8, v2, :cond_94

    .line 280
    iget-object v11, v0, Landroid/hardware/radio/V1_2/CellInfo;->cdma:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_2/CellInfoCdma;

    mul-int/lit8 v12, v8, 0x50

    int-to-long v14, v12

    invoke-virtual {v11, v3, v14, v15}, Landroid/hardware/radio/V1_2/CellInfoCdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 279
    add-int/lit8 v8, v8, 0x1

    goto :goto_81

    .line 282
    :cond_94
    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 285
    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 286
    const-wide/16 v6, 0x38

    add-long v6, p2, v6

    add-long v11, v6, v4

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 287
    add-long v11, v6, v9

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 288
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x70

    invoke-direct {v3, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 289
    move v8, v13

    :goto_b5
    if-ge v8, v2, :cond_c8

    .line 290
    iget-object v11, v0, Landroid/hardware/radio/V1_2/CellInfo;->lte:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_2/CellInfoLte;

    mul-int/lit8 v12, v8, 0x70

    int-to-long v14, v12

    invoke-virtual {v11, v3, v14, v15}, Landroid/hardware/radio/V1_2/CellInfoLte;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 289
    add-int/lit8 v8, v8, 0x1

    goto :goto_b5

    .line 292
    :cond_c8
    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 295
    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 296
    const-wide/16 v6, 0x48

    add-long v6, p2, v6

    add-long v11, v6, v4

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 297
    add-long v11, v6, v9

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 298
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x60

    invoke-direct {v3, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 299
    move v8, v13

    :goto_e9
    if-ge v8, v2, :cond_fc

    .line 300
    iget-object v11, v0, Landroid/hardware/radio/V1_2/CellInfo;->wcdma:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_2/CellInfoWcdma;

    mul-int/lit8 v12, v8, 0x60

    int-to-long v14, v12

    invoke-virtual {v11, v3, v14, v15}, Landroid/hardware/radio/V1_2/CellInfoWcdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 299
    add-int/lit8 v8, v8, 0x1

    goto :goto_e9

    .line 302
    :cond_fc
    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 305
    iget-object v2, v0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 306
    const-wide/16 v6, 0x58

    add-long v6, p2, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 307
    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 308
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x68

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 309
    nop

    :goto_11b
    if-ge v13, v2, :cond_12e

    .line 310
    iget-object v4, v0, Landroid/hardware/radio/V1_2/CellInfo;->tdscdma:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_2/CellInfoTdscdma;

    mul-int/lit8 v5, v13, 0x68

    int-to-long v8, v5

    invoke-virtual {v4, v3, v8, v9}, Landroid/hardware/radio/V1_2/CellInfoTdscdma;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 309
    add-int/lit8 v13, v13, 0x1

    goto :goto_11b

    .line 312
    :cond_12e
    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 314
    const-wide/16 v2, 0x68

    add-long v2, p2, v2

    iget v0, v0, Landroid/hardware/radio/V1_2/CellInfo;->connectionStatus:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 315
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 236
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 237
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_2/CellInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 238
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 239
    return-void
.end method
