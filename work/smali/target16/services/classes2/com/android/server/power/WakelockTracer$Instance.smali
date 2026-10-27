.class public Lcom/android/server/power/WakelockTracer$Instance;
.super Landroid/tracing/perfetto/DataSourceInstance;
.source "WakelockTracer.java"


# instance fields
.field public final mConfig:Lcom/android/server/power/WakelockTracer$InstanceConfig;

.field public mEvents:Ljava/util/ArrayList;

.field public mHasPendingWrite:Z

.field public final mParent:Lcom/android/server/power/WakelockTracer;


# direct methods
.method public static synthetic $r8$lambda$6trD05KGWeQKOlR9-UGR7ysC1No(Lcom/android/server/power/WakelockTracer$Instance;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/WakelockTracer$Instance;->lambda$scheduleWrite$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XBbKylGABi8hw4-V8yGquxIc85k(JLjava/util/ArrayList;Lcom/android/server/power/WakelockTracer$WakelockEvent;)Z
    .registers 6

    .line 220
    invoke-static {p3}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->-$$Nest$fgetacquired(Lcom/android/server/power/WakelockTracer$WakelockEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p3}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->-$$Nest$fgettimestampNs(Lcom/android/server/power/WakelockTracer$WakelockEvent;)J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    if-eqz p0, :cond_17

    .line 221
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    return p0
.end method

.method public constructor <init>(Lcom/android/server/power/WakelockTracer;ILandroid/util/proto/ProtoInputStream;)V
    .registers 4

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/tracing/perfetto/DataSourceInstance;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    .line 162
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/WakelockTracer$Instance;->mEvents:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 163
    iput-boolean p2, p0, Lcom/android/server/power/WakelockTracer$Instance;->mHasPendingWrite:Z

    .line 167
    invoke-static {p3}, Lcom/android/server/power/WakelockTracer$Instance;->parseConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/power/WakelockTracer$InstanceConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/power/WakelockTracer$Instance;->mConfig:Lcom/android/server/power/WakelockTracer$InstanceConfig;

    .line 168
    iput-object p1, p0, Lcom/android/server/power/WakelockTracer$Instance;->mParent:Lcom/android/server/power/WakelockTracer;

    return-void
.end method

.method public static encodeTs(Lcom/android/server/power/WakelockTracer$WakelockEvent;J)J
    .registers 5

    .line 249
    invoke-static {p0}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->-$$Nest$fgettimestampNs(Lcom/android/server/power/WakelockTracer$WakelockEvent;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    const/4 p1, 0x1

    shl-long p1, v0, p1

    invoke-static {p0}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->-$$Nest$fgetacquired(Lcom/android/server/power/WakelockTracer$WakelockEvent;)Z

    move-result p0

    int-to-long v0, p0

    or-long p0, p1, v0

    return-wide p0
.end method

.method public static pairsWith(Lcom/android/server/power/WakelockTracer$WakelockEvent;Lcom/android/server/power/WakelockTracer$WakelockEvent;)Z
    .registers 4

    .line 245
    invoke-static {p0}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->-$$Nest$fgetacquired(Lcom/android/server/power/WakelockTracer$WakelockEvent;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->-$$Nest$fgetacquired(Lcom/android/server/power/WakelockTracer$WakelockEvent;)Z

    move-result v1

    if-eq v0, v1, :cond_1a

    invoke-static {p0}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->-$$Nest$fgetlock(Lcom/android/server/power/WakelockTracer$WakelockEvent;)Lcom/android/server/power/WakelockTracer$Wakelock;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->-$$Nest$fgetlock(Lcom/android/server/power/WakelockTracer$WakelockEvent;)Lcom/android/server/power/WakelockTracer$Wakelock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakelockTracer$Wakelock;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static parseConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/power/WakelockTracer$InstanceConfig;
    .registers 11

    .line 258
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x1388

    if-eq v0, v1, :cond_54

    .line 259
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const/16 v4, 0x87

    if-ne v0, v4, :cond_0

    const-wide v4, 0x10b00000087L

    .line 260
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    move v0, v2

    .line 261
    :goto_1c
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v6

    if-eq v6, v1, :cond_4e

    .line 262
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_44

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3a

    const/4 v7, 0x3

    if-eq v6, v7, :cond_30

    goto :goto_1c

    :cond_30
    const-wide v6, 0x10800000003L

    .line 270
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v2

    goto :goto_1c

    :cond_3a
    const-wide v6, 0x10500000002L

    .line 264
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_1c

    :cond_44
    const-wide v6, 0x10500000001L

    .line 267
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    goto :goto_1c

    .line 274
    :cond_4e
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_51} :catch_69
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_51} :catch_5f

    move v8, v2

    move v2, v0

    goto :goto_55

    :cond_54
    move v8, v2

    .line 284
    :goto_55
    new-instance p0, Lcom/android/server/power/WakelockTracer$InstanceConfig;

    int-to-long v4, v2

    int-to-long v6, v3

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/power/WakelockTracer$InstanceConfig;-><init>(JJZLcom/android/server/power/WakelockTracer-IA;)V

    return-object v3

    :catch_5f
    move-exception v0

    move-object p0, v0

    .line 281
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to parse Wakelock DataSource config"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_69
    move-exception v0

    move-object p0, v0

    .line 279
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to read Wakelock DataSource config"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static writeToPacket(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/power/WakelockTracer$IncrementalState;Ljava/util/ArrayList;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 289
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    return-void

    :cond_d
    const/4 v3, 0x0

    .line 292
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/WakelockTracer$WakelockEvent;

    invoke-static {v4}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->-$$Nest$fgettimestampNs(Lcom/android/server/power/WakelockTracer$WakelockEvent;)J

    move-result-wide v4

    const-wide v6, 0x10400000008L

    .line 294
    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 297
    iget-object v6, v1, Lcom/android/server/power/WakelockTracer$IncrementalState;->iids:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2b

    move v6, v7

    goto :goto_2c

    :cond_2b
    const/4 v6, 0x2

    :goto_2c
    const-wide v8, 0x10d0000000dL

    .line 295
    invoke-virtual {v0, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 301
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 302
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [J

    const-wide v9, 0x10b0000000cL

    .line 303
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 304
    :goto_49
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_f2

    .line 305
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/WakelockTracer$WakelockEvent;

    .line 306
    invoke-static {v11}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->-$$Nest$fgetlock(Lcom/android/server/power/WakelockTracer$WakelockEvent;)Lcom/android/server/power/WakelockTracer$Wakelock;

    move-result-object v12

    .line 308
    iget-object v13, v1, Lcom/android/server/power/WakelockTracer$IncrementalState;->iids:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-nez v13, :cond_d9

    .line 310
    iget-object v13, v1, Lcom/android/server/power/WakelockTracer$IncrementalState;->iids:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    add-int/2addr v13, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 311
    iget-object v15, v1, Lcom/android/server/power/WakelockTracer$IncrementalState;->iids:Ljava/util/Map;

    invoke-interface {v15, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v8

    const-wide v7, 0x20b0000002aL

    .line 312
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v1, 0x10500000001L

    .line 313
    invoke-virtual {v0, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10900000002L

    .line 314
    invoke-static {v12}, Lcom/android/server/power/WakelockTracer$Wakelock;->-$$Nest$fgettag(Lcom/android/server/power/WakelockTracer$Wakelock;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10500000003L

    .line 315
    invoke-static {v12}, Lcom/android/server/power/WakelockTracer$Wakelock;->-$$Nest$fgetflags(Lcom/android/server/power/WakelockTracer$Wakelock;)I

    move-result v13

    invoke-virtual {v0, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 316
    invoke-static {v12}, Lcom/android/server/power/WakelockTracer$Wakelock;->-$$Nest$fgetownerPid(Lcom/android/server/power/WakelockTracer$Wakelock;)I

    move-result v1

    if-ltz v1, :cond_b0

    const-wide v1, 0x10500000004L

    invoke-static {v12}, Lcom/android/server/power/WakelockTracer$Wakelock;->-$$Nest$fgetownerPid(Lcom/android/server/power/WakelockTracer$Wakelock;)I

    move-result v13

    invoke-virtual {v0, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 317
    :cond_b0
    invoke-static {v12}, Lcom/android/server/power/WakelockTracer$Wakelock;->-$$Nest$fgetownerUid(Lcom/android/server/power/WakelockTracer$Wakelock;)I

    move-result v1

    if-ltz v1, :cond_c2

    const-wide v1, 0x10500000005L

    invoke-static {v12}, Lcom/android/server/power/WakelockTracer$Wakelock;->-$$Nest$fgetownerUid(Lcom/android/server/power/WakelockTracer$Wakelock;)I

    move-result v13

    invoke-virtual {v0, v1, v2, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 318
    :cond_c2
    invoke-static {v12}, Lcom/android/server/power/WakelockTracer$Wakelock;->-$$Nest$fgetworkUid(Lcom/android/server/power/WakelockTracer$Wakelock;)I

    move-result v1

    if-ltz v1, :cond_d4

    const-wide v1, 0x10500000006L

    invoke-static {v12}, Lcom/android/server/power/WakelockTracer$Wakelock;->-$$Nest$fgetworkUid(Lcom/android/server/power/WakelockTracer$Wakelock;)I

    move-result v12

    invoke-virtual {v0, v1, v2, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 319
    :cond_d4
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object v13, v14

    goto :goto_db

    :cond_d9
    move-object/from16 v16, v8

    .line 322
    :goto_db
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v6, v3

    .line 323
    invoke-static {v11, v4, v5}, Lcom/android/server/power/WakelockTracer$Instance;->encodeTs(Lcom/android/server/power/WakelockTracer$WakelockEvent;J)J

    move-result-wide v1

    aput-wide v1, v16, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, v16

    const/4 v7, 0x1

    goto/16 :goto_49

    :cond_f2
    move-object/from16 v16, v8

    .line 325
    invoke-virtual {v0, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v1, 0x10b00000074L

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x50d00000001L

    .line 328
    invoke-virtual {v0, v3, v4, v6}, Landroid/util/proto/ProtoOutputStream;->writePackedUInt32(J[I)V

    const-wide v3, 0x50400000002L

    move-object/from16 v5, v16

    .line 329
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->writePackedUInt64(J[J)V

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$scheduleWrite$1()V
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/android/server/power/WakelockTracer$Instance;->mParent:Lcom/android/server/power/WakelockTracer;

    invoke-static {v0, p0}, Lcom/android/server/power/WakelockTracer;->-$$Nest$mwriteInstance(Lcom/android/server/power/WakelockTracer;Lcom/android/server/power/WakelockTracer$Instance;)V

    return-void
.end method

.method public onFlush(Landroid/tracing/perfetto/FlushCallbackArguments;)V
    .registers 2

    .line 173
    iget-object p1, p0, Lcom/android/server/power/WakelockTracer$Instance;->mParent:Lcom/android/server/power/WakelockTracer;

    invoke-static {p1, p0}, Lcom/android/server/power/WakelockTracer;->-$$Nest$mwriteInstance(Lcom/android/server/power/WakelockTracer;Lcom/android/server/power/WakelockTracer$Instance;)V

    return-void
.end method

.method public onWakelockEvent(ZLjava/lang/String;IIILandroid/os/WorkSource;J)V
    .registers 23

    .line 185
    iget-object v0, p0, Lcom/android/server/power/WakelockTracer$Instance;->mConfig:Lcom/android/server/power/WakelockTracer$InstanceConfig;

    invoke-static {v0}, Lcom/android/server/power/WakelockTracer$InstanceConfig;->-$$Nest$fgetdropPid(Lcom/android/server/power/WakelockTracer$InstanceConfig;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_b

    move v5, v1

    goto :goto_d

    :cond_b
    move/from16 v5, p4

    :goto_d
    if-nez p6, :cond_11

    :goto_f
    move v7, v1

    goto :goto_16

    .line 186
    :cond_11
    invoke-virtual/range {p6 .. p6}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v1

    goto :goto_f

    .line 187
    :goto_16
    new-instance v9, Lcom/android/server/power/WakelockTracer$Wakelock;

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p5

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/WakelockTracer$Wakelock;-><init>(Ljava/lang/String;IIIILcom/android/server/power/WakelockTracer-IA;)V

    .line 188
    new-instance v8, Lcom/android/server/power/WakelockTracer$WakelockEvent;

    const/4 v13, 0x0

    move v10, p1

    move-wide/from16 v11, p7

    invoke-direct/range {v8 .. v13}, Lcom/android/server/power/WakelockTracer$WakelockEvent;-><init>(Lcom/android/server/power/WakelockTracer$Wakelock;ZJLcom/android/server/power/WakelockTracer-IA;)V

    if-nez p1, :cond_64

    .line 196
    iget-object v0, p0, Lcom/android/server/power/WakelockTracer$Instance;->mConfig:Lcom/android/server/power/WakelockTracer$InstanceConfig;

    invoke-static {v0}, Lcom/android/server/power/WakelockTracer$InstanceConfig;->-$$Nest$fgetthresholdMs(Lcom/android/server/power/WakelockTracer$InstanceConfig;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    sub-long v0, p7, v0

    .line 197
    iget-object v2, p0, Lcom/android/server/power/WakelockTracer$Instance;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_42
    if-ltz v2, :cond_64

    .line 198
    iget-object v3, p0, Lcom/android/server/power/WakelockTracer$Instance;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/WakelockTracer$WakelockEvent;

    .line 199
    invoke-static {v3}, Lcom/android/server/power/WakelockTracer$WakelockEvent;->-$$Nest$fgettimestampNs(Lcom/android/server/power/WakelockTracer$WakelockEvent;)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_55

    goto :goto_64

    .line 200
    :cond_55
    invoke-static {v3, v8}, Lcom/android/server/power/WakelockTracer$Instance;->pairsWith(Lcom/android/server/power/WakelockTracer$WakelockEvent;Lcom/android/server/power/WakelockTracer$WakelockEvent;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 201
    iget-object p0, p0, Lcom/android/server/power/WakelockTracer$Instance;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_61
    add-int/lit8 v2, v2, -0x1

    goto :goto_42

    .line 207
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/android/server/power/WakelockTracer$Instance;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/server/power/WakelockTracer$Instance;->scheduleWrite()V

    return-void
.end method

.method public final scheduleWrite()V
    .registers 5

    .line 234
    iget-boolean v0, p0, Lcom/android/server/power/WakelockTracer$Instance;->mHasPendingWrite:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/android/server/power/WakelockTracer$Instance;->mHasPendingWrite:Z

    .line 236
    iget-object v0, p0, Lcom/android/server/power/WakelockTracer$Instance;->mParent:Lcom/android/server/power/WakelockTracer;

    invoke-static {v0}, Lcom/android/server/power/WakelockTracer;->-$$Nest$fgetmHandler(Lcom/android/server/power/WakelockTracer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/WakelockTracer$Instance$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/power/WakelockTracer$Instance$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/WakelockTracer$Instance;)V

    iget-object p0, p0, Lcom/android/server/power/WakelockTracer$Instance;->mConfig:Lcom/android/server/power/WakelockTracer$InstanceConfig;

    invoke-static {p0}, Lcom/android/server/power/WakelockTracer$InstanceConfig;->-$$Nest$fgetdelayMs(Lcom/android/server/power/WakelockTracer$InstanceConfig;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method public write(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/power/WakelockTracer$IncrementalState;J)V
    .registers 10

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/android/server/power/WakelockTracer$Instance;->mConfig:Lcom/android/server/power/WakelockTracer$InstanceConfig;

    invoke-static {v1}, Lcom/android/server/power/WakelockTracer$InstanceConfig;->-$$Nest$fgetthresholdMs(Lcom/android/server/power/WakelockTracer$InstanceConfig;)J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    sub-long/2addr p3, v1

    .line 219
    iget-object v1, p0, Lcom/android/server/power/WakelockTracer$Instance;->mEvents:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/power/WakelockTracer$Instance$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3, p4, v0}, Lcom/android/server/power/WakelockTracer$Instance$$ExternalSyntheticLambda0;-><init>(JLjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    const/4 p3, 0x0

    .line 225
    iput-boolean p3, p0, Lcom/android/server/power/WakelockTracer$Instance;->mHasPendingWrite:Z

    .line 226
    iget-object p3, p0, Lcom/android/server/power/WakelockTracer$Instance;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_28

    .line 227
    invoke-virtual {p0}, Lcom/android/server/power/WakelockTracer$Instance;->scheduleWrite()V

    .line 230
    :cond_28
    invoke-static {p1, p2, v0}, Lcom/android/server/power/WakelockTracer$Instance;->writeToPacket(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/power/WakelockTracer$IncrementalState;Ljava/util/ArrayList;)V

    return-void
.end method
