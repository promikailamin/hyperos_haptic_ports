.class public Landroid/os/statistics/EventLogSuperviser;
.super Ljava/lang/Object;
.source "EventLogSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/EventLogSuperviser$EventLogFields;,
        Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;,
        Landroid/os/statistics/EventLogSuperviser$EventLogTags;
    }
.end annotation


# static fields
.field private static final blacklist emptyEventValueStrs:[Ljava/lang/String;

.field private static final blacklist supervisedEventLogTags:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetemptyEventValueStrs()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/statistics/EventLogSuperviser;->emptyEventValueStrs:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Landroid/os/statistics/EventLogSuperviser;->supervisedEventLogTags:[I

    .line 101
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/os/statistics/EventLogSuperviser;->emptyEventValueStrs:[Ljava/lang/String;

    return-void

    :array_e
    .array-data 4
        0xaa8
        0x7538
        0x7588
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isSupervised(I)Z
    .registers 2
    .param p0, "tag"    # I

    .line 215
    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isPerfEventReportable()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/os/statistics/EventLogSuperviser;->supervisedEventLogTags:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static blacklist notifyEvent(IF)V
    .registers 3
    .param p0, "tag"    # I
    .param p1, "value"    # F

    .line 231
    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 232
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    .line 234
    :cond_d
    return-void
.end method

.method public static blacklist notifyEvent(II)V
    .registers 3
    .param p0, "tag"    # I
    .param p1, "value"    # I

    .line 219
    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    .line 222
    :cond_d
    return-void
.end method

.method public static blacklist notifyEvent(IJ)V
    .registers 4
    .param p0, "tag"    # I
    .param p1, "value"    # J

    .line 225
    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 226
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    .line 228
    :cond_d
    return-void
.end method

.method public static blacklist notifyEvent(ILjava/lang/String;)V
    .registers 3
    .param p0, "tag"    # I
    .param p1, "str"    # Ljava/lang/String;

    .line 237
    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 238
    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    .line 240
    :cond_9
    return-void
.end method

.method public static varargs blacklist notifyEvent(I[Ljava/lang/Object;)V
    .registers 3
    .param p0, "tag"    # I
    .param p1, "list"    # [Ljava/lang/Object;

    .line 243
    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 244
    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    .line 246
    :cond_9
    return-void
.end method

.method private static blacklist notifyEventWithObject(ILjava/lang/Object;)V
    .registers 11
    .param p0, "tag"    # I
    .param p1, "eventLogValueObject"    # Ljava/lang/Object;

    .line 250
    const/high16 v0, 0x100000

    const/16 v1, 0x7538

    if-ne p0, v1, :cond_2f

    .line 251
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v1

    .line 252
    .local v1, "uptimeMillis":J
    new-instance v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v3}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    .line 253
    .local v3, "item":Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    move-object v4, p1

    check-cast v4, [Ljava/lang/Object;

    .line 254
    .local v4, "objects":[Ljava/lang/Object;
    iget v5, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventFlags:I

    or-int/2addr v0, v5

    iput v0, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventFlags:I

    .line 255
    const-wide/16 v5, 0x2710

    sub-long v5, v1, v5

    iput-wide v5, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->beginUptimeMillis:J

    .line 256
    iput-wide v1, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->endUptimeMillis:J

    .line 257
    const/4 v0, 0x1

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 258
    .local v0, "targetPid":I
    invoke-static {v0}, Landroid/os/statistics/PerfEvent;->generateCoordinationId(I)J

    move-result-wide v5

    iput-wide v5, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->inclusionId:J

    .line 259
    .end local v0    # "targetPid":I
    .end local v1    # "uptimeMillis":J
    .end local v4    # "objects":[Ljava/lang/Object;
    goto :goto_8f

    .end local v3    # "item":Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    :cond_2f
    const/16 v1, 0x7588

    if-ne p0, v1, :cond_81

    .line 260
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 261
    .local v1, "objects":[Ljava/lang/Object;
    const/4 v2, 0x3

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x4

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 262
    .local v2, "durationMillis":J
    const-wide/16 v4, 0x5dc

    cmp-long v4, v2, v4

    if-ltz v4, :cond_7e

    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v2, v4

    if-gez v4, :cond_7e

    .line 263
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v4

    .line 264
    .local v4, "uptimeMillis":J
    new-instance v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v6}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    .line 265
    .local v6, "item":Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    iget v7, v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventFlags:I

    or-int/2addr v0, v7

    iput v0, v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventFlags:I

    .line 266
    sub-long v7, v4, v2

    iput-wide v7, v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->beginUptimeMillis:J

    .line 267
    iput-wide v4, v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->endUptimeMillis:J

    .line 268
    const/4 v0, 0x5

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 269
    .restart local v0    # "targetPid":I
    invoke-static {v0}, Landroid/os/statistics/PerfEvent;->generateCoordinationId(I)J

    move-result-wide v7

    iput-wide v7, v6, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->inclusionId:J

    .line 270
    .end local v0    # "targetPid":I
    .end local v4    # "uptimeMillis":J
    move-object v3, v6

    goto :goto_80

    .line 271
    .end local v6    # "item":Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    :cond_7e
    const/4 v0, 0x0

    move-object v3, v0

    .line 273
    .end local v1    # "objects":[Ljava/lang/Object;
    .end local v2    # "durationMillis":J
    .restart local v3    # "item":Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    :goto_80
    goto :goto_8f

    .line 274
    .end local v3    # "item":Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    :cond_81
    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v0

    .line 275
    .local v0, "uptimeMillis":J
    new-instance v2, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v2}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    move-object v3, v2

    .line 276
    .restart local v3    # "item":Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    iput-wide v0, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->beginUptimeMillis:J

    .line 277
    iput-wide v0, v3, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->endUptimeMillis:J

    .line 279
    .end local v0    # "uptimeMillis":J
    :goto_8f
    if-eqz v3, :cond_a8

    .line 280
    invoke-virtual {v3}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    .line 281
    .local v0, "details":Landroid/os/statistics/EventLogSuperviser$EventLogFields;
    sget v1, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    iput v1, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->pid:I

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->currentTimeMillis:J

    .line 283
    iput p0, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogTagId:I

    .line 284
    iput-object p1, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    .line 285
    invoke-static {v3}, Landroid/os/statistics/PerfEventReporter;->report(Landroid/os/statistics/PerfEvent;)V

    .line 287
    .end local v0    # "details":Landroid/os/statistics/EventLogSuperviser$EventLogFields;
    :cond_a8
    return-void
.end method
