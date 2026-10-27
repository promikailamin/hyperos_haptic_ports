.class public final Landroid/os/statistics/E2EScenarioSettings;
.super Ljava/lang/Object;
.source "E2EScenarioSettings.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/E2EScenarioSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATISTICS_MODE_ALL:I = 0x7

.field public static final blacklist STATISTICS_MODE_AVERAGE:I = 0x1

.field public static final blacklist STATISTICS_MODE_DISTRIBUTION:I = 0x4

.field public static final blacklist STATISTICS_MODE_HISTORY:I = 0x2

.field public static final blacklist STATISTICS_MODE_NONE:I = 0x0

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field public blacklist historyLimitPerDay:I

.field public blacklist isAutoAnalysisEnabled:Z

.field public blacklist slownessFloorThresholdMillis:I

.field public blacklist statisticsMode:I

.field public blacklist timeoutMillisOfAutoAnalysis:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Landroid/os/statistics/E2EScenarioSettings$1;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioSettings$1;-><init>()V

    sput-object v0, Landroid/os/statistics/E2EScenarioSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/E2EScenarioSettings;->statisticsMode:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/E2EScenarioSettings;->historyLimitPerDay:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-boolean v0, p0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/E2EScenarioSettings;->timeoutMillisOfAutoAnalysis:I

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 69
    new-instance v0, Landroid/os/statistics/E2EScenarioSettings;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioSettings;-><init>()V

    .line 71
    .local v0, "result":Landroid/os/statistics/E2EScenarioSettings;
    iget v1, p0, Landroid/os/statistics/E2EScenarioSettings;->statisticsMode:I

    iput v1, v0, Landroid/os/statistics/E2EScenarioSettings;->statisticsMode:I

    .line 72
    iget v1, p0, Landroid/os/statistics/E2EScenarioSettings;->historyLimitPerDay:I

    iput v1, v0, Landroid/os/statistics/E2EScenarioSettings;->historyLimitPerDay:I

    .line 74
    iget-boolean v1, p0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    iput-boolean v1, v0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    .line 75
    iget v1, p0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    iput v1, v0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    .line 76
    iget v1, p0, Landroid/os/statistics/E2EScenarioSettings;->timeoutMillisOfAutoAnalysis:I

    iput v1, v0, Landroid/os/statistics/E2EScenarioSettings;->timeoutMillisOfAutoAnalysis:I

    .line 77
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableAutoAnalysis(II)V
    .registers 4
    .param p1, "slownessFloorThresholdMillis"    # I
    .param p2, "timeoutMillisOfAutoAnalysis"    # I

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    .line 90
    iput p1, p0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    .line 91
    iput p2, p0, Landroid/os/statistics/E2EScenarioSettings;->timeoutMillisOfAutoAnalysis:I

    .line 92
    return-void
.end method

.method public blacklist isValid()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    if-gtz v0, :cond_a

    .line 62
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setHistoryLimitPerDay(I)V
    .registers 2
    .param p1, "historyLimitPerDay"    # I

    .line 85
    iput p1, p0, Landroid/os/statistics/E2EScenarioSettings;->historyLimitPerDay:I

    .line 86
    return-void
.end method

.method public blacklist setStatisticsMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 81
    iput p1, p0, Landroid/os/statistics/E2EScenarioSettings;->statisticsMode:I

    .line 82
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 101
    iget v0, p0, Landroid/os/statistics/E2EScenarioSettings;->statisticsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/os/statistics/E2EScenarioSettings;->historyLimitPerDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-boolean v0, p0, Landroid/os/statistics/E2EScenarioSettings;->isAutoAnalysisEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Landroid/os/statistics/E2EScenarioSettings;->slownessFloorThresholdMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/os/statistics/E2EScenarioSettings;->timeoutMillisOfAutoAnalysis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return-void
.end method
