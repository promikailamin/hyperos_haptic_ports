.class public final Lcom/android/server/timezonedetector/ReferenceWithHistory;
.super Ljava/lang/Object;
.source "ReferenceWithHistory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMaxHistorySize:I

.field private mSetCount:I

.field private mValues:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/TimestampedValue<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "maxHistorySize"    # I

    .line 69
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    .line 73
    iput p1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mMaxHistorySize:I

    .line 74
    return-void

    .line 71
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxHistorySize < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 8
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 113
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-nez v0, :cond_b

    .line 114
    const-string/jumbo v0, "{Empty}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4b

    .line 116
    :cond_b
    iget v1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mSetCount:I

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    sub-int/2addr v1, v0

    .line 117
    .local v1, "i":I
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 118
    .local v0, "reverseIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/TimestampedValue<TV;>;>;"
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/TimestampedValue;

    .line 120
    .local v2, "valueHolder":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TV;>;"
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 121
    const-string v1, "@"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v2}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 123
    const-string v1, ": "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 125
    .end local v2    # "valueHolder":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TV;>;"
    move v1, v3

    goto :goto_18

    .line 127
    .end local v0    # "reverseIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/TimestampedValue<TV;>;>;"
    .end local v3    # "i":I
    :cond_4b
    :goto_4b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 128
    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_18

    .line 82
    :cond_b
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TimestampedValue;

    .line 83
    .local v0, "valueHolder":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TV;>;"
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 80
    .end local v0    # "valueHolder":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TV;>;"
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHistoryCount()I
    .registers 2

    .line 134
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public set(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    if-nez v0, :cond_d

    .line 93
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mMaxHistorySize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    .line 96
    :cond_d
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mMaxHistorySize:I

    if-lt v0, v1, :cond_1c

    .line 97
    iget-object v0, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 100
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    new-instance v1, Landroid/os/TimestampedValue;

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    .line 104
    .local v1, "valueHolder":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<TV;>;"
    iget-object v2, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mValues:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 105
    iget v2, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mSetCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/timezonedetector/ReferenceWithHistory;->mSetCount:I

    .line 106
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 139
    .local p0, "this":Lcom/android/server/timezonedetector/ReferenceWithHistory;, "Lcom/android/server/timezonedetector/ReferenceWithHistory<TV;>;"
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
