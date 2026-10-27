.class public Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;
.super Ljava/lang/Object;
.source "OomAdjusterImpl.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public args:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

.field public final synthetic this$0:Lcom/android/server/am/OomAdjusterImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterImpl;)V
    .registers 2

    .line 557
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 558
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/OomAdjusterImpl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;-><init>(Lcom/android/server/am/OomAdjusterImpl;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/OomAdjusterImpl$Connection;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 15

    .line 562
    iget-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    iget-object v4, v0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 563
    iget v10, v0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mCachedAdj:I

    .line 564
    iget-object v7, v0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 565
    iget-wide v5, v0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mNow:J

    .line 566
    iget v9, v0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mOomAdjReason:I

    .line 567
    iget-boolean v8, v0, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mFullUpdate:Z

    .line 569
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    .line 570
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v11

    .line 572
    invoke-static {p1, p2, v4}, Lcom/android/server/am/OomAdjusterImpl;->-$$Nest$smunimportantConnectionLSP(Lcom/android/server/am/OomAdjusterImpl$Connection;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-void

    .line 576
    :cond_1d
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterImpl;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v10}, Lcom/android/server/am/OomAdjusterImpl$Connection;->computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/psc/ProcessRecordInternal;Lcom/android/server/am/psc/ProcessRecordInternal;JLcom/android/server/am/psc/ProcessRecordInternal;ZII)V

    .line 579
    iget-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterImpl;

    invoke-static {p1, v3, v0}, Lcom/android/server/am/OomAdjusterImpl;->-$$Nest$mupdateProcStateSlotIfNecessary(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    .line 580
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterImpl;

    invoke-static {p0, v3, v11}, Lcom/android/server/am/OomAdjusterImpl;->-$$Nest$mupdateAdjSlotIfNecessary(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/psc/ProcessRecordInternal;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 557
    check-cast p1, Lcom/android/server/am/OomAdjusterImpl$Connection;

    check-cast p2, Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;->accept(Lcom/android/server/am/OomAdjusterImpl$Connection;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method
