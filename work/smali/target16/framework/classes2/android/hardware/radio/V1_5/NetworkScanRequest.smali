.class public final Landroid/hardware/radio/V1_5/NetworkScanRequest;
.super Ljava/lang/Object;
.source "NetworkScanRequest.java"


# instance fields
.field public blacklist incrementalResults:Z

.field public blacklist incrementalResultsPeriodicity:I

.field public blacklist interval:I

.field public blacklist maxSearchTime:I

.field public blacklist mccMncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist specifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    .line 12
    iput v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    .line 23
    iput v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    .line 30
    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    .line 38
    iput v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_5/NetworkScanRequest;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 128
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 129
    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 130
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 129
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 135
    new-instance v3, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    invoke-direct {v3}, Landroid/hardware/radio/V1_5/NetworkScanRequest;-><init>()V

    .line 136
    mul-int/lit8 v5, v1, 0x38

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 137
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 141
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
            "Landroid/hardware/radio/V1_5/NetworkScanRequest;",
            ">;)V"
        }
    .end annotation

    .line 193
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 195
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 196
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 197
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 198
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 199
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 200
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    mul-int/lit8 v5, v4, 0x38

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 202
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 205
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 206
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 50
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 51
    return v0

    .line 53
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 54
    return v1

    .line 56
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    if-eq v2, v3, :cond_11

    .line 57
    return v1

    .line 59
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_5/NetworkScanRequest;

    .line 60
    iget v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    iget v3, p1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    if-eq v2, v3, :cond_1a

    .line 61
    return v1

    .line 63
    :cond_1a
    iget v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    iget v3, p1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    if-eq v2, v3, :cond_21

    .line 64
    return v1

    .line 66
    :cond_21
    iget-object v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 67
    return v1

    .line 69
    :cond_2c
    iget v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    iget v3, p1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    if-eq v2, v3, :cond_33

    .line 70
    return v1

    .line 72
    :cond_33
    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    if-eq v2, v3, :cond_3a

    .line 73
    return v1

    .line 75
    :cond_3a
    iget v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    iget v3, p1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    if-eq v2, v3, :cond_41

    .line 76
    return v1

    .line 78
    :cond_41
    iget-object v2, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    .line 79
    return v1

    .line 81
    :cond_4c
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 86
    iget v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    .line 89
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    .line 91
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    .line 93
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 23

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    .line 147
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    .line 149
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long v8, v6, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 150
    mul-int/lit8 v9, v8, 0x30

    int-to-long v11, v9

    .line 151
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v6, v2

    .line 150
    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 154
    iget-object v7, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 155
    const/4 v7, 0x0

    move v9, v7

    :goto_3a
    if-ge v9, v8, :cond_51

    .line 156
    new-instance v10, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    invoke-direct {v10}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;-><init>()V

    .line 157
    mul-int/lit8 v11, v9, 0x30

    int-to-long v11, v11

    move-object/from16 v13, p1

    invoke-virtual {v10, v13, v6, v11, v12}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 158
    iget-object v11, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    .line 161
    :cond_51
    move-object/from16 v13, p1

    const-wide/16 v8, 0x18

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    .line 162
    const-wide/16 v8, 0x1c

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    .line 163
    const-wide/16 v8, 0x20

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    .line 165
    const-wide/16 v8, 0x28

    add-long v8, p3, v8

    add-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 166
    mul-int/lit8 v5, v4, 0x10

    int-to-long v10, v5

    .line 167
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v14, v8, v2

    .line 166
    const/16 v16, 0x1

    move-object v9, v13

    move-wide v12, v5

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 170
    iget-object v2, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 171
    move v2, v7

    :goto_91
    if-ge v2, v4, :cond_bd

    .line 172
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 173
    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v5

    .line 175
    nop

    .line 176
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v10, v6

    .line 177
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-int/2addr v3, v7

    int-to-long v14, v3

    .line 175
    const/16 v16, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 180
    iget-object v3, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 183
    :cond_bd
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 119
    const-wide/16 v0, 0x38

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 120
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 121
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    invoke-static {v1}, Landroid/hardware/radio/V1_1/ScanType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", .interval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", .specifiers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", .maxSearchTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", .incrementalResults = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ", .incrementalResultsPeriodicity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", .mccMncs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->type:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 211
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget v6, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->interval:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 213
    iget-object v4, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 214
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long v9, v7, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 215
    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 216
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x30

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 217
    move v12, v13

    :goto_35
    if-ge v12, v4, :cond_4c

    .line 218
    iget-object v14, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->specifiers:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    mul-int/lit8 v15, v12, 0x30

    move-wide/from16 v16, v2

    int-to-long v2, v15

    invoke-virtual {v14, v11, v2, v3}, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 217
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v16

    goto :goto_35

    .line 220
    :cond_4c
    move-wide/from16 v16, v2

    add-long v7, v7, v16

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 222
    const-wide/16 v2, 0x18

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->maxSearchTime:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 223
    const-wide/16 v2, 0x1c

    add-long v2, p2, v2

    iget-boolean v4, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResults:Z

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 224
    const-wide/16 v2, 0x20

    add-long v2, p2, v2

    iget v4, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->incrementalResultsPeriodicity:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 226
    iget-object v2, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 227
    const-wide/16 v3, 0x28

    add-long v3, p2, v3

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 228
    add-long/2addr v9, v3

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 229
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 230
    nop

    :goto_88
    if-ge v13, v2, :cond_9b

    .line 231
    mul-int/lit8 v6, v13, 0x10

    int-to-long v6, v6

    iget-object v8, v0, Landroid/hardware/radio/V1_5/NetworkScanRequest;->mccMncs:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 230
    add-int/lit8 v13, v13, 0x1

    goto :goto_88

    .line 233
    :cond_9b
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 235
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 186
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 187
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/NetworkScanRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 189
    return-void
.end method
