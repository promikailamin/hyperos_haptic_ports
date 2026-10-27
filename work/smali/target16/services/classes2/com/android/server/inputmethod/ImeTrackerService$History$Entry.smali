.class public final Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;
.super Ljava/lang/Object;
.source "ImeTrackerService.java"


# static fields
.field public static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mDuration:J

.field public mFinishTimestampMs:J

.field public mFinished:Z

.field public mFromUser:Z

.field public mLastProgressWallTimeMs:J

.field public mOrigin:I

.field public mPhase:I

.field public mReason:I

.field public mRequestWindowName:Ljava/lang/String;

.field public final mSequenceNumber:I

.field public mStartTimestampMs:J

.field public mStartWallTimeMs:J

.field public mStarted:Z

.field public mStatus:I

.field public mTag:Ljava/lang/String;

.field public mType:I

.field public mUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDuration(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmFinishTimestampMs(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFinishTimestampMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmFinished(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFinished:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStartTimestampMs(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartTimestampMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmStarted(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStarted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmDuration(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRequestWindowName(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 547
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    sget-object v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mSequenceNumber:I

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mLastProgressWallTimeMs:J

    .line 632
    const-string/jumbo v0, "not set"

    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    const/4 v1, -0x1

    .line 633
    iput v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mUid:I

    const/4 v1, 0x0

    .line 634
    iput v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mType:I

    const/4 v2, 0x1

    .line 635
    iput v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    .line 636
    iput v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mOrigin:I

    .line 637
    iput v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mReason:I

    .line 638
    iput v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    .line 639
    iput-boolean v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFromUser:Z

    .line 640
    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)V
    .registers 8

    .line 710
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mSequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mType:I

    invoke-static {v2}, Landroid/view/inputmethod/ImeTracker$Debug;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    invoke-static {v3}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  startTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartWallTimeMs:J

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (timestamp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartTimestampMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mOrigin:I

    invoke-static {v2}, Landroid/view/inputmethod/ImeTracker$Debug;->originToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mReason:I

    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    invoke-static {v1}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    iget v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_129

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastProgressTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mLastProgressWallTimeMs:J

    .line 728
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 727
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    :cond_129
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 732
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 733
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  requestWindowName="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(II)V
    .registers 3

    if-eqz p2, :cond_4

    .line 694
    iput p2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    .line 696
    :cond_4
    iput p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    .line 697
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFinishTimestampMs:J

    const/4 p1, 0x1

    .line 698
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFinished:Z

    return-void
.end method

.method public onProgress(I)V
    .registers 4

    .line 680
    iput p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mLastProgressWallTimeMs:J

    return-void
.end method

.method public onStart(Ljava/lang/String;IIIIZJJ)V
    .registers 11

    .line 662
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    .line 663
    iput p2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mUid:I

    .line 664
    iput p3, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mType:I

    .line 665
    iput p4, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mOrigin:I

    .line 666
    iput p5, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mReason:I

    .line 667
    iput-boolean p6, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFromUser:Z

    .line 668
    iput-wide p7, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartWallTimeMs:J

    .line 669
    iput-wide p9, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartTimestampMs:J

    const/4 p1, 0x1

    .line 670
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStarted:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{mSequenceNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mSequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mType:I

    .line 742
    invoke-static {v1}, Landroid/view/inputmethod/ImeTracker$Debug;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    .line 743
    invoke-static {v1}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOrigin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mOrigin:I

    .line 744
    invoke-static {v1}, Landroid/view/inputmethod/ImeTracker$Debug;->originToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mReason:I

    .line 745
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPhase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    .line 746
    invoke-static {v1}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFromUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFromUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRequestWindowName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStartWallTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartWallTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mStartTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartTimestampMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFinishTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFinishTimestampMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFinished:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
