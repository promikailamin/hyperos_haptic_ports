.class public Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;
.super Ljava/lang/Object;
.source "OomAdjusterImpl.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public mReachables:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 496
    iput-object v0, p0, Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjusterImpl-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/OomAdjusterImpl$Connection;Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 3

    .line 504
    invoke-virtual {p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->isReachable()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x1

    .line 507
    invoke-virtual {p2, p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->setReachable(Z)V

    .line 508
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 494
    check-cast p1, Lcom/android/server/am/OomAdjusterImpl$Connection;

    check-cast p2, Lcom/android/server/am/psc/ProcessRecordInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;->accept(Lcom/android/server/am/OomAdjusterImpl$Connection;Lcom/android/server/am/psc/ProcessRecordInternal;)V

    return-void
.end method

.method public init(Ljava/util/ArrayList;)V
    .registers 2

    .line 499
    iput-object p1, p0, Lcom/android/server/am/OomAdjusterImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    return-void
.end method
