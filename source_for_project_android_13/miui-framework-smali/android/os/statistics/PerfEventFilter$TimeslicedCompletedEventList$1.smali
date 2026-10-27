.class Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList$1;
.super Ljava/lang/Object;
.source "PerfEventFilter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList;-><init>(IIJII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/os/statistics/FilteringPerfEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/FilteringPerfEvent;)I
    .registers 16
    .param p1, "perfEvent1"    # Landroid/os/statistics/FilteringPerfEvent;
    .param p2, "perfEvent2"    # Landroid/os/statistics/FilteringPerfEvent;

    .line 133
    iget-wide v0, p1, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    .line 134
    .local v0, "endUptimeMillis1":J
    iget-wide v2, p2, Landroid/os/statistics/FilteringPerfEvent;->endUptimeMillis:J

    .line 135
    .local v2, "endUptimeMillis2":J
    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_a

    .line 136
    return v5

    .line 138
    :cond_a
    cmp-long v4, v0, v2

    const/4 v6, -0x1

    if-gez v4, :cond_10

    .line 139
    return v6

    .line 141
    :cond_10
    iget-wide v7, p1, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    .line 142
    .local v7, "beginUptimeMillis1":J
    iget-wide v9, p2, Landroid/os/statistics/FilteringPerfEvent;->beginUptimeMillis:J

    .line 143
    .local v9, "beginUptimeMillis2":J
    cmp-long v4, v7, v9

    if-lez v4, :cond_19

    .line 144
    return v6

    .line 146
    :cond_19
    cmp-long v4, v7, v9

    if-gez v4, :cond_1e

    .line 147
    return v5

    .line 149
    :cond_1e
    iget v4, p1, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    .line 150
    .local v4, "eventFlags1":I
    iget v5, p2, Landroid/os/statistics/FilteringPerfEvent;->eventFlags:I

    .line 151
    .local v5, "eventFlags2":I
    and-int/lit8 v6, v4, 0x1

    and-int/lit8 v11, v5, 0x1

    invoke-static {v6, v11}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    .line 153
    .local v6, "result":I
    if-eqz v6, :cond_2d

    .line 154
    return v6

    .line 156
    :cond_2d
    const/high16 v11, 0x40000

    and-int v12, v4, v11

    and-int/2addr v11, v5

    invoke-static {v12, v11}, Ljava/lang/Integer;->compare(II)I

    move-result v6

    .line 158
    if-eqz v6, :cond_39

    .line 159
    return v6

    .line 161
    :cond_39
    and-int/lit8 v11, v4, 0x6

    and-int/lit8 v12, v5, 0x6

    invoke-static {v11, v12}, Ljava/lang/Integer;->compare(II)I

    move-result v11

    return v11
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 130
    check-cast p1, Landroid/os/statistics/FilteringPerfEvent;

    check-cast p2, Landroid/os/statistics/FilteringPerfEvent;

    invoke-virtual {p0, p1, p2}, Landroid/os/statistics/PerfEventFilter$TimeslicedCompletedEventList$1;->compare(Landroid/os/statistics/FilteringPerfEvent;Landroid/os/statistics/FilteringPerfEvent;)I

    move-result p1

    return p1
.end method
