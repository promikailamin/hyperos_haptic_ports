.class Lcom/android/server/tare/Agent$TotalDeltaCalculator;
.super Ljava/lang/Object;
.source "Agent.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TotalDeltaCalculator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/tare/Agent$OngoingEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mLedger:Lcom/android/server/tare/Ledger;

.field private mNow:J

.field private mNowElapsed:J

.field private mTotal:J

.field final synthetic this$0:Lcom/android/server/tare/Agent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTotal(Lcom/android/server/tare/Agent$TotalDeltaCalculator;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mTotal:J

    return-wide v0
.end method

.method private constructor <init>(Lcom/android/server/tare/Agent;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->this$0:Lcom/android/server/tare/Agent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$TotalDeltaCalculator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;-><init>(Lcom/android/server/tare/Agent;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/tare/Agent$OngoingEvent;)V
    .registers 11
    .param p1, "ongoingEvent"    # Lcom/android/server/tare/Agent$OngoingEvent;

    .line 140
    iget-wide v0, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mTotal:J

    iget-object v2, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->this$0:Lcom/android/server/tare/Agent;

    iget-object v4, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mLedger:Lcom/android/server/tare/Ledger;

    iget-wide v5, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mNowElapsed:J

    iget-wide v7, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mNow:J

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/tare/Agent;->-$$Nest$mgetActualDeltaLocked(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mTotal:J

    .line 141
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 125
    check-cast p1, Lcom/android/server/tare/Agent$OngoingEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->accept(Lcom/android/server/tare/Agent$OngoingEvent;)V

    return-void
.end method

.method reset(Lcom/android/server/tare/Ledger;JJ)V
    .registers 8
    .param p1, "ledger"    # Lcom/android/server/tare/Ledger;
    .param p2, "nowElapsed"    # J
    .param p4, "now"    # J

    .line 132
    iput-object p1, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mLedger:Lcom/android/server/tare/Ledger;

    .line 133
    iput-wide p2, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mNowElapsed:J

    .line 134
    iput-wide p4, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mNow:J

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mTotal:J

    .line 136
    return-void
.end method
