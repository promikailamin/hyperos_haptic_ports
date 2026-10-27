.class public final Landroid/app/AppCompatCallbacks;
.super Ljava/lang/Object;
.source "AppCompatCallbacks.java"

# interfaces
.implements Landroid/compat/Compatibility$BehaviorChangeDelegate;


# instance fields
.field private final blacklist mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

.field private final blacklist mDisabledChanges:[J

.field private blacklist mLogChangeChecksToStatsD:Z

.field private final blacklist mLoggableChanges:[J


# direct methods
.method private constructor blacklist <init>([J[JZ)V
    .registers 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AppCompatCallbacks;->mLogChangeChecksToStatsD:Z

    .line 65
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    .line 66
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Landroid/app/AppCompatCallbacks;->mLoggableChanges:[J

    .line 67
    iget-object p1, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 68
    iget-object p1, p0, Landroid/app/AppCompatCallbacks;->mLoggableChanges:[J

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 69
    new-instance p1, Lcom/android/internal/compat/ChangeReporter;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/android/internal/compat/ChangeReporter;-><init>(I)V

    iput-object p1, p0, Landroid/app/AppCompatCallbacks;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    .line 70
    iput-boolean p3, p0, Landroid/app/AppCompatCallbacks;->mLogChangeChecksToStatsD:Z

    .line 71
    return-void
.end method

.method private blacklist changeIdInChangeList([JJ)Z
    .registers 4

    .line 81
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public static blacklist install([J[J)V
    .registers 4

    .line 46
    new-instance v0, Landroid/app/AppCompatCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/app/AppCompatCallbacks;-><init>([J[JZ)V

    invoke-static {v0}, Landroid/compat/Compatibility;->setBehaviorChangeDelegate(Landroid/compat/Compatibility$BehaviorChangeDelegate;)V

    .line 48
    return-void
.end method

.method public static blacklist install([J[JZ)V
    .registers 4

    .line 59
    new-instance v0, Landroid/app/AppCompatCallbacks;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/AppCompatCallbacks;-><init>([J[JZ)V

    invoke-static {v0}, Landroid/compat/Compatibility;->setBehaviorChangeDelegate(Landroid/compat/Compatibility$BehaviorChangeDelegate;)V

    .line 61
    return-void
.end method

.method private blacklist isChangeEnabledAndReport(JZ)Z
    .registers 5

    .line 99
    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    invoke-direct {p0, v0, p1, p2}, Landroid/app/AppCompatCallbacks;->changeIdInChangeList([JJ)Z

    move-result v0

    .line 100
    if-nez v0, :cond_d

    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/app/AppCompatCallbacks;->reportChange(JIZ)V

    .line 103
    return v0

    .line 105
    :cond_d
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/app/AppCompatCallbacks;->reportChange(JIZ)V

    .line 106
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist reportChange(JIZ)V
    .registers 12

    .line 110
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 111
    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mChangeReporter:Lcom/android/internal/compat/ChangeReporter;

    const/4 v5, 0x0

    move-wide v2, p1

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/compat/ChangeReporter;->reportChange(IJIZZ)V

    .line 112
    return-void
.end method


# virtual methods
.method public blacklist test-api isChangeEnabled(J)Z
    .registers 5

    .line 89
    iget-boolean v0, p0, Landroid/app/AppCompatCallbacks;->mLogChangeChecksToStatsD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mLoggableChanges:[J

    .line 90
    invoke-direct {p0, v0, p1, p2}, Landroid/app/AppCompatCallbacks;->changeIdInChangeList([JJ)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    move v0, v1

    .line 91
    :goto_11
    if-nez v0, :cond_1b

    .line 92
    iget-object v0, p0, Landroid/app/AppCompatCallbacks;->mDisabledChanges:[J

    invoke-direct {p0, v0, p1, p2}, Landroid/app/AppCompatCallbacks;->changeIdInChangeList([JJ)Z

    move-result p1

    .line 93
    xor-int/2addr p1, v1

    return p1

    .line 95
    :cond_1b
    iget-boolean v0, p0, Landroid/app/AppCompatCallbacks;->mLogChangeChecksToStatsD:Z

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppCompatCallbacks;->isChangeEnabledAndReport(JZ)Z

    move-result p1

    return p1
.end method

.method public blacklist test-api onChangeReported(J)V
    .registers 4

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AppCompatCallbacks;->isChangeEnabledAndReport(JZ)Z

    .line 86
    return-void
.end method
