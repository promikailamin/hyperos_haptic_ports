.class public Lcom/android/server/lineage/display/LiveDisplayService$State;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"


# instance fields
.field public mLowPowerMode:Z

.field public mMode:I

.field public mScreenOn:Z

.field public mTwilight:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mLowPowerMode:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mScreenOn:Z

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mMode:I

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 116
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-boolean v1, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mLowPowerMode:Z

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mScreenOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 119
    iget-object p0, p0, Lcom/android/server/lineage/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    if-nez p0, :cond_1b

    const-string p0, "NULL"

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1f
    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 116
    const-string v1, "[mLowPowerMode=%b, mScreenOn=%b, mMode=%d, mTwilight=%s"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
