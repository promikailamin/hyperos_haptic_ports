.class Lcom/android/server/tare/Agent$OngoingEvent;
.super Ljava/lang/Object;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OngoingEvent"
.end annotation


# instance fields
.field public final actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

.field public final eventId:I

.field public refCount:I

.field public final reward:Lcom/android/server/tare/EconomicPolicy$Reward;

.field public final startTimeElapsed:J

.field public final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Cost;)V
    .registers 7
    .param p1, "eventId"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "startTimeElapsed"    # J
    .param p5, "actionCost"    # Lcom/android/server/tare/EconomicPolicy$Cost;

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput-wide p3, p0, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    .line 930
    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    .line 931
    iput-object p2, p0, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    .line 933
    iput-object p5, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    .line 934
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    .line 935
    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLcom/android/server/tare/EconomicPolicy$Reward;)V
    .registers 7
    .param p1, "eventId"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "startTimeElapsed"    # J
    .param p5, "reward"    # Lcom/android/server/tare/EconomicPolicy$Reward;

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 919
    iput-wide p3, p0, Lcom/android/server/tare/Agent$OngoingEvent;->startTimeElapsed:J

    .line 920
    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    .line 921
    iput-object p2, p0, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    .line 922
    iput-object p5, p0, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    .line 924
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->refCount:I

    .line 925
    return-void
.end method


# virtual methods
.method getCtpPerSec()J
    .registers 3

    .line 949
    iget-object v0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    if-eqz v0, :cond_7

    .line 950
    iget-wide v0, v0, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    return-wide v0

    .line 952
    :cond_7
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getDeltaPerSec()J
    .registers 3

    .line 938
    iget-object v0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->actionCost:Lcom/android/server/tare/EconomicPolicy$Cost;

    if-eqz v0, :cond_8

    .line 939
    iget-wide v0, v0, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    neg-long v0, v0

    return-wide v0

    .line 941
    :cond_8
    iget-object v0, p0, Lcom/android/server/tare/Agent$OngoingEvent;->reward:Lcom/android/server/tare/EconomicPolicy$Reward;

    if-eqz v0, :cond_f

    .line 942
    iget-wide v0, v0, Lcom/android/server/tare/EconomicPolicy$Reward;->ongoingRewardPerSecond:J

    return-wide v0

    .line 944
    :cond_f
    invoke-static {}, Lcom/android/server/tare/Agent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No action or reward in ongoing event?!??!"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const-wide/16 v0, 0x0

    return-wide v0
.end method
