.class Landroid/os/statistics/NativeBackTrace;
.super Ljava/lang/Object;
.source "NativeBackTrace.java"


# static fields
.field private static blacklist nativeBacktraceMapUpdated:Z


# instance fields
.field private blacklist mNativePtr:J


# direct methods
.method public constructor blacklist <init>(J)V
    .registers 3
    .param p1, "nativePtr"    # J

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    .line 14
    return-void
.end method

.method private static native blacklist nativeDispose(J)V
.end method

.method private static native blacklist nativeResolve(J)[Ljava/lang/String;
.end method

.method private static native blacklist nativeUpdateBacktraceMap()I
.end method

.method public static blacklist reset()V
    .registers 1

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/NativeBackTrace;->nativeBacktraceMapUpdated:Z

    .line 60
    return-void
.end method

.method public static blacklist resolve(Landroid/os/statistics/NativeBackTrace;)[Ljava/lang/String;
    .registers 2
    .param p0, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    sget-boolean v0, Landroid/os/statistics/NativeBackTrace;->nativeBacktraceMapUpdated:Z

    if-nez v0, :cond_e

    .line 46
    invoke-static {}, Landroid/os/statistics/NativeBackTrace;->updateBacktraceMap()I

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/statistics/NativeBackTrace;->nativeBacktraceMapUpdated:Z

    .line 49
    :cond_e
    invoke-virtual {p0}, Landroid/os/statistics/NativeBackTrace;->resolve()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist updateBacktraceMap()I
    .registers 1

    .line 54
    invoke-static {}, Landroid/os/statistics/NativeBackTrace;->nativeUpdateBacktraceMap()I

    move-result v0

    .line 55
    .local v0, "vmLibSize":I
    return v0
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 6

    .line 23
    iget-wide v0, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 24
    invoke-static {v0, v1}, Landroid/os/statistics/NativeBackTrace;->nativeDispose(J)V

    .line 25
    iput-wide v2, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    .line 27
    :cond_d
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Landroid/os/statistics/NativeBackTrace;->dispose()V

    .line 19
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 20
    return-void
.end method

.method public blacklist resolve()[Ljava/lang/String;
    .registers 5

    .line 30
    iget-wide v0, p0, Landroid/os/statistics/NativeBackTrace;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 31
    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v0

    .line 33
    :cond_b
    invoke-static {v0, v1}, Landroid/os/statistics/NativeBackTrace;->nativeResolve(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
