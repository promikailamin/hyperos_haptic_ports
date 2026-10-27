.class final Landroid/database/sqlite/SQLiteConnection$Operation;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Operation"
.end annotation


# static fields
.field private static final blacklist EMPTY_OPERATION:J = -0x1L

.field private static final greylist-max-o MAX_TRACE_METHOD_NAME_LEN:I = 0x100

.field private static final blacklist sDateTime:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public greylist-max-o mBindArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o mCookie:I

.field public greylist-max-o mEndTime:J

.field public greylist-max-o mException:Ljava/lang/Exception;

.field public greylist-max-o mFinished:Z

.field public greylist-max-o mKind:Ljava/lang/String;

.field public blacklist mResultLong:J

.field public blacklist mResultString:Ljava/lang/String;

.field public greylist-max-o mSql:Ljava/lang/String;

.field public greylist-max-o mStartTime:J

.field public greylist-max-o mStartWallTime:J

.field public blacklist mTraced:Z

.field final synthetic blacklist this$0:Landroid/database/sqlite/SQLiteConnection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetTraceMethodName(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$Operation;->getTraceMethodName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1985
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1986
    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-static {v1, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteConnection$Operation;->sDateTime:Ljava/time/format/DateTimeFormatter;

    .line 1985
    return-void
.end method

.method private constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1974
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>(Landroid/database/sqlite/SQLiteConnection;)V

    return-void
.end method

.method private greylist-max-o getStatus()Ljava/lang/String;
    .registers 2

    .line 2108
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-nez v0, :cond_8

    .line 2109
    const-string/jumbo v0, "running"

    return-object v0

    .line 2111
    :cond_8
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_f

    const-string v0, "failed"

    goto :goto_12

    :cond_f
    const-string/jumbo v0, "succeeded"

    :goto_12
    return-object v0
.end method

.method private greylist-max-o getTraceMethodName()Ljava/lang/String;
    .registers 4

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_29

    .line 2117
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2118
    :cond_29
    return-object v0
.end method

.method private blacklist timeString(J)Ljava/lang/String;
    .registers 5

    .line 2096
    sget-object v0, Landroid/database/sqlite/SQLiteConnection$Operation;->sDateTime:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method blacklist copyFrom(Landroid/database/sqlite/SQLiteConnection$Operation;)V
    .registers 4

    .line 2022
    iget-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    .line 2023
    iget-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 2024
    iget-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 2025
    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 2026
    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 2027
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    .line 2028
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 2029
    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 2030
    iget v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 2031
    iget-wide v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 2032
    iget-object v0, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    .line 2033
    iget-boolean p1, p1, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    .line 2034
    return-void
.end method

.method public blacklist describe(I)Ljava/lang/String;
    .registers 5

    .line 2100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2101
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    invoke-direct {p0, v1, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->timeString(J)Ljava/lang/String;

    move-result-object v1

    .line 2102
    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    .line 2104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o describe(Ljava/lang/StringBuilder;Z)V
    .registers 9

    .line 2047
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    if-eqz v0, :cond_1f

    .line 2049
    const-string v0, " took "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 2051
    :cond_1f
    const-string v0, " started "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2052
    const-string/jumbo v1, "ms ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    :goto_36
    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection$Operation;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    const-string v1, "\""

    if-eqz v0, :cond_5c

    .line 2056
    const-string v0, ", sql=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$smtrimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    :cond_5c
    const/4 v0, 0x0

    if-eqz p2, :cond_71

    sget-boolean p2, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_DETAILED:Z

    if-eqz p2, :cond_71

    iget-object p2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz p2, :cond_71

    iget-object p2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    .line 2059
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_71

    const/4 p2, 0x1

    goto :goto_72

    :cond_71
    move p2, v0

    .line 2060
    :goto_72
    if-eqz p2, :cond_bf

    .line 2061
    const-string p2, ", bindArgs=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    iget-object p2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 2063
    nop

    :goto_80
    if-ge v0, p2, :cond_ba

    .line 2064
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 2065
    if-eqz v0, :cond_8f

    .line 2066
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    :cond_8f
    if-nez v2, :cond_98

    .line 2069
    const-string/jumbo v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 2070
    :cond_98
    instance-of v3, v2, [B

    if-eqz v3, :cond_a2

    .line 2071
    const-string v2, "<byte[]>"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 2072
    :cond_a2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_b4

    .line 2073
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b7

    .line 2075
    :cond_b4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2063
    :goto_b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 2078
    :cond_ba
    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    :cond_bf
    const-string p2, ", path="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->this$0:Landroid/database/sqlite/SQLiteConnection;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection;->-$$Nest$fgetmPool(Landroid/database/sqlite/SQLiteConnection;)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    iget-object p2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    if-eqz p2, :cond_e9

    .line 2082
    const-string p2, ", exception=\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    :cond_e9
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p2, v2, v4

    if-eqz p2, :cond_fc

    .line 2085
    const-string p2, ", result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2087
    :cond_fc
    iget-object p2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    if-eqz p2, :cond_10f

    .line 2088
    const-string p2, ", result=\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    :cond_10f
    return-void
.end method

.method blacklist isEmpty()Z
    .registers 5

    .line 2043
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist setEmpty()V
    .registers 3

    .line 2038
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    .line 2039
    return-void
.end method

.method blacklist start()V
    .registers 6

    .line 2003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    .line 2004
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    .line 2005
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    .line 2006
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    .line 2007
    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    .line 2008
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2009
    :cond_1e
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    .line 2010
    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    .line 2011
    const/4 v4, -0x1

    iput v4, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    .line 2012
    iput-wide v0, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultLong:J

    .line 2013
    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mResultString:Ljava/lang/String;

    .line 2014
    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection$Operation;->mTraced:Z

    .line 2015
    return-void
.end method
