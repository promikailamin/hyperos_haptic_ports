.class public final Lcom/android/server/appop/AggregatedAppOpAccessEvent;
.super Ljava/lang/Record;
.source "AggregatedAppOpAccessEvent.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "uid",
        "packageName",
        "opCode",
        "deviceId",
        "attributionTag",
        "opFlags",
        "uidState",
        "attributionFlags",
        "attributionChainId",
        "accessTimeMillis",
        "durationMillis",
        "totalDurationMillis",
        "totalAccessCount",
        "totalRejectCount"
    }
    componentSignatures = {
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null
    }
    componentTypes = {
        I,
        Ljava/lang/String;,
        I,
        Ljava/lang/String;,
        Ljava/lang/String;,
        I,
        I,
        I,
        J,
        J,
        J,
        J,
        I,
        I
    }
.end annotation


# instance fields
.field public final accessTimeMillis:J

.field public final attributionChainId:J

.field public final attributionFlags:I

.field public final attributionTag:Ljava/lang/String;

.field public final deviceId:Ljava/lang/String;

.field public final durationMillis:J

.field public final opCode:I

.field public final opFlags:I

.field public final packageName:Ljava/lang/String;

.field public final totalAccessCount:I

.field public final totalDurationMillis:J

.field public final totalRejectCount:I

.field public final uid:I

.field public final uidState:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIJJJJII)V
    .registers 19

    .line 41
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid:I

    iput-object p2, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode:I

    iput-object p4, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->deviceId:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags:I

    iput p7, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState:I

    iput p8, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags:I

    iput-wide p9, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId:J

    iput-wide p11, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis:J

    iput-wide p13, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis:J

    move-wide p1, p15

    iput-wide p1, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis:J

    move/from16 p1, p17

    iput p1, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount:I

    move/from16 p1, p18

    iput p1, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalRejectCount:I

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    instance-of v0, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    if-eqz v0, :cond_70

    check-cast p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    iget v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid:I

    iget v1, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid:I

    if-ne v0, v1, :cond_70

    iget v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode:I

    iget v1, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode:I

    if-ne v0, v1, :cond_70

    iget v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags:I

    iget v1, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags:I

    if-ne v0, v1, :cond_70

    iget v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState:I

    iget v1, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState:I

    if-ne v0, v1, :cond_70

    iget v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags:I

    iget v1, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags:I

    if-ne v0, v1, :cond_70

    iget v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount:I

    iget v1, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount:I

    if-ne v0, v1, :cond_70

    iget v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalRejectCount:I

    iget v1, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalRejectCount:I

    if-ne v0, v1, :cond_70

    iget-wide v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId:J

    iget-wide v2, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_70

    iget-wide v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis:J

    iget-wide v2, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_70

    iget-wide v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis:J

    iget-wide v2, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_70

    iget-wide v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis:J

    iget-wide v2, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->deviceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->deviceId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_70

    const/4 p0, 0x1

    return p0

    :cond_70
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 16

    .line 0
    iget v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->deviceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget v12, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalRejectCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v13, 0xe

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v2, v13, v0

    const/4 v0, 0x3

    aput-object v3, v13, v0

    const/4 v0, 0x4

    aput-object v4, v13, v0

    const/4 v0, 0x5

    aput-object v5, v13, v0

    const/4 v0, 0x6

    aput-object v6, v13, v0

    const/4 v0, 0x7

    aput-object v7, v13, v0

    const/16 v0, 0x8

    aput-object v8, v13, v0

    const/16 v0, 0x9

    aput-object v9, v13, v0

    const/16 v0, 0xa

    aput-object v10, v13, v0

    const/16 v0, 0xb

    aput-object v11, v13, v0

    const/16 v0, 0xc

    aput-object v12, v13, v0

    const/16 v0, 0xd

    aput-object p0, v13, v0

    return-object v13
.end method

.method public accessTimeMillis()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis:J

    return-wide v0
.end method

.method public attributionChainId()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId:J

    return-wide v0
.end method

.method public attributionFlags()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags:I

    return p0
.end method

.method public attributionTag()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public deviceId()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public durationMillis()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 20

    move-object/from16 v0, p0

    .line 41
    iget v1, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid:I

    iget v2, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode:I

    iget v3, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags:I

    iget v4, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState:I

    iget v5, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags:I

    iget v6, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount:I

    iget v7, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalRejectCount:I

    iget-wide v8, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId:J

    iget-wide v10, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis:J

    iget-wide v12, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis:J

    iget-wide v14, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis:J

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->deviceId:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag:Ljava/lang/String;

    move-object/from16 v18, v17

    move-object/from16 v17, v1

    move/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v0

    invoke-static/range {v1 .. v18}, Lcom/android/server/appop/AggregatedAppOpAccessEvent$$ExternalSyntheticRecord0;->m(IIIIIIIJJJJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public opCode()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode:I

    return p0
.end method

.method public opFlags()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags:I

    return p0
.end method

.method public packageName()Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 41
    invoke-virtual {p0}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    const-string/jumbo v1, "uid;packageName;opCode;deviceId;attributionTag;opFlags;uidState;attributionFlags;attributionChainId;accessTimeMillis;durationMillis;totalDurationMillis;totalAccessCount;totalRejectCount"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public totalAccessCount()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount:I

    return p0
.end method

.method public totalDurationMillis()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis:J

    return-wide v0
.end method

.method public totalRejectCount()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalRejectCount:I

    return p0
.end method

.method public uid()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid:I

    return p0
.end method

.method public uidState()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState:I

    return p0
.end method
