.class public abstract Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;
.super Ljava/lang/Object;
.source "PerfEventFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEventFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TimeslicedFilteringPerfEventList"
.end annotation


# instance fields
.field public final blacklist exclusiveMaxPerfEventDurationMillis:I

.field public blacklist firstSliceIndex:I

.field public blacklist firstSliceUptimeMillis:J

.field public final blacklist inclusiveMinPerfEventDurationMillis:I

.field public final blacklist outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

.field public blacklist perfEventCount:I

.field public final blacklist secondaryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/os/statistics/FilteringPerfEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist timesliceCount:I

.field public final blacklist timesliceMillis:I

.field public final blacklist timesliceMillisPower:I

.field public final blacklist timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;


# direct methods
.method public constructor blacklist <init>(IIJIILjava/util/Comparator;)V
    .registers 14
    .param p1, "_suggestTimesliceInMillis"    # I
    .param p2, "_timespanInMillis"    # I
    .param p3, "_firstSliceUptimeMillis"    # J
    .param p5, "_inclusiveMinPerfEventDurationMillis"    # I
    .param p6, "_exclusiveMaxPerfEventDurationMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJII",
            "Ljava/util/Comparator<",
            "Landroid/os/statistics/FilteringPerfEvent;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p7, "_secondaryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/statistics/FilteringPerfEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v0}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 52
    invoke-static {p1}, Landroid/os/statistics/PerfEventFilter;->-$$Nest$smgetCeilingOfPowerByTwo(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceMillisPower:I

    .line 53
    const/4 v1, 0x1

    shl-int v0, v1, v0

    iput v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceMillis:I

    .line 54
    div-int v1, p2, v0

    .line 55
    .local v1, "tempTimesliceCount":I
    mul-int v2, v1, v0

    if-eq v2, p2, :cond_1d

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 58
    :cond_1d
    iput v1, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceCount:I

    .line 59
    const/4 v2, 0x0

    iput v2, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceIndex:I

    .line 60
    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-gez v4, :cond_29

    goto :goto_2a

    :cond_29
    move-wide v2, p3

    :goto_2a
    int-to-long v4, v0

    div-long/2addr v2, v4

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceUptimeMillis:J

    .line 61
    new-array v0, v1, [Landroid/os/statistics/FilteringPerfEventList;

    iput-object v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    iget v2, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceCount:I

    if-ge v0, v2, :cond_45

    .line 63
    new-instance v2, Landroid/os/statistics/FilteringPerfEventList;

    invoke-direct {v2}, Landroid/os/statistics/FilteringPerfEventList;-><init>()V

    .line 64
    .local v2, "slice":Landroid/os/statistics/FilteringPerfEventList;
    iget-object v3, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    aput-object v2, v3, v0

    .line 62
    .end local v2    # "slice":Landroid/os/statistics/FilteringPerfEventList;
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 66
    .end local v0    # "i":I
    :cond_45
    iput p5, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->inclusiveMinPerfEventDurationMillis:I

    .line 67
    iput p6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->exclusiveMaxPerfEventDurationMillis:I

    .line 68
    iput-object p7, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->secondaryComparator:Ljava/util/Comparator;

    .line 69
    return-void
.end method


# virtual methods
.method public final blacklist add(Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 14
    .param p1, "perfEvent"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 73
    iget-wide v0, p1, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    .line 74
    .local v0, "sortingUptimeMillis":J
    iget-wide v2, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceUptimeMillis:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 75
    .local v2, "millisAfterFirstSlice":I
    if-ltz v2, :cond_46

    .line 76
    iget v3, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceMillisPower:I

    shr-int v3, v2, v3

    .line 77
    .local v3, "sliceNo":I
    iget v4, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceCount:I

    if-ge v3, v4, :cond_1a

    .line 78
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    iget v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceIndex:I

    add-int/2addr v6, v3

    rem-int/2addr v6, v4

    aget-object v4, v5, v6

    .local v4, "targetSlice":Landroid/os/statistics/FilteringPerfEventList;
    goto :goto_45

    .line 80
    .end local v4    # "targetSlice":Landroid/os/statistics/FilteringPerfEventList;
    :cond_1a
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 83
    .local v4, "outDated":Landroid/os/statistics/FilteringPerfEventList;
    :cond_1c
    iget-object v5, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    iget v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceIndex:I

    aget-object v5, v5, v6

    .line 84
    .local v5, "newOutDated":Landroid/os/statistics/FilteringPerfEventList;
    iget v6, v5, Landroid/os/statistics/FilteringPerfEventList;->size:I

    if-lez v6, :cond_29

    .line 85
    invoke-virtual {v4, v5}, Landroid/os/statistics/FilteringPerfEventList;->moveAllFrom(Landroid/os/statistics/FilteringPerfEventList;)V

    .line 87
    :cond_29
    iget v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceIndex:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceCount:I

    rem-int/2addr v6, v7

    iput v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceIndex:I

    .line 88
    iget-wide v8, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceUptimeMillis:J

    iget v10, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timesliceMillis:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->firstSliceUptimeMillis:J

    .line 89
    add-int/lit8 v3, v3, -0x1

    .line 90
    if-ge v3, v7, :cond_1c

    .line 91
    iget-object v8, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->timeslicedPerfEvents:[Landroid/os/statistics/FilteringPerfEventList;

    add-int/2addr v6, v3

    rem-int/2addr v6, v7

    aget-object v6, v8, v6

    move-object v4, v6

    .line 93
    .end local v3    # "sliceNo":I
    .end local v5    # "newOutDated":Landroid/os/statistics/FilteringPerfEventList;
    .local v4, "targetSlice":Landroid/os/statistics/FilteringPerfEventList;
    :goto_45
    goto :goto_48

    .line 94
    .end local v4    # "targetSlice":Landroid/os/statistics/FilteringPerfEventList;
    :cond_46
    iget-object v4, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->outDatedPerfEvents:Landroid/os/statistics/FilteringPerfEventList;

    .line 97
    .restart local v4    # "targetSlice":Landroid/os/statistics/FilteringPerfEventList;
    :goto_48
    move-object v3, v4

    .line 98
    .local v3, "head":Landroid/os/statistics/FilteringPerfEventListNode;
    iget-object v5, v3, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 99
    .local v5, "pos":Landroid/os/statistics/FilteringPerfEventListNode;
    :goto_4b
    if-eq v5, v3, :cond_6c

    .line 100
    iget-object v6, v5, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    iget-wide v6, v6, Landroid/os/statistics/FilteringPerfEvent;->sortingUptimeMillis:J

    .line 101
    .local v6, "posEventUptimeMillis":J
    sub-long v8, v6, v0

    long-to-int v8, v8

    .line 102
    .local v8, "delta":I
    if-gez v8, :cond_57

    .line 103
    goto :goto_6c

    .line 104
    :cond_57
    if-lez v8, :cond_5c

    .line 105
    iget-object v5, v5, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    goto :goto_6b

    .line 107
    :cond_5c
    iget-object v9, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->secondaryComparator:Ljava/util/Comparator;

    if-eqz v9, :cond_6c

    iget-object v10, v5, Landroid/os/statistics/FilteringPerfEventListNode;->value:Landroid/os/statistics/FilteringPerfEvent;

    invoke-interface {v9, v10, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gtz v9, :cond_69

    .line 108
    goto :goto_6c

    .line 110
    :cond_69
    iget-object v5, v5, Landroid/os/statistics/FilteringPerfEventListNode;->previous:Landroid/os/statistics/FilteringPerfEventListNode;

    .line 113
    .end local v6    # "posEventUptimeMillis":J
    .end local v8    # "delta":I
    :goto_6b
    goto :goto_4b

    .line 114
    :cond_6c
    :goto_6c
    invoke-virtual {v4, v5, p1}, Landroid/os/statistics/FilteringPerfEventList;->addAfter(Landroid/os/statistics/FilteringPerfEventListNode;Landroid/os/statistics/FilteringPerfEvent;)V

    .line 116
    iget v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->perfEventCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->perfEventCount:I

    .line 117
    return-void
.end method

.method public final blacklist remove(Landroid/os/statistics/FilteringPerfEventList;Landroid/os/statistics/FilteringPerfEvent;)V
    .registers 4
    .param p1, "fromSlice"    # Landroid/os/statistics/FilteringPerfEventList;
    .param p2, "perfEvent"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 120
    invoke-virtual {p1, p2}, Landroid/os/statistics/FilteringPerfEventList;->remove(Landroid/os/statistics/FilteringPerfEvent;)V

    .line 121
    iget v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->perfEventCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/statistics/PerfEventFilter$TimeslicedFilteringPerfEventList;->perfEventCount:I

    .line 122
    return-void
.end method
