.class Lcom/android/server/tare/Agent$OngoingEventUpdater;
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
    name = "OngoingEventUpdater"
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
.field private mNow:J

.field private mNowElapsed:J

.field private mPkgName:Ljava/lang/String;

.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/tare/Agent;


# direct methods
.method static bridge synthetic -$$Nest$mreset(Lcom/android/server/tare/Agent$OngoingEventUpdater;ILjava/lang/String;JJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->reset(ILjava/lang/String;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/tare/Agent;)V
    .registers 2

    .line 956
    iput-object p1, p0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->this$0:Lcom/android/server/tare/Agent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEventUpdater-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tare/Agent$OngoingEventUpdater;-><init>(Lcom/android/server/tare/Agent;)V

    return-void
.end method

.method private reset(ILjava/lang/String;JJ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "now"    # J
    .param p5, "nowElapsed"    # J

    .line 963
    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mUserId:I

    .line 964
    iput-object p2, p0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mPkgName:Ljava/lang/String;

    .line 965
    iput-wide p3, p0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mNow:J

    .line 966
    iput-wide p5, p0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mNowElapsed:J

    .line 967
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/tare/Agent$OngoingEvent;)V
    .registers 24
    .param p1, "ongoingEvent"    # Lcom/android/server/tare/Agent$OngoingEvent;

    .line 976
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 977
    .local v2, "updateBalanceCheck":Z
    iget-object v3, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->this$0:Lcom/android/server/tare/Agent;

    iget v4, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mUserId:I

    iget-object v5, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mPkgName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    iget-object v7, v1, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    iget-wide v8, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mNowElapsed:J

    iget-wide v10, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mNow:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/android/server/tare/Agent;->-$$Nest$mstopOngoingActionLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JJZZ)V

    .line 979
    iget-object v14, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->this$0:Lcom/android/server/tare/Agent;

    iget v15, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mUserId:I

    iget-object v3, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mPkgName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    iget-object v5, v1, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    iget-wide v6, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mNowElapsed:J

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    move-wide/from16 v19, v6

    invoke-static/range {v14 .. v21}, Lcom/android/server/tare/Agent;->-$$Nest$mnoteOngoingEventLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JZ)V

    .line 981
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 956
    check-cast p1, Lcom/android/server/tare/Agent$OngoingEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->accept(Lcom/android/server/tare/Agent$OngoingEvent;)V

    return-void
.end method
