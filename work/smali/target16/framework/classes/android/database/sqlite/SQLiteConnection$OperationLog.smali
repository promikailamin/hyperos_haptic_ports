.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OperationLog"
.end annotation


# static fields
.field private static final greylist-max-o COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final greylist-max-o COOKIE_INDEX_MASK:I = 0xff

.field private static final blacklist LONG_OPERATION_THRESHOLD_MS:J = 0x7d0L

.field private static final blacklist MAX_LONG_OPERATIONS:I = 0xa

.field private static final greylist-max-o MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private greylist-max-o mGeneration:I

.field private greylist-max-o mIndex:I

.field private final blacklist mLongLimiter:Landroid/database/sqlite/SQLiteConnection$RateLimiter;

.field private final blacklist mLongOperations:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/database/sqlite/SQLiteConnection$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

.field private blacklist mResultLong:J

.field private blacklist mResultString:Ljava/lang/String;

.field private blacklist mTotalLongOperations:I

.field private final blacklist mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

.field final synthetic blacklist this$0:Landroid/database/sqlite/SQLiteConnection;


# direct methods
.method public static synthetic blacklist $r8$lambda$Xgq3hBDEhM_ztShleD13PdzKmX4(Landroid/database/sqlite/SQLiteConnection$OperationLog;)Landroid/database/sqlite/SQLiteConnection$Operation;
    .registers 1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->lambda$new$0()Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1705
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1714
    const/16 p1, 0x14

    new-array p1, p1, [Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    .line 1715
    const/4 p1, -0x1

    iput p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1716
    const/4 p1, 0x0

    iput p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    .line 1717
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$Operation;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection-IA;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    .line 1718
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 1721
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    new-instance v1, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda0;-><init>(Landroid/database/sqlite/SQLiteConnection$OperationLog;)V

    new-instance v2, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog$$ExternalSyntheticLambda1;-><init>()V

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/util/function/Supplier;Ljava/util/function/IntFunction;I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    .line 1725
    iput p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    .line 1728
    new-instance p1, Landroid/database/sqlite/SQLiteConnection$RateLimiter;

    const-wide/32 v0, 0x493e0

    invoke-direct {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteConnection$RateLimiter;-><init>(JI)V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongLimiter:Landroid/database/sqlite/SQLiteConnection$RateLimiter;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>(Landroid/database/sqlite/SQLiteConnection;)V

    return-void
.end method

.method private blacklist dumpIfNotRecentLocked(Landroid/util/Printer;Landroid/database/sqlite/SQLiteConnection$Operation;I)I
    .registers 5

    .line 1912
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteConnection$Operation;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 1915
    :cond_11
    invoke-virtual {p2, p3}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1916
    const/4 p1, 0x1

    return p1

    .line 1913
    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist dumpLongLocked(Landroid/util/Printer;)V
    .registers 5

    .line 1949
    const-string v0, "  Operations exceeding 2000ms:"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1950
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1951
    const-string v0, "    <none>"

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1952
    return-void

    .line 1954
    :cond_13
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    .line 1955
    const/4 v1, 0x0

    :goto_1c
    array-length v2, v0

    if-ge v1, v2, :cond_2f

    .line 1956
    aget-object v2, v0, v1

    if-eqz v2, :cond_2c

    .line 1957
    aget-object v2, v0, v1

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1955
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1960
    :cond_2f
    return-void
.end method

.method private blacklist dumpRecentLocked(Landroid/util/Printer;)V
    .registers 8

    .line 1920
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1921
    :try_start_3
    const-string v1, "  Most recently executed operations:"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1922
    iget v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1923
    if-nez v1, :cond_13

    .line 1924
    const-string v1, "    <none>"

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1925
    monitor-exit v0

    return-void

    .line 1929
    :cond_13
    nop

    .line 1930
    nop

    .line 1931
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    move v4, v3

    .line 1933
    :cond_1b
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1935
    if-lez v1, :cond_27

    .line 1936
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 1938
    :cond_27
    const/16 v1, 0x13

    .line 1940
    :goto_29
    add-int/lit8 v4, v4, 0x1

    .line 1941
    add-int/lit8 v3, v3, 0x1

    .line 1942
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v2, v2, v1

    .line 1943
    if-eqz v2, :cond_37

    const/16 v5, 0x14

    if-lt v4, v5, :cond_1b

    .line 1944
    :cond_37
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {p0, p1, v1, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dumpIfNotRecentLocked(Landroid/util/Printer;Landroid/database/sqlite/SQLiteConnection$Operation;I)I

    .line 1945
    monitor-exit v0

    .line 1946
    return-void

    .line 1945
    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method private greylist-max-o endOperationDeferLogLocked(I)Z
    .registers 7

    .line 1843
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p1

    .line 1844
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    .line 1845
    iget-boolean v1, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    if-eqz v1, :cond_17

    .line 1846
    invoke-static {p1}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    const-wide/32 v3, 0x100000

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1849
    :cond_17
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->finishOperationLocked(Landroid/database/sqlite/SQLiteConnection$Operation;)J

    move-result-wide v1

    .line 1850
    iget-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {p1}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$fgetmPool(Landroid/database/sqlite/SQLiteConnection;)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->onStatementExecuted(J)V

    .line 1851
    sget-boolean p1, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz p1, :cond_2f

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    return v0

    .line 1854
    :cond_30
    return v0
.end method

.method private blacklist finishOperationLocked(Landroid/database/sqlite/SQLiteConnection$Operation;)J
    .registers 7

    .line 1876
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 1877
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 1878
    iget-wide v1, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v3, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v1, v3

    .line 1879
    const-wide/16 v3, 0x7d0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4c

    .line 1880
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongOperations:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteConnection$Operation;->copyFrom(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    .line 1881
    iget p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    .line 1882
    iget-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mLongLimiter:Landroid/database/sqlite/SQLiteConnection$RateLimiter;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection$RateLimiter;->tryAcquire()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 1883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Long db operation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$fgetmConfiguration(Landroid/database/sqlite/SQLiteConnection;)Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SQLiteConnection"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :cond_4c
    return-wide v1
.end method

.method private greylist-max-o getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .registers 4

    .line 1890
    and-int/lit16 v0, p1, 0xff

    .line 1891
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v0, v1, v0

    .line 1892
    if-eqz v0, :cond_d

    iget v1, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v1, p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method private synthetic blacklist lambda$new$0()Landroid/database/sqlite/SQLiteConnection$Operation;
    .registers 4

    .line 1722
    new-instance v0, Landroid/database/sqlite/SQLiteConnection$Operation;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection-IA;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(I)[Landroid/database/sqlite/SQLiteConnection$Operation;
    .registers 1

    .line 1723
    new-array p0, p0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    return-object p0
.end method

.method private greylist-max-o logOperationLocked(ILjava/lang/String;)V
    .registers 5

    .line 1858
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p1

    .line 1859
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    iput-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 1860
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1862
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1863
    if-eqz p2, :cond_20

    .line 1864
    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    :cond_20
    const-string p1, "SQLiteConnection"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    return-void
.end method

.method private greylist-max-o newOperationCookieLocked(I)I
    .registers 4

    .line 1870
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    .line 1871
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method private blacklist newOperationLocked()Landroid/database/sqlite/SQLiteConnection$Operation;
    .registers 6

    .line 1779
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x14

    .line 1780
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v1, v0

    .line 1781
    if-nez v1, :cond_1c

    .line 1782
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    new-instance v2, Landroid/database/sqlite/SQLiteConnection$Operation;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->this$0:Landroid/database/sqlite/SQLiteConnection;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection-IA;)V

    aput-object v2, v1, v0

    .line 1783
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v1, v0

    .line 1785
    :cond_1c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->start()V

    .line 1786
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v2

    iput v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 1787
    iput v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    .line 1788
    return-object v1
.end method


# virtual methods
.method public greylist-max-o beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 7

    .line 1731
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 1732
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    .line 1734
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1735
    :try_start_a
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationLocked()Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    .line 1736
    iput-object p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1737
    iput-object p2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 1738
    if-eqz p3, :cond_3d

    .line 1739
    iget-object p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez p1, :cond_1f

    .line 1740
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    .line 1742
    :cond_1f
    const/4 p1, 0x0

    :goto_20
    array-length p2, p3

    if-ge p1, p2, :cond_3d

    .line 1743
    aget-object p2, p3, p1

    .line 1744
    if-eqz p2, :cond_35

    instance-of v2, p2, [B

    if-eqz v2, :cond_35

    .line 1746
    iget-object p2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$sfgetEMPTY_BYTE_ARRAY()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 1748
    :cond_35
    iget-object v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    :goto_3a
    add-int/lit8 p1, p1, 0x1

    goto :goto_20

    .line 1752
    :cond_3d
    const-wide/32 p1, 0x100000

    invoke-static {p1, p2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p3

    iput-boolean p3, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    .line 1753
    iget-boolean p3, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    if-eqz p3, :cond_53

    .line 1754
    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object p3

    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {p1, p2, p3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1757
    :cond_53
    iget p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    monitor-exit v0

    return p1

    .line 1758
    :catchall_57
    move-exception p1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_a .. :try_end_59} :catchall_57

    throw p1
.end method

.method public blacklist beginTransaction(Ljava/lang/String;)V
    .registers 6

    .line 1762
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1763
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationLocked()Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    .line 1764
    iput-object p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 1765
    iget-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->copyFrom(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    .line 1767
    iget-boolean p1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    if-eqz p1, :cond_1e

    .line 1768
    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->-$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object p1

    iget v1, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, p1, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1771
    :cond_1e
    monitor-exit v0

    .line 1772
    return-void

    .line 1771
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public greylist-max-o describeCurrentOperation()Ljava/lang/String;
    .registers 5

    .line 1896
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1897
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iget v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v1, v2

    .line 1898
    if-eqz v1, :cond_1e

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v2, :cond_1e

    .line 1899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1900
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 1901
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1903
    :cond_1e
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1904
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist dump(Landroid/util/Printer;)V
    .registers 3

    .line 1967
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1968
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dumpRecentLocked(Landroid/util/Printer;)V

    .line 1969
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dumpLongLocked(Landroid/util/Printer;)V

    .line 1970
    monitor-exit v0

    .line 1971
    return-void

    .line 1970
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public greylist-max-o endOperation(I)V
    .registers 4

    .line 1801
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1802
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1803
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1805
    :cond_d
    monitor-exit v0

    .line 1806
    return-void

    .line 1805
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public greylist-max-o endOperationDeferLog(I)Z
    .registers 3

    .line 1809
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1810
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1811
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public blacklist endTransaction(Z)Z
    .registers 6

    .line 1815
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1816
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    if-eqz p1, :cond_a

    const-wide/16 v2, 0x1

    goto :goto_c

    :cond_a
    const-wide/16 v2, 0x0

    :goto_c
    iput-wide v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 1817
    iget-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->finishOperationLocked(Landroid/database/sqlite/SQLiteConnection$Operation;)J

    move-result-wide v1

    .line 1818
    iget-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    iget p1, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p1

    .line 1819
    if-eqz p1, :cond_23

    .line 1820
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->copyFrom(Landroid/database/sqlite/SQLiteConnection$Operation;)V

    .line 1822
    :cond_23
    iget-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTransaction:Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteConnection$Operation;->setEmpty()V

    .line 1823
    sget-boolean p1, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz p1, :cond_34

    .line 1824
    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    monitor-exit v0

    .line 1823
    return p1

    .line 1825
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public greylist-max-o failOperation(ILjava/lang/Exception;)V
    .registers 4

    .line 1792
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1793
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object p1

    .line 1794
    if-eqz p1, :cond_b

    .line 1795
    iput-object p2, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 1797
    :cond_b
    monitor-exit v0

    .line 1798
    return-void

    .line 1797
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public blacklist getTotalLongOperations()J
    .registers 3

    .line 1963
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mTotalLongOperations:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public greylist-max-o logOperation(ILjava/lang/String;)V
    .registers 4

    .line 1829
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    .line 1830
    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V

    .line 1831
    monitor-exit v0

    .line 1832
    return-void

    .line 1831
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public blacklist setResult(J)V
    .registers 3

    .line 1835
    iput-wide p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultLong:J

    .line 1836
    return-void
.end method

.method public blacklist setResult(Ljava/lang/String;)V
    .registers 2

    .line 1839
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mResultString:Ljava/lang/String;

    .line 1840
    return-void
.end method
