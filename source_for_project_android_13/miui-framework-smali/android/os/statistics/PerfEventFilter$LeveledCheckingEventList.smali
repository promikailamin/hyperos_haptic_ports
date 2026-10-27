.class final Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;
.super Ljava/lang/Object;
.source "PerfEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeveledCheckingEventList"
.end annotation


# instance fields
.field public final blacklist longLevelCount:I

.field public final blacklist longLevelDeltaMillis:I

.field public final blacklist longLevelDeltaMillisPower:I

.field public final blacklist longLevelFloorMillis:I

.field public final blacklist longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

.field public blacklist perfEventCount:I

.field public final blacklist shortLevelCount:I

.field public final blacklist shortLevelDeltaMillis:I

.field public final blacklist shortLevelDeltaMillisPower:I

.field public final blacklist shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;


# direct methods
.method public constructor blacklist <init>(ZIIIJ)V
    .registers 24
    .param p1, "_isEffectiveEvents"    # Z
    .param p2, "_shortLevelDeltaMillis"    # I
    .param p3, "_longLevelDeltaMillis"    # I
    .param p4, "_minWaitTimeMillis"    # I
    .param p5, "_earliestUnexpiredUptimeMillis"    # J

    .line 192
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static/range {p2 .. p2}, Landroid/os/statistics/PerfEventFilter;->-$$Nest$smgetCeilingOfPowerByTwo(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    .line 194
    const/4 v2, 0x1

    shl-int v1, v2, v1

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillis:I

    .line 195
    const/16 v3, 0x400

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    .line 196
    div-int/2addr v3, v1

    iput v3, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    .line 197
    invoke-static/range {p3 .. p3}, Landroid/os/statistics/PerfEventFilter;->-$$Nest$smgetCeilingOfPowerByTwo(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    .line 198
    shl-int v1, v2, v1

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillis:I

    .line 199
    const/high16 v4, 0x10000

    div-int v1, v4, v1

    iput v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    .line 201
    new-array v1, v3, [Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    iput-object v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    iget v3, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelCount:I

    if-ge v1, v3, :cond_6b

    .line 203
    if-nez v1, :cond_3f

    .line 204
    sget v3, Landroid/os/statistics/PerfSupervisionSettings;->sMinPerfEventDurationMillis:I

    iget v5, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillis:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_42

    :cond_3f
    iget v3, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillis:I

    mul-int/2addr v3, v1

    :goto_42
    move v10, v3

    .line 205
    .local v10, "inclusiveMinPerfEventDurationMsInLevel":I
    add-int/lit8 v3, v1, 0x1

    iget v5, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillis:I

    mul-int/2addr v3, v5

    .line 206
    .local v3, "exclusiveMaxPerfEventDurationMsInLevel":I
    add-int v5, p4, v3

    .line 207
    if-eqz p1, :cond_4f

    .line 208
    shl-int/lit8 v6, v3, 0x2

    goto :goto_51

    .line 209
    :cond_4f
    shl-int/lit8 v6, v3, 0x5

    :goto_51
    add-int/2addr v5, v6

    .line 210
    .local v5, "timespanInMillis":I
    if-le v5, v4, :cond_58

    .line 211
    const/high16 v5, 0x10000

    move v12, v5

    goto :goto_59

    .line 210
    :cond_58
    move v12, v5

    .line 213
    .end local v5    # "timespanInMillis":I
    .local v12, "timespanInMillis":I
    :goto_59
    iget-object v13, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    new-instance v14, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    move-object v5, v14

    move v6, v3

    move v7, v12

    move-wide/from16 v8, p5

    move v11, v3

    invoke-direct/range {v5 .. v11}, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;-><init>(IIJII)V

    aput-object v14, v13, v1

    .line 202
    .end local v3    # "exclusiveMaxPerfEventDurationMsInLevel":I
    .end local v10    # "inclusiveMinPerfEventDurationMsInLevel":I
    .end local v12    # "timespanInMillis":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 219
    .end local v1    # "i":I
    :cond_6b
    iget v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    new-array v1, v1, [Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    iput-object v1, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    .line 220
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_72
    iget v3, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-ge v1, v3, :cond_aa

    .line 221
    iget v3, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillis:I

    mul-int v5, v1, v3

    iget v6, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    add-int/2addr v5, v6

    .line 222
    .local v5, "inclusiveMinPerfEventDurationMsInLevel":I
    add-int/2addr v3, v5

    .line 223
    .restart local v3    # "exclusiveMaxPerfEventDurationMsInLevel":I
    if-le v3, v4, :cond_82

    .line 224
    const/high16 v3, 0x10000

    .line 226
    :cond_82
    add-int v6, p4, v3

    .line 227
    if-eqz p1, :cond_89

    .line 228
    shl-int/lit8 v7, v3, 0x2

    goto :goto_8b

    .line 229
    :cond_89
    shl-int/lit8 v7, v3, 0x5

    :goto_8b
    add-int/2addr v6, v7

    .line 230
    .local v6, "timespanInMillis":I
    if-le v6, v4, :cond_90

    .line 231
    const/high16 v6, 0x10000

    .line 233
    :cond_90
    invoke-static {v3}, Landroid/os/statistics/PerfEventFilter;->-$$Nest$smgetCeilingOfPowerByTwo(I)I

    move-result v7

    shl-int v14, v2, v7

    .line 234
    .local v14, "timesliceMillis":I
    iget-object v15, v0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    new-instance v16, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    move-object/from16 v7, v16

    move v8, v14

    move v9, v6

    move-wide/from16 v10, p5

    move v12, v5

    move v13, v3

    invoke-direct/range {v7 .. v13}, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;-><init>(IIJII)V

    aput-object v16, v15, v1

    .line 220
    .end local v3    # "exclusiveMaxPerfEventDurationMsInLevel":I
    .end local v5    # "inclusiveMinPerfEventDurationMsInLevel":I
    .end local v6    # "timespanInMillis":I
    .end local v14    # "timesliceMillis":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 239
    .end local v1    # "i":I
    :cond_aa
    return-void
.end method


# virtual methods
.method public final blacklist add(Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 4
    .param p1, "perfEvent"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 242
    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    if-ge v0, v1, :cond_19

    .line 243
    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortLevelDeltaMillisPower:I

    shr-int/2addr v0, v1

    .line 244
    .local v0, "shortLevel":I
    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    .line 245
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->shortPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 246
    .end local v0    # "shortLevel":I
    goto :goto_32

    .line 247
    :cond_19
    iget v0, p1, Landroid/os/statistics/FilteringPerfEvent;->durationMillis:I

    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelFloorMillis:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelDeltaMillisPower:I

    shr-int/2addr v0, v1

    .line 248
    .local v0, "longLevel":I
    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longLevelCount:I

    if-ge v0, v1, :cond_32

    .line 249
    iget v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    .line 250
    iget-object v1, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->longPerfEventsByLevel:[Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->add(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 253
    .end local v0    # "longLevel":I
    :cond_32
    :goto_32
    return-void
.end method

.method public final blacklist remove(Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 5
    .param p1, "levelPerfEvents"    # Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;
    .param p2, "slice"    # Landroid/os/statistics/FilteringPerfEventList;
    .param p3, "perfEvent"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 256
    invoke-virtual {p1, p2, p3}, Landroid/os/statistics/PerfEventFilter$TimeslicedCheckingEventList;->remove(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V

    .line 257
    iget v0, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/statistics/PerfEventFilter$LeveledCheckingEventList;->perfEventCount:I

    .line 258
    return-void
.end method
