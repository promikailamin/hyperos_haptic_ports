.class public Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;
.super Ljava/lang/Object;
.source "OomAdjusterImpl.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/OomAdjusterImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterImpl;)V
    .registers 2

    .line 588
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjusterImpl;Lcom/android/server/am/OomAdjusterImpl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;-><init>(Lcom/android/server/am/OomAdjusterImpl;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;)V
    .registers 6

    .line 591
    iget-object v0, p1, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/psc/ProcessRecordInternal;

    .line 592
    iget-object v1, p1, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;->mUids:Lcom/android/server/am/psc/ActiveUidsInternal;

    .line 595
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterImpl;

    iget v2, v2, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->setCompletedAdjSeq(I)V

    if-eqz v1, :cond_1a

    .line 597
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getUidRecord()Lcom/android/server/am/psc/UidRecordInternal;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 599
    invoke-virtual {v2}, Lcom/android/server/am/psc/UidRecordInternal;->getUid()I

    move-result v3

    invoke-interface {v1, v3, v2}, Lcom/android/server/am/psc/ActiveUidsInternal;->put(ILcom/android/server/am/psc/UidRecordInternal;)V

    .line 602
    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterImpl;

    invoke-static {v1}, Lcom/android/server/am/OomAdjusterImpl;->-$$Nest$fgetmComputeHostConsumer(Lcom/android/server/am/OomAdjusterImpl;)Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;

    move-result-object v1

    iput-object p1, v1, Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    .line 603
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterImpl;

    invoke-static {p0}, Lcom/android/server/am/OomAdjusterImpl;->-$$Nest$fgetmComputeHostConsumer(Lcom/android/server/am/OomAdjusterImpl;)Lcom/android/server/am/OomAdjusterImpl$ComputeHostConsumer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/OomAdjusterImpl;->-$$Nest$smforEachConnectionLSP(Lcom/android/server/am/psc/ProcessRecordInternal;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 588
    check-cast p1, Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterImpl$OomAdjusterArgs;)V

    return-void
.end method
