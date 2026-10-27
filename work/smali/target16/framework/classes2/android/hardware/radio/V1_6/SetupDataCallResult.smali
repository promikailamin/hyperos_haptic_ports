.class public final Landroid/hardware/radio/V1_6/SetupDataCallResult;
.super Ljava/lang/Object;
.source "SetupDataCallResult.java"


# instance fields
.field public blacklist active:I

.field public blacklist addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist cause:I

.field public blacklist cid:I

.field public blacklist defaultQos:Landroid/hardware/radio/V1_6/Qos;

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

.field public blacklist handoverFailureMode:B

.field public blacklist ifname:Ljava/lang/String;

.field public blacklist mtuV4:I

.field public blacklist mtuV6:I

.field public blacklist pcscf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist pduSessionId:I

.field public blacklist qosSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/QosSession;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

.field public blacklist suggestedRetryTime:J

.field public blacklist trafficDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    .line 18
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    .line 22
    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    .line 26
    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    .line 31
    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    .line 35
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    .line 59
    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    .line 64
    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    .line 68
    new-instance v1, Landroid/hardware/radio/V1_6/Qos;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/Qos;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    .line 77
    iput-byte v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    .line 84
    iput v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    .line 89
    new-instance v0, Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_6/SetupDataCallResult;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 243
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 244
    mul-int/lit16 v3, v2, 0xd8

    int-to-long v5, v3

    .line 245
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 244
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 248
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 250
    new-instance v3, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/SetupDataCallResult;-><init>()V

    .line 251
    mul-int/lit16 v5, v1, 0xd8

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 252
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 256
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
            "Landroid/hardware/radio/V1_6/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 385
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 387
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 388
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 389
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 390
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xd8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 391
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 392
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    mul-int/lit16 v5, v4, 0xd8

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 391
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 394
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 397
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 398
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 99
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 100
    return v0

    .line 102
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 103
    return v1

    .line 105
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    if-eq v2, v3, :cond_11

    .line 106
    return v1

    .line 108
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;

    .line 109
    iget v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    iget v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    if-eq v2, v3, :cond_1a

    .line 110
    return v1

    .line 112
    :cond_1a
    iget-wide v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    iget-wide v4, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_23

    .line 113
    return v1

    .line 115
    :cond_23
    iget v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    iget v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    if-eq v2, v3, :cond_2a

    .line 116
    return v1

    .line 118
    :cond_2a
    iget v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    iget v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    if-eq v2, v3, :cond_31

    .line 119
    return v1

    .line 121
    :cond_31
    iget v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    iget v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    if-eq v2, v3, :cond_38

    .line 122
    return v1

    .line 124
    :cond_38
    iget-object v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 125
    return v1

    .line 127
    :cond_43
    iget-object v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 128
    return v1

    .line 130
    :cond_4e
    iget-object v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 131
    return v1

    .line 133
    :cond_59
    iget-object v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 134
    return v1

    .line 136
    :cond_64
    iget-object v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 137
    return v1

    .line 139
    :cond_6f
    iget v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    iget v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    if-eq v2, v3, :cond_76

    .line 140
    return v1

    .line 142
    :cond_76
    iget v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    iget v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    if-eq v2, v3, :cond_7d

    .line 143
    return v1

    .line 145
    :cond_7d
    iget-object v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    iget-object v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 146
    return v1

    .line 148
    :cond_88
    iget-object v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    .line 149
    return v1

    .line 151
    :cond_93
    iget-byte v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    iget-byte v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    if-eq v2, v3, :cond_9a

    .line 152
    return v1

    .line 154
    :cond_9a
    iget v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    iget v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    if-eq v2, v3, :cond_a1

    .line 155
    return v1

    .line 157
    :cond_a1
    iget-object v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    iget-object v3, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 158
    return v1

    .line 160
    :cond_ac
    iget-object v2, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b7

    .line 161
    return v1

    .line 163
    :cond_b7
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 21

    .line 168
    move-object/from16 v0, p0

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    .line 170
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 174
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    .line 175
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    .line 176
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    .line 177
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    .line 178
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    .line 181
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    .line 182
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-byte v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    .line 183
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    .line 185
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v0, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    .line 186
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    .line 168
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 28

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const-wide/16 v10, 0x0

    add-long v1, p3, v10

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    .line 262
    const-wide/16 v12, 0x8

    add-long v1, p3, v12

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    .line 263
    const-wide/16 v1, 0x10

    add-long v1, p3, v1

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    .line 264
    const-wide/16 v1, 0x14

    add-long v1, p3, v1

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    .line 265
    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    .line 266
    const-wide/16 v1, 0x20

    add-long v1, p3, v1

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 268
    iget-object v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 269
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    .line 270
    move-wide v6, v1

    move-wide v2, v3

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 268
    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 274
    const-wide/16 v1, 0x30

    add-long v1, p3, v1

    add-long v3, v1, v12

    invoke-virtual {v9, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 275
    mul-int/lit8 v3, v14, 0x28

    int-to-long v3, v3

    .line 276
    move-wide v6, v1

    move-wide v2, v3

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 275
    const/4 v8, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 279
    iget-object v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 280
    const/4 v15, 0x0

    move v3, v15

    :goto_79
    if-ge v3, v14, :cond_8e

    .line 281
    new-instance v4, Landroid/hardware/radio/V1_5/LinkAddress;

    invoke-direct {v4}, Landroid/hardware/radio/V1_5/LinkAddress;-><init>()V

    .line 282
    mul-int/lit8 v5, v3, 0x28

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_5/LinkAddress;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 283
    iget-object v5, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    .line 287
    :cond_8e
    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 288
    mul-int/lit8 v4, v14, 0x10

    int-to-long v4, v4

    .line 289
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 288
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 292
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 293
    move v1, v15

    :goto_ad
    if-ge v1, v14, :cond_ef

    .line 294
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 295
    mul-int/lit8 v3, v1, 0x10

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    .line 297
    nop

    .line 298
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    .line 299
    move-object v7, v2

    move v8, v3

    move-wide v2, v5

    move-object v6, v4

    invoke-virtual {v7}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-int/2addr v8, v15

    move-wide/from16 v16, v10

    int-to-long v10, v8

    .line 297
    const/4 v8, 0x0

    move-wide/from16 v18, v12

    move-object v12, v6

    move/from16 v20, v1

    move-object/from16 v1, p1

    move-wide/from16 v21, v10

    move/from16 v11, v20

    move-object v10, v7

    move-wide/from16 v6, v21

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 302
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v1, v11, 0x1

    move-object v2, v10

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    goto :goto_ad

    .line 306
    :cond_ef
    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    const-wide/16 v1, 0x50

    add-long v1, p3, v1

    add-long v12, v1, v18

    invoke-virtual {v9, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 307
    mul-int/lit8 v3, v10, 0x10

    int-to-long v3, v3

    .line 308
    move-wide v6, v1

    move-wide v2, v3

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long v6, v6, v16

    .line 307
    const/4 v8, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v11

    .line 311
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 312
    move v12, v15

    :goto_115
    if-ge v12, v10, :cond_140

    .line 313
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 314
    mul-int/lit8 v1, v12, 0x10

    int-to-long v2, v1

    invoke-virtual {v11, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v13

    .line 316
    nop

    .line 317
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    .line 318
    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-int/2addr v1, v15

    int-to-long v6, v1

    .line 316
    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 321
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v12, v12, 0x1

    goto :goto_115

    .line 325
    :cond_140
    const-wide/16 v1, 0x60

    add-long v1, p3, v1

    add-long v12, v1, v18

    invoke-virtual {v9, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 326
    mul-int/lit8 v3, v10, 0x10

    int-to-long v3, v3

    .line 327
    move-wide v6, v1

    move-wide v2, v3

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long v6, v6, v16

    .line 326
    const/4 v8, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v11

    .line 330
    iget-object v1, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 331
    move v12, v15

    :goto_162
    if-ge v12, v10, :cond_18d

    .line 332
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 333
    mul-int/lit8 v1, v12, 0x10

    int-to-long v2, v1

    invoke-virtual {v11, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v13

    .line 335
    nop

    .line 336
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    .line 337
    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-int/2addr v1, v15

    int-to-long v6, v1

    .line 335
    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 340
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v12, v12, 0x1

    goto :goto_162

    .line 343
    :cond_18d
    move-object/from16 v1, p1

    const-wide/16 v2, 0x70

    add-long v2, p3, v2

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    .line 344
    const-wide/16 v2, 0x74

    add-long v2, p3, v2

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    .line 345
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    const-wide/16 v3, 0x78

    add-long v3, p3, v3

    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/hardware/radio/V1_6/Qos;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 347
    const-wide/16 v2, 0x98

    add-long v2, p3, v2

    add-long v12, v2, v18

    invoke-virtual {v9, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 348
    mul-int/lit8 v4, v10, 0x30

    int-to-long v4, v4

    .line 349
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long v6, v6, v16

    .line 348
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 352
    iget-object v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 353
    move v3, v15

    :goto_1cc
    if-ge v3, v10, :cond_1e1

    .line 354
    new-instance v4, Landroid/hardware/radio/V1_6/QosSession;

    invoke-direct {v4}, Landroid/hardware/radio/V1_6/QosSession;-><init>()V

    .line 355
    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_6/QosSession;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 356
    iget-object v5, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v3, v3, 0x1

    goto :goto_1cc

    .line 359
    :cond_1e1
    const-wide/16 v2, 0xa8

    add-long v2, p3, v2

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    .line 360
    const-wide/16 v2, 0xac

    add-long v2, p3, v2

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    .line 361
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    const-wide/16 v3, 0xb0

    add-long v3, p3, v3

    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 363
    const-wide/16 v2, 0xc8

    add-long v2, p3, v2

    add-long v12, v2, v18

    invoke-virtual {v9, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    .line 364
    mul-int/lit8 v4, v10, 0x30

    int-to-long v4, v4

    .line 365
    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    add-long v2, v2, v16

    .line 364
    const/4 v8, 0x1

    move-wide/from16 v20, v6

    move-wide v6, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 368
    iget-object v3, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 369
    nop

    :goto_222
    if-ge v15, v10, :cond_237

    .line 370
    new-instance v3, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/TrafficDescriptor;-><init>()V

    .line 371
    mul-int/lit8 v4, v15, 0x30

    int-to-long v4, v4

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/hardware/radio/V1_6/TrafficDescriptor;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 372
    iget-object v4, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v15, v15, 0x1

    goto :goto_222

    .line 375
    :cond_237
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 234
    const-wide/16 v0, 0xd8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 235
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 236
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ".cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    invoke-static {v1}, Landroid/hardware/radio/V1_6/DataCallFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, ", .suggestedRetryTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-wide v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, ", .cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, ", .active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/DataConnActiveStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    invoke-static {v1}, Landroid/hardware/radio/V1_4/PdpProtocolType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ", .ifname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, ", .addresses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ", .dnses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ", .gateways = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", .pcscf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, ", .mtuV4 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, ", .mtuV6 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ", .defaultQos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ", .qosSessions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ", .handoverFailureMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-byte v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    invoke-static {v1}, Landroid/hardware/radio/V1_6/HandoverFailureMode;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", .pduSessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, ", .sliceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ", .trafficDescriptors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, p0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cause:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 403
    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    iget-wide v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->suggestedRetryTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 404
    const-wide/16 v6, 0x10

    add-long v6, p2, v6

    iget v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->cid:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 405
    const-wide/16 v6, 0x14

    add-long v6, p2, v6

    iget v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->active:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 406
    const-wide/16 v6, 0x18

    add-long v6, p2, v6

    iget v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->type:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 407
    const-wide/16 v6, 0x20

    add-long v6, p2, v6

    iget-object v8, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->ifname:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 409
    iget-object v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 410
    const-wide/16 v7, 0x30

    add-long v7, p2, v7

    add-long v9, v7, v4

    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 411
    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 412
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x28

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 413
    move v12, v13

    :goto_59
    if-ge v12, v6, :cond_70

    .line 414
    iget-object v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_5/LinkAddress;

    mul-int/lit8 v15, v12, 0x28

    move-wide/from16 v16, v2

    int-to-long v2, v15

    invoke-virtual {v14, v11, v2, v3}, Landroid/hardware/radio/V1_5/LinkAddress;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 413
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v16

    goto :goto_59

    .line 416
    :cond_70
    move-wide/from16 v16, v2

    add-long v7, v7, v16

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 419
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 420
    const-wide/16 v6, 0x40

    add-long v6, p2, v6

    add-long v11, v6, v4

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 421
    add-long v11, v6, v9

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 422
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x10

    invoke-direct {v3, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 423
    move v8, v13

    :goto_93
    if-ge v8, v2, :cond_a6

    .line 424
    mul-int/lit8 v11, v8, 0x10

    int-to-long v11, v11

    iget-object v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 423
    add-int/lit8 v8, v8, 0x1

    goto :goto_93

    .line 426
    :cond_a6
    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 429
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 430
    const-wide/16 v6, 0x50

    add-long v6, p2, v6

    add-long v11, v6, v4

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 431
    add-long v11, v6, v9

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 432
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x10

    invoke-direct {v3, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 433
    move v8, v13

    :goto_c7
    if-ge v8, v2, :cond_da

    .line 434
    mul-int/lit8 v11, v8, 0x10

    int-to-long v11, v11

    iget-object v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 433
    add-int/lit8 v8, v8, 0x1

    goto :goto_c7

    .line 436
    :cond_da
    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 439
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 440
    const-wide/16 v6, 0x60

    add-long v6, p2, v6

    add-long v11, v6, v4

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 441
    add-long v11, v6, v9

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 442
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x10

    invoke-direct {v3, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 443
    move v8, v13

    :goto_fb
    if-ge v8, v2, :cond_10e

    .line 444
    mul-int/lit8 v11, v8, 0x10

    int-to-long v11, v11

    iget-object v14, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v11, v12, v14}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 443
    add-int/lit8 v8, v8, 0x1

    goto :goto_fb

    .line 446
    :cond_10e
    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 448
    const-wide/16 v2, 0x70

    add-long v2, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV4:I

    invoke-virtual {v1, v2, v3, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 449
    const-wide/16 v2, 0x74

    add-long v2, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->mtuV6:I

    invoke-virtual {v1, v2, v3, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 450
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->defaultQos:Landroid/hardware/radio/V1_6/Qos;

    const-wide/16 v6, 0x78

    add-long v6, p2, v6

    invoke-virtual {v2, v1, v6, v7}, Landroid/hardware/radio/V1_6/Qos;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 452
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 453
    const-wide/16 v6, 0x98

    add-long v6, p2, v6

    add-long v11, v6, v4

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 454
    add-long v11, v6, v9

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 455
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x30

    invoke-direct {v3, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 456
    move v8, v13

    :goto_14a
    if-ge v8, v2, :cond_15d

    .line 457
    iget-object v11, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->qosSessions:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_6/QosSession;

    mul-int/lit8 v12, v8, 0x30

    int-to-long v14, v12

    invoke-virtual {v11, v3, v14, v15}, Landroid/hardware/radio/V1_6/QosSession;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 456
    add-int/lit8 v8, v8, 0x1

    goto :goto_14a

    .line 459
    :cond_15d
    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 461
    const-wide/16 v2, 0xa8

    add-long v2, p2, v2

    iget-byte v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->handoverFailureMode:B

    invoke-virtual {v1, v2, v3, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 462
    const-wide/16 v2, 0xac

    add-long v2, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->pduSessionId:I

    invoke-virtual {v1, v2, v3, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 463
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->sliceInfo:Landroid/hardware/radio/V1_6/OptionalSliceInfo;

    const-wide/16 v6, 0xb0

    add-long v6, p2, v6

    invoke-virtual {v2, v1, v6, v7}, Landroid/hardware/radio/V1_6/OptionalSliceInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 465
    iget-object v2, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 466
    const-wide/16 v6, 0xc8

    add-long v6, p2, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 467
    add-long/2addr v9, v6

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 468
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x30

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 469
    nop

    :goto_197
    if-ge v13, v2, :cond_1aa

    .line 470
    iget-object v4, v0, Landroid/hardware/radio/V1_6/SetupDataCallResult;->trafficDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_6/TrafficDescriptor;

    mul-int/lit8 v5, v13, 0x30

    int-to-long v8, v5

    invoke-virtual {v4, v3, v8, v9}, Landroid/hardware/radio/V1_6/TrafficDescriptor;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 469
    add-int/lit8 v13, v13, 0x1

    goto :goto_197

    .line 472
    :cond_1aa
    add-long v6, v6, v16

    invoke-virtual {v1, v6, v7, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 474
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 378
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xd8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 379
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_6/SetupDataCallResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 380
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 381
    return-void
.end method
