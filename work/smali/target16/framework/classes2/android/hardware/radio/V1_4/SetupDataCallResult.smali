.class public final Landroid/hardware/radio/V1_4/SetupDataCallResult;
.super Ljava/lang/Object;
.source "SetupDataCallResult.java"


# instance fields
.field public blacklist active:I

.field public blacklist addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cause:I

.field public blacklist cid:I

.field public blacklist dnses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist gateways:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist ifname:Ljava/lang/String;

.field public blacklist mtu:I

.field public blacklist pcscf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist suggestedRetryTime:I

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    .line 16
    iput v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    .line 20
    iput v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    .line 24
    iput v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    .line 29
    iput v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    .line 33
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    .line 60
    iput v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

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
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 166
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 167
    mul-int/lit8 v3, v2, 0x70

    int-to-long v5, v3

    .line 168
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 167
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 172
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 173
    new-instance v3, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_4/SetupDataCallResult;-><init>()V

    .line 174
    mul-int/lit8 v5, v1, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 175
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 179
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
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 283
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 285
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 286
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 287
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 288
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x70

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 289
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 290
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    mul-int/lit8 v5, v4, 0x70

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 289
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 292
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 295
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 296
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 65
    return v0

    .line 67
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 68
    return v1

    .line 70
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    if-eq v2, v3, :cond_11

    .line 71
    return v1

    .line 73
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 74
    iget v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    iget v3, p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    if-eq v2, v3, :cond_1a

    .line 75
    return v1

    .line 77
    :cond_1a
    iget v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    iget v3, p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    if-eq v2, v3, :cond_21

    .line 78
    return v1

    .line 80
    :cond_21
    iget v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    iget v3, p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    if-eq v2, v3, :cond_28

    .line 81
    return v1

    .line 83
    :cond_28
    iget v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    iget v3, p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    if-eq v2, v3, :cond_2f

    .line 84
    return v1

    .line 86
    :cond_2f
    iget v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    iget v3, p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    if-eq v2, v3, :cond_36

    .line 87
    return v1

    .line 89
    :cond_36
    iget-object v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 90
    return v1

    .line 92
    :cond_41
    iget-object v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 93
    return v1

    .line 95
    :cond_4c
    iget-object v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 96
    return v1

    .line 98
    :cond_57
    iget-object v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 99
    return v1

    .line 101
    :cond_62
    iget-object v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 102
    return v1

    .line 104
    :cond_6d
    iget v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    iget p1, p1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    if-eq v2, p1, :cond_74

    .line 105
    return v1

    .line 107
    :cond_74
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 13

    .line 112
    iget v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 118
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    .line 119
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    .line 120
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    .line 121
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    .line 122
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v0, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 30

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    .line 185
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    .line 186
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    .line 187
    const-wide/16 v6, 0xc

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    .line 188
    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    .line 189
    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 191
    iget-object v8, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 192
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 193
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v2

    .line 191
    const/16 v16, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 197
    const-wide/16 v6, 0x28

    add-long v6, p3, v6

    add-long v8, v6, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    .line 198
    mul-int/lit8 v9, v8, 0x10

    int-to-long v9, v9

    .line 199
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-long v22, v6, v2

    .line 198
    const/16 v24, 0x1

    move-object/from16 v17, p1

    move-wide/from16 v18, v9

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 202
    iget-object v7, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 203
    const/4 v7, 0x0

    move v9, v7

    :goto_7b
    if-ge v9, v8, :cond_ab

    .line 204
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .line 205
    mul-int/lit8 v10, v9, 0x10

    int-to-long v11, v10

    invoke-virtual {v6, v11, v12}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v11

    .line 207
    nop

    .line 208
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    int-to-long v12, v12

    .line 209
    invoke-virtual {v6}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-int/2addr v10, v7

    int-to-long v14, v10

    .line 207
    const/16 v24, 0x0

    move-object/from16 v17, p1

    move-wide/from16 v18, v12

    move-wide/from16 v22, v14

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 212
    iget-object v10, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b

    .line 216
    :cond_ab
    const-wide/16 v8, 0x38

    add-long v8, p3, v8

    add-long v10, v8, v4

    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 217
    mul-int/lit8 v10, v6, 0x10

    int-to-long v10, v10

    .line 218
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-long v22, v8, v2

    .line 217
    const/16 v24, 0x1

    move-object/from16 v17, p1

    move-wide/from16 v18, v10

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    .line 221
    iget-object v9, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 222
    move v9, v7

    :goto_ce
    if-ge v9, v6, :cond_fe

    .line 223
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .line 224
    mul-int/lit8 v10, v9, 0x10

    int-to-long v11, v10

    invoke-virtual {v8, v11, v12}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v11

    .line 226
    nop

    .line 227
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    int-to-long v12, v12

    .line 228
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-int/2addr v10, v7

    int-to-long v14, v10

    .line 226
    const/16 v24, 0x0

    move-object/from16 v17, p1

    move-wide/from16 v18, v12

    move-wide/from16 v22, v14

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 231
    iget-object v10, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v9, v9, 0x1

    goto :goto_ce

    .line 235
    :cond_fe
    const-wide/16 v8, 0x48

    add-long v8, p3, v8

    add-long v10, v8, v4

    invoke-virtual {v1, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    .line 236
    mul-int/lit8 v10, v6, 0x10

    int-to-long v10, v10

    .line 237
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-long v22, v8, v2

    .line 236
    const/16 v24, 0x1

    move-object/from16 v17, p1

    move-wide/from16 v18, v10

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v8

    .line 240
    iget-object v9, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 241
    move v9, v7

    :goto_121
    if-ge v9, v6, :cond_151

    .line 242
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .line 243
    mul-int/lit8 v10, v9, 0x10

    int-to-long v11, v10

    invoke-virtual {v8, v11, v12}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v11

    .line 245
    nop

    .line 246
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    int-to-long v12, v12

    .line 247
    invoke-virtual {v8}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-int/2addr v10, v7

    int-to-long v14, v10

    .line 245
    const/16 v24, 0x0

    move-object/from16 v17, p1

    move-wide/from16 v18, v12

    move-wide/from16 v22, v14

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 250
    iget-object v10, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v9, v9, 0x1

    goto :goto_121

    .line 254
    :cond_151
    const-wide/16 v8, 0x58

    add-long v8, p3, v8

    add-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 255
    mul-int/lit8 v5, v4, 0x10

    int-to-long v5, v5

    .line 256
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-long v22, v8, v2

    .line 255
    const/16 v24, 0x1

    move-object/from16 v17, p1

    move-wide/from16 v18, v5

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 259
    iget-object v3, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 260
    move v3, v7

    :goto_173
    if-ge v3, v4, :cond_1a3

    .line 261
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 262
    mul-int/lit8 v5, v3, 0x10

    int-to-long v8, v5

    invoke-virtual {v2, v8, v9}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    .line 264
    nop

    .line 265
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    .line 266
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-int/2addr v5, v7

    int-to-long v10, v5

    .line 264
    const/16 v24, 0x0

    move-object/from16 v17, p1

    move-wide/from16 v18, v8

    move-wide/from16 v22, v10

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 269
    iget-object v5, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_173

    .line 272
    :cond_1a3
    const-wide/16 v2, 0x68

    add-long v2, p3, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    .line 273
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 157
    const-wide/16 v0, 0x70

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 158
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 159
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, ".cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/DataCallFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", .suggestedRetryTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", .cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", .active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/DataConnActiveStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/PdpProtocolType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", .ifname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", .addresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ", .dnses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", .gateways = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, ", .pcscf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, ", .mtu = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget v1, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 301
    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    iget v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 302
    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    iget v8, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 303
    const-wide/16 v6, 0xc

    add-long v8, p2, v6

    iget v10, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 304
    const-wide/16 v8, 0x10

    add-long v8, p2, v8

    iget v10, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 305
    const-wide/16 v8, 0x18

    add-long v8, p2, v8

    iget-object v10, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 307
    iget-object v8, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 308
    const-wide/16 v9, 0x28

    add-long v9, p2, v9

    add-long v11, v9, v4

    invoke-virtual {v1, v11, v12, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 309
    add-long v11, v9, v6

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 310
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v8, 0x10

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 311
    move v12, v13

    :goto_57
    if-ge v12, v8, :cond_6e

    .line 312
    mul-int/lit8 v14, v12, 0x10

    int-to-long v14, v14

    move-wide/from16 v16, v2

    iget-object v2, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v14, v15, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 311
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v16

    goto :goto_57

    .line 314
    :cond_6e
    move-wide/from16 v16, v2

    add-long v9, v9, v16

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 317
    iget-object v2, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 318
    const-wide/16 v8, 0x38

    add-long v8, p2, v8

    add-long v10, v8, v4

    invoke-virtual {v1, v10, v11, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 319
    add-long v10, v8, v6

    invoke-virtual {v1, v10, v11, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 320
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v10, v2, 0x10

    invoke-direct {v3, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 321
    move v10, v13

    :goto_91
    if-ge v10, v2, :cond_a4

    .line 322
    mul-int/lit8 v11, v10, 0x10

    int-to-long v11, v11

    iget-object v14, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 321
    add-int/lit8 v10, v10, 0x1

    goto :goto_91

    .line 324
    :cond_a4
    add-long v8, v8, v16

    invoke-virtual {v1, v8, v9, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 327
    iget-object v2, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 328
    const-wide/16 v8, 0x48

    add-long v8, p2, v8

    add-long v10, v8, v4

    invoke-virtual {v1, v10, v11, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 329
    add-long v10, v8, v6

    invoke-virtual {v1, v10, v11, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 330
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v10, v2, 0x10

    invoke-direct {v3, v10}, Landroid/os/HwBlob;-><init>(I)V

    .line 331
    move v10, v13

    :goto_c5
    if-ge v10, v2, :cond_d8

    .line 332
    mul-int/lit8 v11, v10, 0x10

    int-to-long v11, v11

    iget-object v14, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 331
    add-int/lit8 v10, v10, 0x1

    goto :goto_c5

    .line 334
    :cond_d8
    add-long v8, v8, v16

    invoke-virtual {v1, v8, v9, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 337
    iget-object v2, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 338
    const-wide/16 v8, 0x58

    add-long v8, p2, v8

    add-long/2addr v4, v8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 339
    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 340
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 341
    nop

    :goto_f7
    if-ge v13, v2, :cond_10a

    .line 342
    mul-int/lit8 v4, v13, 0x10

    int-to-long v4, v4

    iget-object v6, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 341
    add-int/lit8 v13, v13, 0x1

    goto :goto_f7

    .line 344
    :cond_10a
    add-long v8, v8, v16

    invoke-virtual {v1, v8, v9, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 346
    const-wide/16 v2, 0x68

    add-long v2, p2, v2

    iget v0, v0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 347
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 276
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 277
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_4/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 278
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 279
    return-void
.end method
