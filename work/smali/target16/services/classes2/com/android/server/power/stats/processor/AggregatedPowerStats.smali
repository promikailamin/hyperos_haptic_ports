.class public Lcom/android/server/power/stats/processor/AggregatedPowerStats;
.super Ljava/lang/Object;
.source "AggregatedPowerStats.java"


# instance fields
.field public final mClockUpdates:Ljava/util/List;

.field public final mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

.field public mDurationMs:J

.field public final mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

.field public final mPowerComponentStats:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V
    .registers 3

    .line 78
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V
    .registers 8

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    .line 85
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->getPowerComponentsAggregatedStatsConfigs()Ljava/util/List;

    move-result-object p1

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 87
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 88
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 89
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getPowerComponentId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 90
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getPowerComponentId()I

    move-result v3

    new-instance v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v4, p0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 94
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->createGenericPowerComponent()Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 95
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    .registers 9

    .line 268
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    .line 271
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    const/4 v4, 0x1

    if-eq v1, v4, :cond_69

    const/4 v5, 0x3

    .line 272
    const-string v6, "agg-power-stats"

    if-ne v1, v5, :cond_1d

    .line 274
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    :cond_1d
    if-nez v2, :cond_64

    const/4 v5, 0x2

    if-ne v1, v5, :cond_64

    .line 276
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v5, "power_component"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_64

    :cond_39
    move v3, v4

    goto :goto_64

    :cond_3b
    if-nez v3, :cond_3e

    goto :goto_64

    :cond_3e
    const/4 v1, 0x0

    .line 285
    const-string v5, "id"

    invoke-interface {p0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 290
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getPowerComponentStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move-result-object v5

    if-nez v5, :cond_5b

    .line 293
    invoke-virtual {p1, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->createPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v6

    if-eqz v6, :cond_5b

    .line 296
    new-instance v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v5, v0, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 298
    iget-object v6, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5b
    if-eqz v5, :cond_64

    .line 303
    invoke-virtual {v5, p0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_64

    move v2, v4

    .line 311
    :cond_64
    :goto_64
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    goto :goto_b

    :cond_69
    return-object v0
.end method

.method public static formatDateTime(J)Ljava/lang/String;
    .registers 5

    .line 372
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 374
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addClockUpdate(JJ)Z
    .registers 7

    .line 124
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    invoke-direct {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;-><init>()V

    .line 125
    iput-wide p1, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 126
    iput-wide p3, v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    .line 127
    iget-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x64

    const/4 v1, 0x1

    if-ge p1, p2, :cond_1a

    .line 128
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 131
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too many clock updates. Replacing the previous update with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "yyyy-MM-dd-HH-mm-ss"

    .line 132
    invoke-static {p2, p3, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    const-string p2, "AggregatedPowerStats"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .registers 7

    .line 206
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    .line 207
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-nez v1, :cond_2f

    .line 209
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-virtual {v1, v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->createPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    if-nez v1, :cond_17

    return-void

    .line 214
    :cond_17
    new-instance v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v2, p0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 215
    iget-object v1, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 216
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v2, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->copyStatesFrom(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 217
    invoke-virtual {v2, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->start(J)V

    .line 218
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    .line 221
    :cond_2f
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addPowerStats(Lcom/android/internal/os/PowerStats;J)V

    return-void
.end method

.method public final createGenericPowerComponent()Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .registers 10

    .line 99
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 100
    filled-new-array {v1, v2}, [I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    const/4 v4, 0x2

    filled-new-array {v1, v2, v4}, [I

    move-result-object v1

    .line 103
    invoke-virtual {v3, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 107
    new-instance v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    .line 109
    new-instance v2, Lcom/android/internal/os/PowerStats$Descriptor;

    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    return-object v1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 11

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    .line 319
    :goto_9
    iget-object v5, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6e

    .line 320
    iget-object v5, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    .line 321
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    if-nez v4, :cond_44

    .line 323
    iget-wide v1, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 324
    const-string v6, "Start time: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    .line 325
    invoke-static {v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->formatDateTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    .line 326
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ") duration: "

    .line 328
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    .line 329
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6b

    .line 332
    :cond_44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 333
    const-string v6, "Clock update:  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-wide v6, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    sub-long/2addr v6, v1

    const/16 v8, 0x16

    invoke-static {v6, v7, v0, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    .line 337
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v5, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    invoke-static {v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->formatDateTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 339
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 344
    :cond_6e
    const-string v0, "Device"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v3

    .line 346
    :goto_77
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_8d

    .line 347
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpDevice(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 349
    :cond_8d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 351
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v1, v3

    .line 352
    :goto_96
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_c3

    .line 353
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v2

    .line 354
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_b0
    if-ltz v4, :cond_c0

    .line 355
    invoke-virtual {v2, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_b0

    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    .line 359
    :cond_c3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 360
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 361
    array-length v1, v0

    move v2, v3

    :goto_d4
    if-ge v2, v1, :cond_103

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 362
    invoke-static {v4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v5, v3

    .line 364
    :goto_e7
    iget-object v6, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_fd

    .line 365
    iget-object v6, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v6, p1, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpUid(Landroid/util/IndentingPrintWriter;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e7

    .line 367
    :cond_fd
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d4

    :cond_103
    return-void
.end method

.method public finish(J)V
    .registers 5

    const/4 v0, 0x0

    .line 238
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 239
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 240
    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->finish(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public getClockUpdates()Ljava/util/List;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    return-object p0
.end method

.method public getDuration()J
    .registers 3

    .line 160
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    return-wide v0
.end method

.method public getPowerComponentStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .registers 2

    .line 176
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    return-object p0
.end method

.method public getPowerComponentStats()Ljava/util/List;
    .registers 5

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    .line 165
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 166
    :goto_c
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 167
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 168
    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-eq v2, v3, :cond_23

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_26
    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    .line 145
    :cond_b
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    iget-wide v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    return-wide v0
.end method

.method public isCompatible(Lcom/android/internal/os/PowerStats;)Z
    .registers 3

    .line 200
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    .line 201
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-eqz p0, :cond_16

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->isCompatible(Lcom/android/internal/os/PowerStats;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public noteBatteryLevel(IIJ)V
    .registers 7

    const/4 v0, 0x0

    .line 231
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 232
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->noteBatteryLevel(IIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public noteStateChange(Landroid/os/BatteryStats$HistoryItem;)V
    .registers 4

    const/4 v0, 0x0

    .line 225
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 226
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->noteStateChange(Landroid/os/BatteryStats$HistoryItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public reset()V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mClockUpdates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    .line 246
    iput-wide v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    const/4 v0, 0x0

    .line 247
    :goto_a
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 248
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_20
    return-void
.end method

.method public setDeviceState(IIJ)V
    .registers 7

    const/4 v0, 0x0

    .line 187
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 188
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setState(IIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public setDuration(J)V
    .registers 3

    .line 155
    iput-wide p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mDurationMs:J

    return-void
.end method

.method public setUidState(IIIJ)V
    .registers 14

    const/4 v0, 0x0

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 195
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidState(IIIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method

.method public start(J)V
    .registers 5

    const/4 v0, 0x0

    .line 180
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 181
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->start(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 379
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 380
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 381
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7

    const/4 v0, 0x0

    .line 253
    const-string v1, "agg-power-stats"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    .line 254
    :goto_7
    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 255
    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mPowerComponentStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 256
    iget-object v4, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->mGenericPowerComponent:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    if-eq v3, v4, :cond_1e

    .line 257
    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 260
    :cond_21
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    return-void
.end method
