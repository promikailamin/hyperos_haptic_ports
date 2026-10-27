.class public final Lcom/android/server/utils/AnrTimer$Error;
.super Ljava/lang/Object;
.source "AnrTimer.java"


# instance fields
.field public final arg:Ljava/lang/String;

.field public final issue:Ljava/lang/String;

.field public final operation:Ljava/lang/String;

.field public final stack:[Ljava/lang/StackTraceElement;

.field public final tag:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/utils/AnrTimer$Error;Landroid/util/IndentingPrintWriter;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/AnrTimer$Error;->dump(Landroid/util/IndentingPrintWriter;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;)V
    .registers 6

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$Error;->issue:Ljava/lang/String;

    .line 343
    iput-object p2, p0, Lcom/android/server/utils/AnrTimer$Error;->operation:Ljava/lang/String;

    .line 344
    iput-object p3, p0, Lcom/android/server/utils/AnrTimer$Error;->tag:Ljava/lang/String;

    .line 345
    iput-object p4, p0, Lcom/android/server/utils/AnrTimer$Error;->stack:[Ljava/lang/StackTraceElement;

    .line 346
    iput-object p5, p0, Lcom/android/server/utils/AnrTimer$Error;->arg:Ljava/lang/String;

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/utils/AnrTimer$Error;->timestamp:J

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;I)V
    .registers 7

    .line 354
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$Error;->operation:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$Error;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/utils/AnrTimer$Error;->issue:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/utils/AnrTimer$Error;->arg:Ljava/lang/String;

    filled-new-array {p2, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%2d: op:%s tag:%s issue:%s arg:%s\n"

    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 357
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$Error;->timestamp:J

    add-long/2addr v0, v2

    .line 358
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    date:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p2, 0x0

    .line 360
    :goto_3d
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$Error;->stack:[Ljava/lang/StackTraceElement;

    array-length v0, v0

    if-ge p2, v0, :cond_61

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$Error;->stack:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3d

    .line 363
    :cond_61
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method
