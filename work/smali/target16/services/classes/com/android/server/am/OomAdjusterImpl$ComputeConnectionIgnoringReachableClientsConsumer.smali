.class public Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;
.super Ljava/lang/Object;
.source "OomAdjusterImpl.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public hasReachableClient:Z

.field public mArgs:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

.field public final synthetic this$0:Lcom/android/server/am/OomAdjusterImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterImpl;)V
    .registers 2

    .line 519
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;->this$0:Lcom/android/server/am/OomAdjusterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 521
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;->mArgs:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    const/4 p1, 0x0

    .line 522
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;->hasReachableClient:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/OomAdjusterImpl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;-><init>(Lcom/android/server/am/OomAdjusterImpl;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/OomAdjusterImpl$Connection;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 14

    .line 531
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;->mArgs:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    iget-object v3, v0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 532
    iget-object v7, v0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 533
    iget-wide v5, v0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mNow:J

    .line 534
    iget v9, v0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mOomAdjReason:I

    .line 536
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x1

    .line 537
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;->hasReachableClient:Z

    return-void

    .line 541
    :cond_14
    invoke-static {p1, v3, p2}, Lcom/android/server/am/OomAdjusterImpl;->-$$Nest$smunimportantConnectionLSP(Lcom/android/server/am/OomAdjusterImpl$Connection;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 545
    :cond_1b
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;->this$0:Lcom/android/server/am/OomAdjusterImpl;

    const/4 v8, 0x0

    const/16 v10, 0x3e9

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v1 .. v10}, Lcom/android/server/am/OomAdjusterImpl$Connection;->computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;JLcom/android/server/am/psc/ProcessRecordInternal;ZII)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 519
    check-cast p1, Lcom/android/server/am/OomAdjusterImpl$Connection;

    check-cast p2, Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;->accept(Lcom/android/server/am/OomAdjusterImpl$Connection;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public init(Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;)V
    .registers 2

    .line 525
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;->mArgs:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    const/4 p1, 0x0

    .line 526
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionIgnoringReachableClientsConsumer;->hasReachableClient:Z

    return-void
.end method
