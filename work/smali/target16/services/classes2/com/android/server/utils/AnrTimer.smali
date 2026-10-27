.class public Lcom/android/server/utils/AnrTimer;
.super Ljava/lang/Object;
.source "AnrTimer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field public static final sAnrTimerList:Landroid/util/LongSparseArray;

.field public static final sComparator:Ljava/util/Comparator;

.field public static final sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

.field public static final sErrors:Lcom/android/internal/util/RingBuffer;


# instance fields
.field public final mArgs:Lcom/android/server/utils/AnrTimer$Args;

.field public final mExpiredTimers:Landroid/util/SparseArray;

.field public final mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

.field public final mHandler:Landroid/os/Handler;

.field public final mLabel:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mMaxStarted:I

.field public final mTimerArgMap:Landroid/util/SparseArray;

.field public final mTimerIdMap:Landroid/util/ArrayMap;

.field public mTotalErrors:I

.field public mTotalExpired:I

.field public mTotalStarted:I

.field public final mWhat:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mArgs:Lcom/android/server/utils/AnrTimer$Args;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExpiredTimers(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mExpiredTimers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLabel(Lcom/android/server/utils/AnrTimer;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxStarted(Lcom/android/server/utils/AnrTimer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimerArgMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mTimerIdMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalErrors(Lcom/android/server/utils/AnrTimer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalExpired(Lcom/android/server/utils/AnrTimer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTotalStarted(Lcom/android/server/utils/AnrTimer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWhat(Lcom/android/server/utils/AnrTimer;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmMaxStarted(Lcom/android/server/utils/AnrTimer;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTotalStarted(Lcom/android/server/utils/AnrTimer;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnativeAnrTimerCreate(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Z[I[IZ)J
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerCreate(Ljava/lang/String;Z[I[IZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->notFoundLocked(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsDefaultInjector()Lcom/android/server/utils/AnrTimer$Injector;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerAccept(JI)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerAccept(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerCancel(JI)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerCancel(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerClose(J)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerClose(J)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerDiscard(JI)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerDiscard(JI)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerDump(J)[Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerDump(J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerSetTime(JJ)Z
    .registers 4

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerSetTime(JJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeAnrTimerStart(JIIJ)I
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerStart(JIIJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smtrace(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/utils/AnrTimer;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 149
    new-instance v0, Lcom/android/server/utils/AnrTimer$Injector;

    invoke-direct {v0}, Lcom/android/server/utils/AnrTimer$Injector;-><init>()V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    .line 373
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/utils/AnrTimer$Error;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    .line 592
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    .line 1056
    new-instance v0, Lcom/android/server/utils/AnrTimer$1;

    invoke-direct {v0}, Lcom/android/server/utils/AnrTimer$1;-><init>()V

    .line 1057
    invoke-static {v0}, Ljava/util/Comparator;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/AnrTimer;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V
    .registers 6

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    .line 379
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mTimerIdMap:Landroid/util/ArrayMap;

    .line 383
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    .line 387
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/AnrTimer;->mExpiredTimers:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 391
    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mMaxStarted:I

    .line 395
    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalStarted:I

    .line 399
    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    .line 403
    iput v0, p0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    .line 440
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    .line 441
    iput p2, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    .line 442
    iput-object p3, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 443
    iput-object p4, p0, Lcom/android/server/utils/AnrTimer;->mArgs:Lcom/android/server/utils/AnrTimer$Args;

    .line 444
    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer;->createFeatureSwitch()Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;Z)V
    .registers 3

    .line 1091
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sDefaultInjector:Lcom/android/server/utils/AnrTimer$Injector;

    invoke-static {p0, p1, v0}, Lcom/android/server/utils/AnrTimer;->dump(Ljava/io/PrintWriter;ZLcom/android/server/utils/AnrTimer$Injector;)V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;ZLcom/android/server/utils/AnrTimer$Injector;)V
    .registers 10

    .line 1066
    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1067
    const-string p0, "AnrTimer statistics"

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1069
    sget-object p0, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    monitor-enter p0

    .line 1072
    :try_start_10
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1073
    new-array v1, v0, [Lcom/android/server/utils/AnrTimer;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_19
    if-ge v3, v0, :cond_36

    .line 1076
    sget-object v5, Lcom/android/server/utils/AnrTimer;->sAnrTimerList:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/utils/AnrTimer;

    if-eqz v5, :cond_33

    add-int/lit8 v6, v4, 0x1

    .line 1077
    aput-object v5, v1, v4

    move v4, v6

    goto :goto_33

    :catchall_31
    move-exception p1

    goto :goto_59

    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1079
    :cond_36
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sComparator:Ljava/util/Comparator;

    invoke-static {v1, v2, v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v0, v2

    :goto_3c
    if-ge v0, v4, :cond_48

    .line 1081
    aget-object v3, v1, v0

    if-eqz v3, :cond_45

    invoke-virtual {v3, p2}, Lcom/android/server/utils/AnrTimer;->dump(Landroid/util/IndentingPrintWriter;)V

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 1083
    :cond_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_10 .. :try_end_49} :catchall_31

    if-eqz p1, :cond_4e

    .line 1084
    invoke-static {p2}, Lcom/android/server/utils/AnrTimer;->dumpErrors(Landroid/util/IndentingPrintWriter;)V

    .line 1085
    :cond_4e
    const-string p0, "AnrTimerEnd\n"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1086
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 1083
    :goto_59
    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_31

    throw p1
.end method

.method public static dumpErrors(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 1017
    sget-object v0, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    monitor-enter v0

    .line 1018
    :try_start_3
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v1

    if-nez v1, :cond_d

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_2e

    .line 1019
    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/utils/AnrTimer$Error;

    .line 1020
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_b

    .line 1021
    const-string v0, "Errors"

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 1023
    :goto_1d
    array-length v2, v1

    if-ge v0, v2, :cond_2a

    .line 1024
    aget-object v2, v1, v0

    if-eqz v2, :cond_27

    invoke-static {v2, p0, v0}, Lcom/android/server/utils/AnrTimer$Error;->-$$Nest$mdump(Lcom/android/server/utils/AnrTimer$Error;Landroid/util/IndentingPrintWriter;I)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1026
    :cond_2a
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 1020
    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_b

    throw p0
.end method

.method private expire(IIIJJ)Z
    .registers 17

    .line 889
    const-string v0, "expired"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v2, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, p2, p3, v2, v3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/utils/AnrTimer;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    iget-object p2, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 892
    :try_start_1e
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_47

    .line 894
    const-string p3, "AnrTimer"

    const-string v2, "failed to expire timer %s:%d : arg not found"

    iget-object v3, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 895
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 894
    invoke-static {v2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    .line 897
    monitor-exit p2

    return v0

    :catchall_44
    move-exception v0

    move-object p0, v0

    goto :goto_6a

    .line 899
    :cond_47
    iget-object v2, p0, Lcom/android/server/utils/AnrTimer;->mExpiredTimers:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/utils/AnrTimer$ExpiredTimer;

    move v4, p1

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/server/utils/AnrTimer$ExpiredTimer;-><init>(IJJ)V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 900
    iget p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalExpired:I

    .line 901
    monitor-exit p2
    :try_end_5a
    .catchall {:try_start_1e .. :try_end_5a} :catchall_44

    .line 902
    iget-object p1, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    iget p2, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    invoke-static {p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 906
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 907
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v1

    .line 901
    :goto_6a
    :try_start_6a
    monitor-exit p2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_44

    throw p0
.end method

.method public static expiredTimer(Lcom/android/internal/os/TimeoutRecord;)Lcom/android/server/utils/AnrTimer$ExpiredTimer;
    .registers 2

    .line 974
    invoke-virtual {p0}, Lcom/android/internal/os/TimeoutRecord;->getExpiredTimer()Ljava/lang/Object;

    move-result-object p0

    .line 975
    instance-of v0, p0, Lcom/android/server/utils/AnrTimer$ExpiredTimer;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/server/utils/AnrTimer$ExpiredTimer;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native nativeAnrTimerAccept(JI)Z
.end method

.method private static native nativeAnrTimerCancel(JI)Z
.end method

.method private static native nativeAnrTimerClose(J)I
.end method

.method private native nativeAnrTimerCreate(Ljava/lang/String;Z[I[IZ)J
.end method

.method private static native nativeAnrTimerDiscard(JI)Z
.end method

.method private static native nativeAnrTimerDump(J)[Ljava/lang/String;
.end method

.method private static native nativeAnrTimerSetTime(JJ)Z
.end method

.method private static native nativeAnrTimerStart(JIIJ)I
.end method

.method private static native nativeAnrTimerSupported()Z
.end method

.method private static native nativeAnrTimerTrace([Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static nativeTimersSupported()Z
    .registers 1

    .line 1112
    :try_start_0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerSupported()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    :catch_5
    const/4 v0, 0x0

    return v0
.end method

.method private notifyEarly(IIIJI)V
    .registers 14

    const/16 v0, 0x4d54

    if-ne p6, v0, :cond_36

    .line 927
    const-string/jumbo v0, "notifyEarly"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/utils/AnrTimer;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    long-to-double p0, p4

    const-wide/high16 p3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr p0, p3

    const-wide p3, 0x408f400000000000L    # 1000.0

    .line 929
    invoke-static {p3, p4, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-int p0, p0

    .line 928
    invoke-static {p2, p0}, Lcom/android/server/utils/LongMethodTracer;->trigger(II)Z

    return-void

    .line 936
    :cond_36
    iget-object p2, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 937
    :try_start_39
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer;->mTimerArgMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_61

    .line 939
    const-string p3, "AnrTimer"

    const-string p4, "failed early notiffor for timer %s:%d : arg not found"

    iget-object p5, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    .line 940
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p5, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 939
    invoke-static {p4, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    .line 942
    monitor-exit p2

    return-void

    :catchall_5e
    move-exception v0

    move-object p0, v0

    goto :goto_72

    .line 944
    :cond_61
    monitor-exit p2
    :try_end_62
    .catchall {:try_start_39 .. :try_end_62} :catchall_5e

    .line 946
    iget-object p1, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    iget p2, p0, Lcom/android/server/utils/AnrTimer;->mWhat:I

    invoke-static {p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 949
    iput p6, p1, Landroid/os/Message;->arg1:I

    .line 950
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 944
    :goto_72
    :try_start_72
    monitor-exit p2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_5e

    throw p0
.end method

.method public static varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 494
    new-instance v0, Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ")"

    const-string v2, ","

    invoke-direct {v0, v2, p0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 496
    array-length p0, p1

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, p0, :cond_2a

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 498
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x40

    .line 499
    const-string p1, "AnrTimerTrack"

    invoke-static {v0, v1, p1, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static traceFeatureEnabled()Z
    .registers 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public static traceTimers([Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1103
    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->nativeAnrTimerTrace([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Lcom/android/internal/os/TimeoutRecord;)V
    .registers 3

    .line 857
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$ExpiredTimer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/os/TimeoutRecord;->setExpiredTimer(Ljava/lang/Object;)Lcom/android/internal/os/TimeoutRecord;

    return-void
.end method

.method public cancel(Ljava/lang/Object;)Z
    .registers 2

    .line 840
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->cancel(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .registers 1

    .line 957
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->close()V

    return-void
.end method

.method public final createFeatureSwitch()Lcom/android/server/utils/AnrTimer$FeatureSwitch;
    .registers 4

    .line 451
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mArgs:Lcom/android/server/utils/AnrTimer$Args;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer$Args;->-$$Nest$fgetmEnable(Lcom/android/server/utils/AnrTimer$Args;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/android/server/utils/AnrTimer;->nativeTimersSupported()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 456
    :try_start_f
    new-instance v0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;

    invoke-direct {v0, p0}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;-><init>(Lcom/android/server/utils/AnrTimer;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    .line 460
    const-string v2, "AnrTimer"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    invoke-direct {v0, p0, v1}, Lcom/android/server/utils/AnrTimer$FeatureDisabled;-><init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V

    return-object v0

    .line 453
    :cond_25
    new-instance v0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;

    invoke-direct {v0, p0, v1}, Lcom/android/server/utils/AnrTimer$FeatureDisabled;-><init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V

    return-object v0
.end method

.method public discard(Ljava/lang/Object;)Z
    .registers 2

    .line 874
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->discard(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 997
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    :try_start_3
    const-string/jumbo v1, "timer: %s\n"

    iget-object v2, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 999
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1000
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 1001
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1002
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public finalize()V
    .registers 1

    .line 989
    invoke-virtual {p0}, Lcom/android/server/utils/AnrTimer;->close()V

    .line 990
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getPid(Ljava/lang/Object;)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getUid(Ljava/lang/Object;)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final notFoundLocked(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1052
    const-string/jumbo v0, "notFound"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/utils/AnrTimer;->recordErrorLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final recordErrorLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 11

    .line 1037
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1038
    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 p3, 0x6

    const/16 v1, 0x9

    .line 1041
    invoke-static {v0, p3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, [Ljava/lang/StackTraceElement;

    .line 1042
    sget-object p3, Lcom/android/server/utils/AnrTimer;->sErrors:Lcom/android/internal/util/RingBuffer;

    monitor-enter p3

    .line 1043
    :try_start_19
    new-instance v1, Lcom/android/server/utils/AnrTimer$Error;

    iget-object v4, p0, Lcom/android/server/utils/AnrTimer;->mLabel:Ljava/lang/String;

    move-object v3, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/utils/AnrTimer$Error;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 1044
    monitor-exit p3
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_2d

    .line 1046
    iget p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/utils/AnrTimer;->mTotalErrors:I

    return-void

    :catchall_2d
    move-exception v0

    move-object p0, v0

    .line 1044
    :try_start_2f
    monitor-exit p3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2d

    throw p0
.end method

.method public setTime(J)V
    .registers 3

    .line 966
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->setTime(J)V

    return-void
.end method

.method public start(Ljava/lang/Object;IIJ)V
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gez v2, :cond_7

    move-wide p4, v0

    .line 825
    :cond_7
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer;->mFeature:Lcom/android/server/utils/AnrTimer$FeatureSwitch;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;->start(Ljava/lang/Object;IIJ)V

    return-void
.end method

.method public start(Ljava/lang/Object;J)V
    .registers 10

    .line 808
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->getPid(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->getUid(Ljava/lang/Object;)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/utils/AnrTimer;->start(Ljava/lang/Object;IIJ)V

    return-void
.end method
