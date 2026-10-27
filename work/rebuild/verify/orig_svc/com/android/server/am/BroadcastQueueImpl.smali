.class public Lcom/android/server/am/BroadcastQueueImpl;
.super Lcom/android/server/am/BroadcastQueue;
.source "BroadcastQueueImpl.java"


# static fields
.field public static final BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

.field public static final QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;


# instance fields
.field public final mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

.field public final mBgConstants:Lcom/android/server/am/BroadcastConstants;

.field final mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field final mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field public final mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field public final mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

.field public final mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;

.field public mCheckPendingColdStartQueued:Z

.field public final mConstants:Lcom/android/server/am/BroadcastConstants;

.field public final mFgConstants:Lcom/android/server/am/BroadcastConstants;

.field public mLastTestFailureTime:J

.field public final mLocalCallback:Landroid/os/Handler$Callback;

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mProcessQueues:Landroid/util/SparseArray;

.field public final mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

.field public mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

.field public final mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

.field public mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

.field public final mUidForeground:Landroid/util/SparseBooleanArray;

.field public final mWaitingFor:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$5W-hHnqVpPple_94bUXhaN2NlZA(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$11(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5h92AEV1NSkQ9xrbiDDH3YtJvPw(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;I)Z
    .registers 3

    .line 1635
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 1636
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6dhuOD7nHAKmzmF-YtZCzIaaioE(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 1

    .line 1849
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->addPrioritizeEarliestRequest()Z

    return-void
.end method

.method public static synthetic $r8$lambda$7megXC57u3j4fgugQAJ8O6Hxy-0(JLcom/android/server/am/BroadcastProcessQueue;)V
    .registers 3

    .line 1900
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->forceDelayBroadcastDelivery(J)Z

    return-void
.end method

.method public static synthetic $r8$lambda$B7DPZVQCD71h5eWktQg-gufcCLo(Lcom/android/server/am/BroadcastRecord;I)Z
    .registers 2

    .line 737
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/server/am/BroadcastFilter;

    return p0
.end method

.method public static synthetic $r8$lambda$G5yeZnyV_OrOuYIyEjxKn1jSFeo(JLcom/android/server/am/BroadcastProcessQueue;)Z
    .registers 3

    .line 1823
    invoke-virtual {p2, p0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->isBeyondBarrierLocked(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GQq4Cu507ce-EdaTPni0au2KE4E(Lcom/android/server/am/BroadcastQueueImpl;Ljava/io/PrintWriter;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForIdle$17(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IhXQ9STpE_zBSFz-MTE7VUeShc4(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .registers 1

    .line 1811
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->isIdle()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N8FQ9gSdybdav0lGQR63n9n6UBw(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .registers 1

    .line 1663
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$O9ZCSsC8NNR3uQ_PQ64t7iM4QCg(Ljava/lang/String;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .registers 2

    .line 1899
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QUGuWq_cpO4s-MkX6cKJunNXYYM(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$12(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VjnSzxUzNht9sNkaPuD9eYr6_7Q(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .registers 2

    .line 1642
    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$axmJspVe-xY9KO3JBJy4HjLi1-4(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForDispatched$21(Landroid/content/Intent;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eNs2xE55__Zz9ql8SQ7FQputV6s(Lcom/android/server/am/BroadcastQueueImpl;JLjava/io/PrintWriter;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$waitForBarrier$19(JLjava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fBmeMgpkodO5VRNqVXIloKaGTzs(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$10(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fdz7Xri5C43PjH9UdG6mpy7Tifo(Lcom/android/server/am/BroadcastRecord;I)Z
    .registers 2

    .line 1665
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$jiOOfL7yG84837SDk7PqX3CCMUM(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$applyDeliveryGroupPolicy$2(Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kbYnaL9l3-rmMN3J3ehz4uveSKE(Landroid/content/Intent;Lcom/android/server/am/BroadcastProcessQueue;)Z
    .registers 2

    .line 1834
    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatched(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l-TmgsQ9D6SPUK-D5ivvEy60BZk(Lcom/android/server/am/BroadcastQueueImpl;Landroid/os/Message;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mXDgb9ORy-OA2qOk3ggoYiIxf9I(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$applyDeliveryGroupPolicy$3(Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tClXJ7lHT7SDttp6mit80Rp9sTM(Ljava/lang/String;Ljava/util/Set;Lcom/android/server/am/BroadcastRecord;I)Z
    .registers 4

    .line 1624
    iget-object p2, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 1625
    instance-of p3, p2, Landroid/content/pm/ResolveInfo;

    if-eqz p3, :cond_20

    .line 1626
    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1627
    iget-object p3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    iget-object p0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1628
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$w82T0zX7YeN5b-3VbDEttgjJSN8(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 1

    .line 1856
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastProcessQueue;->removePrioritizeEarliestRequest()Z

    return-void
.end method

.method public static synthetic $r8$lambda$wkwVOsGQRcdT2tutL53fgINKVfE(ILcom/android/server/am/BroadcastProcessQueue;)Z
    .registers 2

    .line 1617
    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$y_poFiYvDQ4rHlB3WcUbbQSlzvs(Landroid/util/Pair;)Z
    .registers 2

    .line 1884
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1885
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$zNq0Etd4wqaIsfgSOsSA6kCXcq4(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->lambda$new$13(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalHandler(Lcom/android/server/am/BroadcastQueueImpl;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1662
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda15;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    .line 1664
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda16;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;)V
    .registers 12

    .line 143
    new-instance v5, Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-direct {v5, p1}, Lcom/android/server/am/BroadcastSkipPolicy;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    new-instance v6, Lcom/android/server/am/BroadcastHistory;

    invoke-direct {v6, p3}, Lcom/android/server/am/BroadcastHistory;-><init>(Lcom/android/server/am/BroadcastConstants;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/BroadcastQueueImpl;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastConstants;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V
    .registers 7

    .line 150
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Lcom/android/server/am/BroadcastSkipPolicy;Lcom/android/server/am/BroadcastHistory;)V

    .line 174
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 224
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    .line 231
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 238
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 246
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 258
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    .line 292
    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda17;

    invoke-direct {p1, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalCallback:Landroid/os/Handler$Callback;

    .line 1671
    new-instance p5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda18;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1681
    new-instance p5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda19;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1690
    new-instance p5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda20;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1697
    new-instance p5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda21;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 1704
    new-instance p5, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;

    invoke-direct {p5, p0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    iput-object p5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;

    .line 153
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    .line 154
    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 155
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    .line 157
    new-instance p4, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    .line 161
    invoke-virtual {p3}, Lcom/android/server/am/BroadcastConstants;->getMaxRunningQueues()I

    move-result p1

    new-array p1, p1, [Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    .line 163
    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-direct {p1, p0, p4}, Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    return-void
.end method


# virtual methods
.method public final applyDeliveryGroupPolicy(Lcom/android/server/am/BroadcastRecord;)V
    .registers 7

    .line 882
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->shouldIgnoreDeliveryGroupPolicy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_61

    .line 885
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v0

    if-eqz v0, :cond_61

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    const/4 v2, 0x2

    if-eq v0, v2, :cond_30

    .line 911
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown delivery group policy: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    .line 896
    :cond_30
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_39

    goto :goto_61

    .line 899
    :cond_39
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getDeliveryGroupExtrasMerger()Landroid/os/BundleMerger;

    move-result-object v0

    if-nez v0, :cond_42

    goto :goto_61

    .line 905
    :cond_42
    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;)V

    goto :goto_4a

    .line 892
    :cond_48
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    .line 914
    :goto_4a
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRecordsLookupCache()Landroid/util/ArrayMap;

    move-result-object v0

    .line 915
    sget-object v3, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v4, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v3, v4, v2, v1}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    .line 940
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 941
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_61
    :goto_61
    return-void
.end method

.method public assertHealthLocked()V
    .registers 11

    .line 1942
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5f

    .line 1944
    iget-object v4, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v4, v1, :cond_d

    move v4, v2

    goto :goto_e

    :cond_d
    move v4, v3

    :goto_e
    const-string/jumbo v5, "runnableAtPrev"

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1945
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRunnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    if-eqz v1, :cond_59

    .line 1947
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v3

    :goto_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRunnableAt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1951
    :cond_59
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    .line 1955
    :cond_5f
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v1, v0

    move v4, v3

    :goto_63
    if-ge v4, v1, :cond_84

    aget-object v5, v0, v4

    if-eqz v5, :cond_81

    .line 1957
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isActive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 1962
    :cond_84
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_16e

    .line 1963
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    if-ltz v0, :cond_90

    move v0, v2

    goto :goto_91

    :cond_90
    move v0, v3

    :goto_91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOrphaned "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1966
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    .line 1968
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v0, v1, :cond_b8

    move v1, v2

    goto :goto_b9

    :cond_b8
    move v1, v3

    :goto_b9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with queue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";\n mRunningColdStart.app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v5, v5, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1970
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";\n queue.app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1971
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1968
    invoke-static {v1, v0}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1973
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_fd

    move v0, v2

    goto :goto_fe

    :cond_fd
    move v0, v3

    :goto_fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty cold start queue "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1976
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessStartInitiationTimeoutExpected()Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1978
    const-string v1, "Process start timeout expected for app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1980
    const-string v1, " in queue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1981
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1982
    const-string v1, "; startUpTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1983
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1984
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getProcessStartInitiatedTimestampMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_14b

    .line 1985
    const-string v1, "<none>"

    goto :goto_154

    .line 1986
    :cond_14b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    .line 1985
    :goto_154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    const-string v1, ";\n app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toDetailedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    :cond_16e
    move v0, v3

    .line 1994
    :goto_16f
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_18a

    .line 1995
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_17f
    if-eqz v1, :cond_187

    .line 1997
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->assertHealthLocked()V

    .line 1998
    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_17f

    :cond_187
    add-int/lit8 v0, v0, 0x1

    goto :goto_16f

    .line 2002
    :cond_18a
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastHistory;->getPendingBroadcastsCount()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->EXCESSIVE_PENDING_BROADCASTS:I

    if-ge v0, p0, :cond_197

    goto :goto_198

    :cond_197
    move v2, v3

    :goto_198
    const-string p0, "excessive pending broadcasts"

    invoke-static {v2, p0}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method public final cancelDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 2

    .line 1294
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer;->cancel(Ljava/lang/Object;)Z

    return-void
.end method

.method public final checkAndRemoveWaitingFor()V
    .registers 2

    .line 1882
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1883
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_12
    return-void
.end method

.method public final checkHealth()V
    .registers 2

    .line 1910
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1911
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkHealthLocked()V

    .line 1912
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final checkHealthLocked()V
    .registers 5

    .line 1918
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->assertHealthLocked()V

    .line 1921
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 1927
    const-string v1, "BroadcastQueue"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1928
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueue;->dumpToDropBoxLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final checkPendingColdStartValidityLocked()V
    .registers 5

    .line 614
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v0, :cond_5

    goto :goto_1c

    .line 617
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->isPendingColdStartValid()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 618
    iget-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mCheckPendingColdStartQueued:Z

    if-nez v0, :cond_1c

    .line 619
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v1, v1, Lcom/android/server/am/BroadcastConstants;->PENDING_COLD_START_CHECK_INTERVAL_MILLIS:J

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    .line 621
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mCheckPendingColdStartQueued:Z

    :cond_1c
    :goto_1c
    return-void

    .line 624
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearInvalidPendingColdStart()V

    return-void
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;I)Z
    .registers 7

    if-eqz p1, :cond_1f

    .line 1614
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    .line 1616
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda3;-><init>(I)V

    if-eqz p2, :cond_19

    .line 1623
    new-instance p3, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;

    invoke-direct {p3, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_2c

    .line 1634
    :cond_19
    new-instance p3, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda5;

    invoke-direct {p3, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    .line 1641
    :cond_1f
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p3}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda6;-><init>(I)V

    .line 1644
    sget-object p1, Lcom/android/server/am/BroadcastQueueImpl;->BROADCAST_PREDICATE_ANY:Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;

    .line 1646
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->cleanupUserStateLocked(Landroid/util/SparseBooleanArray;I)V

    move-object p3, p1

    .line 1648
    :goto_2c
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    const/4 p2, 0x1

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result p0

    return p0
.end method

.method public final cleanupUserStateLocked(Landroid/util/SparseBooleanArray;I)V
    .registers 4

    .line 1654
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_18

    .line 1655
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1656
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_15

    .line 1657
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_15
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_18
    return-void
.end method

.method public final clearInvalidPendingColdStart()V
    .registers 4

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing invalid pending cold start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->wasActiveBroadcastReEnqueued()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 596
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x5

    const-string v2, "invalid start with re-enqueued broadcast"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    goto :goto_2c

    .line 599
    :cond_27
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->reEnqueueActiveBroadcast()V

    .line 601
    :goto_2c
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 602
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearRunningColdStart()V

    .line 603
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public final clearRunningColdStart()V
    .registers 2

    .line 748
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    .line 752
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    const/4 v0, 0x0

    .line 753
    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 756
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public final containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z
    .registers 4

    .line 959
    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_11

    .line 961
    invoke-virtual {p3, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 963
    :cond_11
    iget-object p0, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastRecord;->containsAllReceivers(Ljava/util/List;)Z

    move-result p0

    .line 964
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p0
.end method

.method public final deliveryTimeout(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 4

    .line 1298
    const-string v0, "deliveryTimeout"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1299
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1300
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->deliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1301
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1302
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void

    :catchall_17
    move-exception p0

    .line 1301
    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final deliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 4

    const/4 v0, 0x3

    .line 1307
    const-string v1, "deliveryTimeoutLocked"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1309
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return-void
.end method

.method public final demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 6

    .line 1495
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1496
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring demoteFromRunning; no active broadcast for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    .line 1500
    :cond_1b
    const-string v0, "demoteFromRunning"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1502
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v1, p1, :cond_4f

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRunningColdStart has not been cleared; mRunningColdStart.app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , queue.app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v3, "BroadcastQueue"

    invoke-static {v3, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1511
    :cond_4f
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveIdle()V

    .line 1512
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    .line 1514
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v1

    .line 1515
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 1516
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 1521
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->notifyStoppedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1522
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public describeStateLocked()Ljava/lang/String;
    .registers 2

    .line 1906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningSize()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " running"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final dispatchReceivers(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Z
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .line 1138
    iget-object v3, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1139
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move/from16 v5, p3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1143
    invoke-virtual/range {p2 .. p3}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result v15

    .line 1144
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_39

    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-nez v0, :cond_39

    if-nez v15, :cond_39

    .line 1145
    invoke-virtual {v2, v10}, Lcom/android/server/am/BroadcastProcessQueue;->setTimeoutScheduled(Z)V

    .line 1146
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v7, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    goto :goto_34

    .line 1147
    :cond_30
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v7, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    :goto_34
    long-to-int v0, v7

    .line 1148
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/BroadcastQueueImpl;->startDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V

    goto :goto_3c

    .line 1150
    :cond_39
    invoke-virtual {v2, v9}, Lcom/android/server/am/BroadcastProcessQueue;->setTimeoutScheduled(Z)V

    .line 1153
    :goto_3c
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    const/4 v7, 0x3

    if-eqz v0, :cond_71

    iget v0, v4, Lcom/android/server/am/BroadcastRecord;->realCallingUid:I

    iget v8, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-ne v0, v8, :cond_4c

    goto :goto_71

    .line 1156
    :cond_4c
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ProcessRecord;->addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    .line 1158
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v11, v0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    goto :goto_60

    .line 1159
    :cond_5c
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-wide v11, v0, Lcom/android/server/am/BroadcastConstants;->ALLOW_BG_ACTIVITY_START_TIMEOUT:J

    .line 1160
    :goto_60
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1161
    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1162
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1163
    iget-object v8, v1, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    .line 1164
    invoke-static {v8, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1163
    invoke-virtual {v8, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1166
    :cond_71
    :goto_71
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v0, :cond_bd

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_bd

    .line 1167
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v0

    const/4 v8, 0x4

    if-ne v0, v8, :cond_98

    .line 1171
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object v0

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1173
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v11

    .line 1171
    invoke-virtual {v0, v3, v7, v11, v12}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;IJ)V

    goto :goto_bd

    .line 1175
    :cond_98
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v2, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1176
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v18

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1177
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v20

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v21

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 1178
    invoke-virtual {v8}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v22

    iget v8, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v16, v0

    move/from16 v17, v7

    move/from16 v23, v8

    .line 1175
    invoke-virtual/range {v16 .. v23}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IJILjava/lang/String;II)V

    .line 1182
    :cond_bd
    :goto_bd
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to warm "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    :cond_df
    const/4 v7, 0x4

    .line 1185
    const-string/jumbo v8, "scheduleReceiverWarmLocked"

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 1188
    invoke-virtual {v4, v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v8

    .line 1189
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_232

    .line 1192
    :try_start_f0
    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v0, :cond_119

    .line 1193
    iget-object v0, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v11, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v12, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v13, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 1194
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v19

    iget v13, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v21, 0x1

    move-object/from16 v16, v0

    move/from16 v17, v11

    move-object/from16 v18, v12

    move/from16 v20, v13

    .line 1193
    invoke-virtual/range {v16 .. v21}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    goto :goto_119

    :catch_112
    move-exception v0

    move/from16 v20, v9

    move/from16 v21, v10

    goto/16 :goto_1e6

    .line 1196
    :cond_119
    :goto_119
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    iput v0, v2, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    .line 1197
    instance-of v0, v6, Lcom/android/server/am/BroadcastFilter;
    :try_end_121
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_121} :catch_112

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eqz v0, :cond_1a5

    .line 1198
    :try_start_125
    move-object v0, v6

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/server/am/BroadcastQueueImpl;->notifyScheduleRegisteredReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)V

    .line 1199
    move-object v0, v6

    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, v0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;
    :try_end_132
    .catch Landroid/os/RemoteException; {:try_start_125 .. :try_end_132} :catch_1a0

    move v13, v10

    :try_start_133
    iget v10, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object v14, v11

    iget-object v11, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move/from16 v16, v12

    iget-object v12, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;
    :try_end_13c
    .catch Landroid/os/RemoteException; {:try_start_133 .. :try_end_13c} :catch_19b

    move/from16 v17, v13

    :try_start_13e
    iget-boolean v13, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v18, v14

    iget-boolean v14, v4, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z
    :try_end_144
    .catch Landroid/os/RemoteException; {:try_start_13e .. :try_end_144} :catch_195

    :try_start_144
    iget v9, v4, Lcom/android/server/am/BroadcastRecord;->userId:I
    :try_end_146
    .catch Landroid/os/RemoteException; {:try_start_144 .. :try_end_146} :catch_191

    move/from16 v20, v17

    .line 1203
    :try_start_148
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReportedProcState()I

    move-result v17

    .line 1204
    iget-boolean v5, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z
    :try_end_14e
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_14e} :catch_18b

    if-eqz v5, :cond_162

    move-object/from16 v21, v0

    :try_start_152
    iget v0, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v24, v18

    move/from16 v18, v0

    move-object/from16 v0, v24

    goto :goto_168

    :catch_15b
    move-exception v0

    move/from16 v21, v20

    const/16 v20, 0x0

    goto/16 :goto_1e6

    :cond_162
    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v18, v16

    :goto_168
    if-eqz v5, :cond_16c

    .line 1205
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_152 .. :try_end_16c} :catch_15b

    :cond_16c
    move-object/from16 v19, v0

    move/from16 v16, v9

    move/from16 v5, v20

    const/16 v20, 0x0

    move-object v9, v8

    move-object/from16 v8, v21

    .line 1199
    :try_start_177
    invoke-interface/range {v7 .. v19}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    if-eqz v15, :cond_187

    .line 1209
    const-string v0, "assuming delivered"

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v20

    :catch_182
    move-exception v0

    :goto_183
    move/from16 v21, v5

    goto/16 :goto_1e6

    :cond_187
    move/from16 v21, v5

    goto/16 :goto_1e5

    :catch_18b
    move-exception v0

    move/from16 v5, v20

    :goto_18e
    const/16 v20, 0x0

    goto :goto_183

    :catch_191
    move-exception v0

    move/from16 v5, v17

    goto :goto_18e

    :catch_195
    move-exception v0

    move/from16 v20, v9

    move/from16 v5, v17

    goto :goto_183

    :catch_19b
    move-exception v0

    move/from16 v20, v9

    move v5, v13

    goto :goto_183

    :catch_1a0
    move-exception v0

    move/from16 v20, v9

    move v5, v10

    goto :goto_183

    :cond_1a5
    move/from16 v20, v9

    move v5, v10

    move-object v0, v11

    move/from16 v16, v12

    .line 1214
    move-object v9, v6

    check-cast v9, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v3, v4, v9}, Lcom/android/server/am/BroadcastQueueImpl;->notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V

    .line 1215
    move-object v9, v6

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v11, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v12, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v13, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v14, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget v10, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 1218
    invoke-virtual {v3}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReportedProcState()I

    move-result v17

    .line 1219
    iget-boolean v0, v4, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z
    :try_end_1c6
    .catch Landroid/os/RemoteException; {:try_start_177 .. :try_end_1c6} :catch_182

    if-eqz v0, :cond_1d1

    move/from16 v21, v5

    :try_start_1ca
    iget v5, v4, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v16, v5

    goto :goto_1d3

    :catch_1cf
    move-exception v0

    goto :goto_1e6

    :cond_1d1
    move/from16 v21, v5

    :goto_1d3
    if-eqz v0, :cond_1de

    .line 1220
    iget-object v0, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_1d9
    move/from16 v18, v16

    move/from16 v16, v10

    goto :goto_1e1

    :cond_1de
    const/16 v19, 0x0

    goto :goto_1d9

    :goto_1e1
    const/4 v10, 0x0

    .line 1215
    invoke-interface/range {v7 .. v19}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    :try_end_1e5
    .catch Landroid/os/RemoteException; {:try_start_1ca .. :try_end_1e5} :catch_1cf

    :goto_1e5
    return v21

    .line 1224
    :goto_1e6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to schedule "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " via "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1226
    invoke-static {v4}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    const/16 v4, 0xd

    const/16 v5, 0x1a

    .line 1227
    const-string v7, "Can\'t deliver broadcast"

    move/from16 v13, v21

    invoke-virtual {v3, v7, v4, v5, v13}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    .line 1231
    instance-of v3, v6, Landroid/content/pm/ResolveInfo;

    if-nez v3, :cond_229

    .line 1235
    const-string/jumbo v0, "remote app"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v20

    .line 1232
    :cond_229
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/BroadcastQueueImpl;->cancelDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1233
    new-instance v1, Lcom/android/server/am/BroadcastRetryException;

    invoke-direct {v1, v0}, Lcom/android/server/am/BroadcastRetryException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_232
    move/from16 v20, v9

    const/4 v3, 0x5

    .line 1240
    const-string/jumbo v0, "missing IApplicationThread"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v20
.end method

.method public final dumpBroadcastsWithIgnoredPolicies(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    .line 2513
    const-string v0, "Broadcasts with ignored delivery group policies:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2514
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2515
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->dumpDeliveryGroupPolicyIgnoredActions(Landroid/util/IndentingPrintWriter;)V

    .line 2516
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2517
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2426
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 2427
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastHistory;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 2428
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpForegroundUids(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    .line 2521
    const-string v0, "Foreground UIDs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2522
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2523
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2524
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2525
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    move p1, p6

    .line 2439
    new-instance p6, Landroid/util/IndentingPrintWriter;

    invoke-direct {p6, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2440
    invoke-virtual {p6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2441
    invoke-virtual {p6}, Landroid/util/IndentingPrintWriter;->println()V

    if-nez p9, :cond_27

    .line 2444
    invoke-virtual {p0, p6, p3, p4}, Lcom/android/server/am/BroadcastQueueImpl;->dumpProcessQueues(Landroid/util/IndentingPrintWriter;J)V

    .line 2445
    invoke-virtual {p0, p6}, Lcom/android/server/am/BroadcastQueueImpl;->dumpBroadcastsWithIgnoredPolicies(Landroid/util/IndentingPrintWriter;)V

    .line 2446
    invoke-virtual {p0, p6}, Lcom/android/server/am/BroadcastQueueImpl;->dumpForegroundUids(Landroid/util/IndentingPrintWriter;)V

    if-eqz p5, :cond_27

    .line 2449
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {p2, p6}, Lcom/android/server/am/BroadcastConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2450
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-virtual {p2, p6}, Lcom/android/server/am/BroadcastConstants;->dump(Landroid/util/IndentingPrintWriter;)V

    :cond_27
    if-eqz p1, :cond_3b

    move p10, p7

    move-object p7, p8

    move-object p8, p9

    .line 2455
    new-instance p9, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p9, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2456
    iget-object p5, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual/range {p5 .. p10}, Lcom/android/server/am/BroadcastHistory;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;Z)Z

    move-result p0

    return p0

    :cond_3b
    move p1, p10

    return p1
.end method

.method public final dumpProcessQueues(Landroid/util/IndentingPrintWriter;J)V
    .registers 9

    .line 2463
    const-string/jumbo v0, "\ud83d\udccb Per-process queues:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2464
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 2465
    :goto_b
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 2466
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_1b
    if-eqz v2, :cond_23

    .line 2468
    invoke-virtual {v2, p2, p3, p1}, Lcom/android/server/am/BroadcastProcessQueue;->dumpLocked(JLandroid/util/IndentingPrintWriter;)V

    .line 2469
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_1b

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2472
    :cond_26
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2473
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2475
    const-string/jumbo v1, "\ud83e\uddcd Runnable:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2476
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2477
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const-string v2, "(none)"

    if-nez v1, :cond_3f

    .line 2478
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_68

    :cond_3f
    :goto_3f
    if-eqz v1, :cond_68

    .line 2482
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v3

    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const/16 v3, 0x20

    .line 2483
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 2484
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAtReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastProcessQueue;->reasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2485
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 2486
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2487
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2488
    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_3f

    .line 2491
    :cond_68
    :goto_68
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2492
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2494
    const-string/jumbo p2, "\ud83c\udfc3 Running:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2495
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2496
    iget-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length p3, p2

    :goto_7a
    if-ge v0, p3, :cond_a1

    aget-object v1, p2, v0

    if-eqz v1, :cond_8b

    .line 2497
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-ne v1, v3, :cond_8b

    .line 2498
    const-string/jumbo v3, "\ud83e\udd76 "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_91

    .line 2500
    :cond_8b
    const-string/jumbo v3, "\u3000 "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_91
    if-eqz v1, :cond_9b

    .line 2503
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9e

    .line 2505
    :cond_9b
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_9e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 2508
    :cond_a1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2509
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 15

    .line 797
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enqueuing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " receivers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 801
    :cond_2d
    const-string v0, "enqueueBroadcast"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 802
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/am/BroadcastRecord;->applySingletonPolicy(Lcom/android/server/am/ActivityManagerService;)V

    .line 804
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->applyDeliveryGroupPolicy(Lcom/android/server/am/BroadcastRecord;)V

    .line 806
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    .line 807
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    .line 808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    .line 809
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastHistory;->onBroadcastEnqueuedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 811
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_62

    .line 813
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 815
    :cond_62
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 816
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_71

    .line 818
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 820
    :cond_71
    invoke-virtual {p1, v3}, Lcom/android/server/am/BroadcastRecord;->setMatchingRecordsCache(Landroid/util/ArrayMap;)V

    const/4 v4, 0x0

    move v9, v4

    .line 823
    :goto_76
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v9, v5, :cond_cb

    .line 824
    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 826
    invoke-static {v10}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v6

    .line 825
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/BroadcastQueueImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v5

    .line 830
    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-virtual {v6, p1, v10}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipAtEnqueueMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b3

    .line 832
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skipped by policy at enqueue: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x2

    move-object v5, p0

    move-object v8, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    goto :goto_c7

    :cond_b3
    move-object v8, p1

    .line 838
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {v5, v8, v9, p1}, Lcom/android/server/am/BroadcastProcessQueue;->enqueueOrReplaceBroadcast(Lcom/android/server/am/BroadcastRecord;ILcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)Lcom/android/server/am/BroadcastRecord;

    move-result-object p1

    if-eqz p1, :cond_bf

    .line 841
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 843
    :cond_bf
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 844
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    const/4 p1, 0x1

    move v4, p1

    :goto_c7
    add-int/lit8 v9, v9, 0x1

    move-object p1, v8

    goto :goto_76

    :cond_cb
    move-object v8, p1

    .line 851
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->skipAndCancelReplacedBroadcasts(Landroid/util/ArraySet;)V

    .line 852
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 853
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mReplacedBroadcastsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 854
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 855
    invoke-virtual {v8}, Lcom/android/server/am/BroadcastRecord;->clearMatchingRecordsCache()V

    .line 856
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mMatchingRecordsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 859
    iget-object p1, v8, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ec

    if-nez v4, :cond_f2

    .line 860
    :cond_ec
    invoke-virtual {p0, v8}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    .line 861
    invoke-virtual {p0, v8}, Lcom/android/server/am/BroadcastQueueImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    .line 864
    :cond_f2
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final enqueueUpdateRunningList()V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 12

    .line 630
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    const-string v1, "isActive"

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->wasActiveBroadcastReEnqueued()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x5

    .line 635
    const-string/jumbo v1, "re-enqueued broadcast delivery failed"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return-void

    .line 638
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v5

    .line 639
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v6

    .line 640
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v5, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "reEnqueueActiveBroadcast"

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 642
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastProcessQueue;->reEnqueueActiveBroadcast()V

    return-void
.end method

.method public final finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V
    .registers 13

    .line 1420
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1421
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring finishReceiverActiveLocked; no active broadcast for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return-void

    .line 1425
    :cond_1b
    const-string v0, "finishReceiver"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1426
    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1427
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v4

    .line 1428
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v5

    .line 1429
    iget-object v1, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move-object v8, p3

    .line 1431
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    const/4 p0, 0x3

    if-ne v7, p0, :cond_6a

    .line 1434
    iget p0, v4, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v4, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v3, :cond_64

    .line 1435
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result p0

    if-nez p0, :cond_64

    .line 1436
    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1437
    invoke-static {v6}, Lcom/android/server/am/BroadcastRecord;->getReceiverClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1438
    iget-object p2, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-static {p2, p0, p1}, Lcom/android/internal/os/TimeoutRecord;->forBroadcastReceiver(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p0

    .line 1440
    iget-object p1, v1, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {p1, v2, p0}, Lcom/android/server/utils/AnrTimer;->accept(Ljava/lang/Object;Lcom/android/internal/os/TimeoutRecord;)V

    .line 1441
    iget-object p1, v1, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, v2, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    goto :goto_73

    .line 1443
    :cond_64
    iget-object p0, v1, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    invoke-virtual {p0, v2}, Lcom/android/server/utils/AnrTimer;->discard(Ljava/lang/Object;)Z

    goto :goto_73

    .line 1445
    :cond_6a
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->timeoutScheduled()Z

    move-result p0

    if-eqz p0, :cond_73

    .line 1446
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->cancelDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1450
    :cond_73
    :goto_73
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueueImpl;->checkAndRemoveWaitingFor()V

    .line 1452
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z
    .registers 16

    .line 1337
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p1

    const/4 p6, 0x0

    if-eqz p1, :cond_70

    .line 1338
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_70

    .line 1343
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v4

    .line 1344
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v0

    .line 1345
    iget-boolean v1, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_28

    .line 1346
    iput p2, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 1347
    iput-object p3, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1348
    iput-object p4, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 1349
    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->isNoAbort()Z

    move-result p2

    if-nez p2, :cond_28

    .line 1350
    iput-boolean p5, v4, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    .line 1357
    :cond_28
    const-string/jumbo p2, "remote app"

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1362
    iget-boolean p2, v4, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-eqz p2, :cond_50

    add-int/2addr v0, p3

    move v5, v0

    .line 1363
    :goto_35
    iget-object p2, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v5, p2, :cond_50

    .line 1364
    iget-object p2, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v8, "resultAbort"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_50
    move-object v1, p0

    .line 1369
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    if-eqz p0, :cond_5b

    .line 1370
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return p3

    .line 1375
    :cond_5b
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    .line 1377
    :try_start_5e
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p0

    if-eqz p0, :cond_68

    .line 1378
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_67
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_5e .. :try_end_67} :catch_69

    return p3

    :cond_68
    return p6

    .line 1382
    :catch_69
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1383
    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    return p3

    .line 1339
    :cond_70
    :goto_70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring finishReceiverLocked; no active broadcast for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    return p6
.end method

.method public final forEachMatchingBroadcast(Ljava/util/function/Predicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z
    .registers 10

    .line 1741
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_2b

    .line 1742
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_13
    if-eqz v3, :cond_28

    .line 1744
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1745
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1747
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v2, v1

    .line 1751
    :cond_25
    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_13

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_2b
    if-eqz v2, :cond_30

    .line 1755
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :cond_30
    return v2
.end method

.method public final forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z
    .registers 8

    .line 1765
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_28

    .line 1766
    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_13
    if-eqz v3, :cond_25

    .line 1768
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1769
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1770
    invoke-virtual {p0, v3}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v2, v1

    .line 1773
    :cond_22
    iget-object v3, v3, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_13

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_28
    if-eqz v2, :cond_2d

    .line 1777
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :cond_2d
    return v2
.end method

.method public forceDelayBroadcastDelivery(Ljava/lang/String;J)V
    .registers 6

    .line 1897
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1898
    :try_start_6
    new-instance v1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda12;

    invoke-direct {p1, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda12;-><init>(J)V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1901
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I
    .registers 3

    .line 1602
    invoke-virtual {p1, p2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result p0

    return p0
.end method

.method public getOrCreateProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .registers 3

    .line 2296
    iget-object v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .registers 6

    .line 2303
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_8
    if-eqz v0, :cond_1a

    .line 2305
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    return-object v0

    .line 2307
    :cond_13
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v1, :cond_18

    goto :goto_1a

    :cond_18
    move-object v0, v1

    goto :goto_8

    .line 2313
    :cond_1a
    :goto_1a
    new-instance v1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/server/am/BroadcastProcessQueue;-><init>(Lcom/android/server/am/BroadcastConstants;Ljava/lang/String;I)V

    .line 2314
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    if-nez v0, :cond_32

    .line 2317
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1

    .line 2319
    :cond_32
    iput-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    return-object v1
.end method

.method public getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;
    .registers 3

    .line 2327
    iget-object v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p0

    return-object p0
.end method

.method public getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .registers 3

    .line 2333
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_8
    if-eqz p0, :cond_16

    .line 2335
    iget-object p2, p0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    return-object p0

    .line 2338
    :cond_13
    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_8

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRecordsLookupCache()Landroid/util/ArrayMap;
    .registers 2

    .line 947
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRecordsLookupCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 948
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_10

    .line 950
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    :cond_10
    return-object p0
.end method

.method public final getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I
    .registers 5

    const/4 v0, 0x0

    .line 378
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 379
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 p0, -0x1

    return p0
.end method

.method public final getRunningSize()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 352
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v3, v2

    if-ge v0, v3, :cond_10

    .line 353
    aget-object v2, v2, v0

    if-eqz v2, :cond_d

    add-int/lit8 v1, v1, 0x1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    return v1
.end method

.method public final getRunningUrgentCount()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 364
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v3, v2

    if-ge v0, v3, :cond_1a

    .line 365
    aget-object v2, v2, v0

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->isUrgent()Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit8 v1, v1, 0x1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    return v1
.end method

.method public final handleProcessFreezableChanged(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 2064
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2065
    :try_start_6
    iget-object v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 2066
    iget-object v2, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-eq v2, v3, :cond_1f

    goto :goto_35

    .line 2069
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 2070
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastRecordConsumerEnqueue:Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;

    invoke-virtual {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->enqueueOutgoingBroadcasts(Lcom/android/server/am/BroadcastProcessQueue$BroadcastRecordConsumer;)V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_3a

    .line 2072
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v1}, Lcom/android/server/am/BroadcastQueueImpl;->refreshProcessQueueLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 2073
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2067
    :cond_35
    :goto_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2073
    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isBeyondBarrierLocked(JLjava/io/PrintWriter;)Z
    .registers 5

    .line 1823
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda23;-><init>(J)V

    const-string p1, "barrier"

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public isDispatchedLocked(Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .registers 6

    .line 1834
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda24;-><init>(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public isIdleLocked()Z
    .registers 2

    .line 1806
    sget-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->LOG_WRITER_INFO:Ljava/io/PrintWriter;

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->isIdleLocked(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public isIdleLocked(Ljava/io/PrintWriter;)Z
    .registers 4

    .line 1811
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "idle"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public final isPendingColdStartValid()Z
    .registers 2

    .line 581
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->hasProcessStartInitiationTimedout()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 583
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_1f

    .line 585
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 588
    :cond_1f
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    iget-object p0, p0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result p0

    return p0
.end method

.method public isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2042
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p0

    .line 2043
    :try_start_c
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isPendingFreeze()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_1f

    :catchall_1d
    move-exception p1

    goto :goto_25

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v0

    .line 2044
    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1
.end method

.method public final synthetic lambda$applyDeliveryGroupPolicy$2(Lcom/android/server/am/BroadcastRecord;Landroid/os/BundleMerger;Lcom/android/server/am/BroadcastRecord;I)V
    .registers 6

    .line 906
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->mergeExtras(Landroid/content/Intent;Landroid/os/BundleMerger;)V

    .line 907
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-interface {p0, p3, p4}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    return-void
.end method

.method public final synthetic lambda$applyDeliveryGroupPolicy$3(Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;Lcom/android/server/am/BroadcastRecord;I)Z
    .registers 8

    .line 917
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 921
    :cond_c
    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v2, p3, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ne v0, v2, :cond_53

    iget v0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v2, p3, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v0, v2, :cond_53

    .line 923
    invoke-virtual {p1, p3}, Lcom/android/server/am/BroadcastRecord;->matchesDeliveryGroup(Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_53

    .line 930
    :cond_1f
    iget-boolean v0, p3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v0, :cond_28

    .line 931
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueImpl;->containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z

    move-result p0

    return p0

    .line 932
    :cond_28
    iget-boolean v0, p3, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-nez v0, :cond_3c

    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v0, :cond_31

    goto :goto_3c

    .line 937
    :cond_31
    iget-object p0, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 933
    :cond_3c
    :goto_3c
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4e

    .line 934
    iget-object p0, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/BroadcastRecord;->containsReceiver(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 935
    :cond_4e
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/BroadcastQueueImpl;->containsAllReceivers(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastRecord;Landroid/util/ArrayMap;)Z

    move-result p0

    return p0

    :cond_53
    :goto_53
    return v1
.end method

.method public final synthetic lambda$new$0(Landroid/os/Message;)Z
    .registers 6

    .line 293
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_86

    return v1

    .line 329
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 330
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 331
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_23

    .line 333
    :try_start_1b
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_28

    :catchall_21
    move-exception p0

    goto :goto_30

    .line 335
    :cond_23
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 337
    :goto_28
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->refreshProcessQueuesLocked(I)V

    .line 338
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :goto_30
    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 325
    :pswitch_35
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->handleProcessFreezableChanged(Lcom/android/server/am/ProcessRecord;)V

    return v2

    .line 317
    :pswitch_3d
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 319
    :try_start_43
    iput-boolean v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mCheckPendingColdStartQueued:Z

    .line 320
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkPendingColdStartValidityLocked()V

    .line 321
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_4d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_4d
    move-exception p0

    :try_start_4e
    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 313
    :pswitch_53
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkHealth()V

    return v2

    .line 303
    :pswitch_57
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 304
    :try_start_5d
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 305
    iget-object p1, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 306
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 308
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->removeBackgroundStartPrivileges(Landroid/os/Binder;)V

    .line 309
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_74

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_74
    move-exception p0

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 299
    :pswitch_7a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->deliveryTimeout(Lcom/android/server/am/BroadcastProcessQueue;)V

    return v2

    .line 295
    :pswitch_82
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunningList()V

    return v2

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_82
        :pswitch_7a
        :pswitch_57
        :pswitch_53
        :pswitch_3d
        :pswitch_35
        :pswitch_8
    .end packed-switch
.end method

.method public final synthetic lambda$new$10(Lcom/android/server/am/BroadcastRecord;I)V
    .registers 12

    .line 1673
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v8, "mBroadcastConsumerSkip"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$new$11(Lcom/android/server/am/BroadcastRecord;I)V
    .registers 12

    .line 1683
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    const-string/jumbo v8, "mBroadcastConsumerSkipAndCanceled"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1685
    iput p0, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    const/4 p0, 0x0

    .line 1686
    iput-object p0, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 1687
    iput-object p0, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    return-void
.end method

.method public final synthetic lambda$new$12(Lcom/android/server/am/BroadcastRecord;I)V
    .registers 12

    .line 1693
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x6

    const-string/jumbo v8, "mBroadcastConsumerDeferApply"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$new$13(Lcom/android/server/am/BroadcastRecord;I)V
    .registers 12

    .line 1700
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    const-string/jumbo v8, "mBroadcastConsumerDeferClear"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastQueueImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$waitForBarrier$19(JLjava/io/PrintWriter;)Z
    .registers 4

    .line 1852
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->isBeyondBarrierLocked(JLjava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$waitForDispatched$21(Landroid/content/Intent;Ljava/io/PrintWriter;)Z
    .registers 3

    .line 1864
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->isDispatchedLocked(Landroid/content/Intent;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$waitForIdle$17(Ljava/io/PrintWriter;)Z
    .registers 2

    .line 1841
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->isIdleLocked(Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method

.method public final logBootCompletedBroadcastCompletionLatencyIfPossible(Lcom/android/server/am/BroadcastRecord;)V
    .registers 13

    .line 2373
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_b

    :cond_a
    move p0, v0

    .line 2374
    :goto_b
    iget v1, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v1, p0, :cond_11

    goto/16 :goto_c2

    .line 2377
    :cond_11
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2379
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    :goto_20
    move v4, v2

    goto :goto_2d

    .line 2381
    :cond_22
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x2

    goto :goto_20

    :cond_2c
    move v4, v0

    :goto_2d
    if-eqz v4, :cond_c2

    .line 2385
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v5, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v5

    long-to-int v5, v2

    .line 2386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v2, v6

    long-to-int v6, v2

    .line 2387
    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iget-wide v7, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v2, v7

    long-to-int v7, v2

    .line 2389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v8, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    sub-long/2addr v2, v8

    long-to-int v8, v2

    .line 2394
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    const/4 v3, 0x0

    if-eqz v2, :cond_5d

    .line 2397
    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v2, v9}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    goto :goto_5e

    :cond_5d
    move-object v2, v3

    :goto_5e
    if-eqz v2, :cond_66

    .line 2399
    iget-object v0, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/UserJourneyLogger;->getUserTypeForStatsd(Ljava/lang/String;)I

    move-result v0

    :cond_66
    move v10, v0

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BOOT_COMPLETED_BROADCAST_COMPLETION_LATENCY_REPORTED action:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dispatchLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " completeLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dispatchRealLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " completeRealLatency:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " receiversSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " userId:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " userType:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_af

    .line 2409
    iget-object v3, v2, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    :cond_af
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2401
    const-string v0, "BroadcastQueue"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x1b5

    .line 2410
    iget v9, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIII)V

    :cond_c2
    :goto_c2
    return-void
.end method

.method public final logBroadcastDeliveryEventReported(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V
    .registers 32

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2218
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v3

    .line 2219
    iget v4, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_11

    const/16 v4, 0x3e8

    .line 2220
    :cond_11
    iget-object v6, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p5

    .line 2221
    instance-of v8, v7, Lcom/android/server/am/BroadcastFilter;

    const/4 v10, 0x1

    if-eqz v8, :cond_21

    move v8, v5

    move v5, v10

    goto :goto_23

    :cond_21
    move v8, v5

    const/4 v5, 0x2

    :goto_23
    const/4 v11, 0x0

    if-nez v0, :cond_2a

    move/from16 v21, v8

    move v8, v11

    goto :goto_3b

    .line 2229
    :cond_2a
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveViaColdStart()Z

    move-result v8

    if-eqz v8, :cond_36

    const/4 v8, 0x3

    const/16 v12, 0x14

    move/from16 v21, v12

    goto :goto_3b

    .line 2234
    :cond_36
    iget v8, v0, Lcom/android/server/am/BroadcastProcessQueue;->lastProcessState:I

    move/from16 v21, v8

    move v8, v10

    .line 2238
    :goto_3b
    iget-object v12, v2, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v12, v12, p4

    iget-wide v14, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v14, v12, v14

    .line 2240
    iget-object v9, v2, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v16, v9, p4

    sub-long v16, v16, v12

    if-eqz v0, :cond_95

    .line 2248
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveWasStopped()Z

    move-result v9

    if-eqz v9, :cond_53

    const/4 v13, 0x2

    goto :goto_54

    :cond_53
    move v13, v10

    :goto_54
    if-eqz v1, :cond_60

    .line 2253
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_5a
    move v9, v3

    move v3, v4

    move-object v4, v6

    move v6, v8

    move-wide v7, v14

    goto :goto_62

    :cond_60
    const/4 v1, 0x0

    goto :goto_5a

    :goto_62
    iget-object v15, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move v10, v11

    move-wide/from16 v11, v16

    .line 2254
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->calculateTypeForLogging()I

    move-result v16

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastRecord;->getDeliveryGroupPolicy()I

    move-result v17

    iget-object v14, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v18

    .line 2255
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/BroadcastRecord;->getReceiverPriority(Ljava/lang/Object;)I

    move-result v19

    iget v2, v2, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    .line 2256
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveFirstLaunch()Z

    move-result v22

    const-wide/16 v23, 0x0

    move-object v14, v1

    const/16 v1, 0x1db

    move/from16 v20, v2

    move v2, v9

    move/from16 v25, v10

    const-wide/16 v9, 0x0

    .line 2251
    invoke-static/range {v1 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIJJJILjava/lang/String;Ljava/lang/String;IIIIIIZJ)V

    const/4 v10, 0x0

    .line 2259
    invoke-virtual {v0, v10}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveFirstLaunch(Z)V

    .line 2260
    invoke-virtual {v0, v10}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveWasStopped(Z)V

    :cond_95
    return-void
.end method

.method public final notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V
    .registers 10

    .line 2266
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->notifyBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 2267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    .line 2268
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 2269
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mHistory:Lcom/android/server/am/BroadcastHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BroadcastHistory;->onBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 2271
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->logBootCompletedBroadcastCompletionLatencyIfPossible(Lcom/android/server/am/BroadcastRecord;)V

    .line 2272
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastRecord;->logBroadcastProcessedEventRecord()V

    .line 2274
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_71

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_71

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 2275
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_71

    const/4 v0, 0x0

    move v4, v0

    move v5, v4

    .line 2278
    :goto_3c
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 2279
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_59

    add-int/lit8 v4, v4, 0x1

    .line 2281
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_59

    add-int/lit8 v5, v5, 0x1

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 2287
    :cond_5c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long v6, v0, v2

    .line 2288
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    :cond_71
    return-void
.end method

.method public final notifyFinishReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V
    .registers 8

    .line 2198
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->wasDeliveryAttempted(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2199
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BroadcastQueueImpl;->logBroadcastDeliveryEventReported(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V

    .line 2202
    :cond_9
    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->isAssumedDelivered(I)Z

    move-result p1

    if-nez p1, :cond_21

    invoke-virtual {p3, p4}, Lcom/android/server/am/BroadcastRecord;->wasDelivered(I)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 2203
    iget-object p1, p3, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide p1, p1, p4

    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v0, v0, p4

    sub-long/2addr p1, v0

    invoke-virtual {p3, p5, p1, p2}, Lcom/android/server/am/BroadcastRecord;->updateBroadcastProcessedEventRecord(Ljava/lang/Object;J)V

    .line 2207
    :cond_21
    iget p1, p3, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    iget-object p2, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_2e

    .line 2209
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastQueueImpl;->notifyFinishBroadcast(Lcom/android/server/am/BroadcastRecord;)V

    :cond_2e
    return-void
.end method

.method public final notifyScheduleReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)V
    .registers 7

    .line 2143
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    .line 2145
    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2146
    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v1, p3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object p3, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2149
    iget-object p1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 2150
    :goto_1d
    iget-object p3, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p1, :cond_3f

    if-nez p3, :cond_3f

    .line 2152
    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 p3, -0x1

    const/16 v1, 0x1f

    if-ne p1, p3, :cond_36

    .line 2153
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEventForAllUsers(Ljava/lang/String;I)V

    goto :goto_3f

    .line 2156
    :cond_36
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget p3, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v0, p3, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2161
    :cond_3f
    :goto_3f
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p3, 0x3

    invoke-virtual {p1, v0, p3}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 2164
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget p1, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object p3, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 2165
    invoke-virtual {p2}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2164
    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyScheduleRegisteredReceiver(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)V
    .registers 4

    .line 2133
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl;->reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method

.method public final notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 6

    .line 2092
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_46

    .line 2094
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getRestrictionLevel(I)I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1b

    .line 2096
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2099
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 2102
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 2103
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getPreferredSchedulingGroupLocked()I

    move-result v2

    .line 2102
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessStateController;->noteBroadcastDeliveryStarted(Lcom/android/server/am/ProcessRecord;I)V

    .line 2104
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_46

    .line 2105
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessStateController;->forceProcessStateUpTo(Lcom/android/server/am/ProcessRecord;I)V

    .line 2107
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_46
    return-void
.end method

.method public final notifyStoppedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 4

    .line 2118
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_16

    .line 2119
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateController;->noteBroadcastDeliveryEnded(Lcom/android/server/am/ProcessRecord;)V

    .line 2120
    iget-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    if-eqz v0, :cond_16

    .line 2121
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_16
    return-void
.end method

.method public onApplicationAttachedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    .line 655
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 657
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 661
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->clearOutgoingBroadcasts()V

    .line 665
    :cond_c
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz p1, :cond_3f

    if-ne p1, v0, :cond_3f

    .line 668
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    const/4 p1, 0x0

    .line 669
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 673
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 674
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 676
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessEnd()V

    .line 677
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    .line 679
    :try_start_27
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 680
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    :try_end_30
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_27 .. :try_end_30} :catch_31

    goto :goto_33

    :catch_31
    move-exception p1

    goto :goto_38

    .line 689
    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    const/4 p0, 0x1

    return p0

    .line 683
    :goto_38
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 684
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 685
    throw p1

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method public onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 716
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_11

    if-ne v1, v0, :cond_11

    iget-object v1, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_11

    .line 719
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearRunningColdStart()V

    :cond_11
    if-eqz v0, :cond_48

    .line 722
    iget-object v1, v0, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v1, p1, :cond_48

    const/4 p1, 0x0

    .line 723
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 726
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x5

    .line 727
    const-string/jumbo v1, "onApplicationCleanupLocked"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 729
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 732
    :cond_2b
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->clearOutgoingBroadcasts()V

    .line 736
    new-instance p1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;

    invoke-direct {p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda14;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkip:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->forEachMatchingBroadcast(Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Z)Z

    move-result p1

    if-nez p1, :cond_42

    .line 739
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 740
    :cond_42
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 741
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    :cond_48
    return-void
.end method

.method public onApplicationProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 704
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public onApplicationTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public onProcessFreezableChangedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 762
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 763
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final promoteToRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 5

    const/4 v0, 0x0

    .line 1461
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    .line 1462
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    aput-object p1, v1, v0

    .line 1465
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 1468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastQueue.mRunning["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningTraceTrackName:Ljava/lang/String;

    .line 1469
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingManifest()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1470
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingOrdered()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1471
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingResultTo()Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v0, 0x1

    :goto_3f
    iput-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    .line 1475
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1477
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->notifyStartedRunning(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 1482
    :cond_4a
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    if-eqz v0, :cond_53

    .line 1484
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessRunningBegin()V

    return-void

    .line 1486
    :cond_53
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceProcessStartingBegin()V

    return-void
.end method

.method public final refreshProcessQueueLocked(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 3

    .line 2082
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 2083
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public final refreshProcessQueuesLocked(I)V
    .registers 3

    .line 2053
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_8
    if-eqz p1, :cond_12

    .line 2057
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BroadcastQueueImpl;->setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V

    .line 2058
    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_8

    .line 2060
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    return-void
.end method

.method public removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .registers 8

    .line 2348
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_a
    if-eqz v0, :cond_31

    .line 2350
    iget-object v3, v0, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    if-eqz v2, :cond_1b

    .line 2352
    iget-object p0, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    iput-object p0, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    return-object v0

    .line 2354
    :cond_1b
    iget-object p1, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz p1, :cond_25

    .line 2355
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    .line 2357
    :cond_25
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-object v0

    .line 2363
    :cond_2b
    iget-object v2, v0, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_a

    :cond_31
    return-object v1
.end method

.method public final reportUsageStatsBroadcastDispatched(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2171
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_10

    .line 2172
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v5

    move-wide v11, v5

    goto :goto_11

    :cond_10
    move-wide v11, v3

    :goto_11
    cmp-long v2, v11, v3

    if-gtz v2, :cond_16

    goto :goto_3d

    .line 2176
    :cond_16
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 2177
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :goto_24
    move-object v9, v2

    goto :goto_3b

    .line 2178
    :cond_26
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 2179
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    :cond_39
    const/4 v2, 0x0

    goto :goto_24

    :goto_3b
    if-nez v9, :cond_3e

    :goto_3d
    return-void

    .line 2185
    :cond_3e
    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget v8, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget v1, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 2186
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v1, p1

    iget v1, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 2187
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v15

    .line 2185
    invoke-virtual/range {v7 .. v15}, Landroid/app/usage/UsageStatsManagerInternal;->reportBroadcastDispatched(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    return-void
.end method

.method public final scheduleReceiverColdLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 979
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v2

    const-string v3, "isActive"

    invoke-static {v2, v3}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    const/4 v2, 0x1

    .line 982
    invoke-virtual {v1, v2}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveViaColdStart(Z)V

    .line 984
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v3

    .line 985
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v4

    .line 986
    iget-object v5, v3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 989
    instance-of v6, v5, Lcom/android/server/am/BroadcastFilter;

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v6, :cond_2d

    .line 990
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 991
    const-string v3, "BroadcastFilter for cold app"

    invoke-virtual {v0, v1, v7, v3}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v2

    .line 996
    :cond_2d
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/BroadcastQueueImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 998
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 999
    invoke-virtual {v0, v1, v7, v4}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v2

    .line 1003
    :cond_39
    move-object v4, v5

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1004
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 1006
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveWasStopped(Z)V

    .line 1007
    invoke-virtual {v11}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/am/BroadcastProcessQueue;->setActiveFirstLaunch(Z)V

    .line 1009
    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    or-int/lit8 v13, v6, 0x4

    .line 1010
    new-instance v14, Lcom/android/server/am/HostingRecord;

    iget-object v6, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1011
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->getHostingRecordTriggerType()Ljava/lang/String;

    move-result-object v7

    const-string v9, "broadcast"

    invoke-direct {v14, v9, v4, v6, v7}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    const/4 v6, 0x0

    if-eqz v4, :cond_7c

    .line 1013
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v9

    const-wide/16 v15, 0x0

    cmp-long v4, v9, v15

    if-lez v4, :cond_7c

    move v15, v2

    goto :goto_7d

    :cond_7c
    move v15, v6

    .line 1016
    :goto_7d
    iget-object v4, v3, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v7, 0x2000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_8b

    move/from16 v16, v2

    goto :goto_8d

    :cond_8b
    move/from16 v16, v6

    .line 1019
    :goto_8d
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v18

    .line 1020
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 1021
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to cold "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    .line 1023
    :cond_b3
    iget-object v9, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    const/4 v12, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_cc

    .line 1026
    iput-object v8, v0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v3, 0x5

    .line 1027
    const-string/jumbo v4, "startProcessLocked failed"

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    return v2

    .line 1031
    :cond_cc
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessStartInitiatedTimestampMillis(J)V

    .line 1033
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v17

    iget-object v0, v1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1034
    invoke-virtual {v3, v5}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v21

    iget-boolean v1, v3, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    move-object/from16 v20, v0

    move/from16 v22, v1

    .line 1033
    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/AppStartInfoTracker;->handleProcessBroadcastStart(JLcom/android/server/am/ProcessRecord;Landroid/content/Intent;Z)V

    return v6
.end method

.method public final scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .registers 7

    .line 1054
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    const-string v1, "isActive"

    invoke-static {v0, v1}, Lcom/android/server/am/BroadcastQueue;->checkState(ZLjava/lang/String;)V

    .line 1056
    const-string/jumbo v0, "scheduleReceiverWarmLocked"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1057
    :goto_10
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1058
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActive()Lcom/android/server/am/BroadcastRecord;

    move-result-object v1

    .line 1059
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveIndex()I

    move-result v2

    .line 1061
    iget v3, v1, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    if-nez v3, :cond_34

    .line 1062
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 1063
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    .line 1064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 1067
    :cond_34
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_45

    .line 1069
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->dispatchReceivers(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1071
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    const/4 p0, 0x0

    return p0

    :cond_45
    const/4 v1, 0x2

    .line 1075
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/am/BroadcastQueueImpl;->finishReceiverActiveLocked(Lcom/android/server/am/BroadcastProcessQueue;ILjava/lang/String;)V

    .line 1078
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v1

    if-eqz v1, :cond_50

    goto :goto_54

    .line 1083
    :cond_50
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->makeActiveNextPending()V

    goto :goto_10

    .line 1085
    :cond_54
    :goto_54
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1252
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v2, :cond_9

    return-void

    .line 1253
    :cond_9
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 1254
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v4

    move-object v5, v4

    goto :goto_15

    :cond_14
    move-object v5, v3

    :goto_15
    if-eqz v5, :cond_95

    .line 1256
    iget-object v4, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x2

    invoke-virtual {v4, v2, v6}, Lcom/android/server/am/ActivityManagerService;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 1258
    iget-boolean v4, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v4, :cond_39

    iget v4, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget v6, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-eq v4, v6, :cond_39

    .line 1259
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v7, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object v8, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 1260
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    iget v10, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v11, 0x1

    .line 1259
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 1264
    :cond_39
    :try_start_39
    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget v8, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v9, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v12, v1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iget v14, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 1268
    invoke-virtual {v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReportedProcState()I

    move-result v15

    .line 1269
    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    if-eqz v0, :cond_56

    iget v4, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    :goto_51
    move/from16 v16, v4

    goto :goto_58

    :catch_54
    move-exception v0

    goto :goto_67

    :cond_56
    const/4 v4, -0x1

    goto :goto_51

    :goto_58
    if-eqz v0, :cond_5f

    .line 1270
    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_61

    :cond_5f
    move-object/from16 v17, v3

    :goto_61
    const/4 v11, 0x0

    const/4 v13, 0x1

    .line 1264
    invoke-interface/range {v5 .. v17}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_66} :catch_54

    goto :goto_95

    .line 1272
    :goto_67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to schedule result of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " via "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1273
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    const/16 v0, 0x1a

    const/4 v4, 0x1

    .line 1274
    const-string v5, "Can\'t deliver broadcast"

    const/16 v6, 0xd

    invoke-virtual {v2, v5, v6, v0, v4}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    .line 1279
    :cond_95
    :goto_95
    iput-object v3, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    return-void
.end method

.method public final setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V
    .registers 14

    .line 1534
    const-string/jumbo v0, "setDeliveryState"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 1537
    invoke-virtual {p0, p3, p4}, Lcom/android/server/am/BroadcastQueueImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result v1

    .line 1538
    invoke-virtual {p3, p4, p6, p7}, Lcom/android/server/am/BroadcastRecord;->setDeliveryState(IILjava/lang/String;)Z

    move-result v2

    if-eqz p1, :cond_23

    const/4 v3, 0x4

    if-ne p6, v3, :cond_18

    .line 1544
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceActiveBegin()V

    goto :goto_23

    :cond_18
    if-ne v1, v3, :cond_23

    .line 1546
    invoke-static {p6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1547
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->traceActiveEnd()V

    .line 1553
    :cond_23
    :goto_23
    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-nez v3, :cond_81

    .line 1554
    invoke-static {p6}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 1556
    invoke-virtual {p3}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 1557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivery state of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " via "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " changed from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-static {v1}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-static {p6}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    const/4 v1, 0x1

    if-ne p6, v1, :cond_7b

    .line 1562
    invoke-static {p7}, Lcom/android/server/am/BroadcastQueue;->logv(Ljava/lang/String;)V

    goto :goto_7e

    .line 1564
    :cond_7b
    invoke-static {p7}, Lcom/android/server/am/BroadcastQueue;->logw(Ljava/lang/String;)V

    .line 1568
    :cond_7e
    :goto_7e
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BroadcastQueueImpl;->notifyFinishReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;)V

    :cond_81
    if-eqz v2, :cond_cd

    .line 1574
    iget p1, p3, Lcom/android/server/am/BroadcastRecord;->beyondCount:I

    iget-object p2, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_90

    .line 1575
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleResultTo(Lcom/android/server/am/BroadcastRecord;)V

    .line 1580
    :cond_90
    iget-boolean p1, p3, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez p1, :cond_98

    iget-boolean p1, p3, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz p1, :cond_cd

    :cond_98
    const/4 p1, 0x0

    .line 1581
    :goto_99
    iget-object p2, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_ca

    .line 1582
    invoke-virtual {p0, p3, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result p2

    if-eqz p2, :cond_ad

    if-ne p1, p4, :cond_c7

    .line 1583
    :cond_ad
    iget-object p2, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 1585
    invoke-static {p2}, Lcom/android/server/am/BroadcastRecord;->getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 1586
    invoke-static {p2}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result p2

    .line 1584
    invoke-virtual {p0, p5, p2}, Lcom/android/server/am/BroadcastQueueImpl;->getProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object p2

    if-eqz p2, :cond_c7

    .line 1588
    invoke-virtual {p2}, Lcom/android/server/am/BroadcastProcessQueue;->invalidateRunnableAt()V

    .line 1589
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_c7
    add-int/lit8 p1, p1, 0x1

    goto :goto_99

    .line 1593
    :cond_ca
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 1597
    :cond_cd
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final setQueueProcess(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 2030
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 2031
    invoke-virtual {p0, p2}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    .line 2030
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 2032
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_16
    return-void
.end method

.method public final shouldRetire(Lcom/android/server/am/BroadcastProcessQueue;)Z
    .registers 7

    .line 1399
    iget v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 1400
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveAssumedDeliveryCountSinceIdle()I

    move-result v0

    .line 1401
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveCountSinceIdle()I

    move-result v3

    .line 1402
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveAssumedDeliveryCountSinceIdle()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1403
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v4, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_BLOCKING_BROADCASTS:I

    if-ge v3, v4, :cond_24

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_CORE_RUNNING_NON_BLOCKING_BROADCASTS:I

    if-lt v0, p0, :cond_22

    goto :goto_24

    :cond_22
    move p0, v2

    goto :goto_31

    :cond_24
    :goto_24
    move p0, v1

    goto :goto_31

    .line 1408
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getActiveCountSinceIdle()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget p0, p0, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_ACTIVE_BROADCASTS:I

    if-lt v0, p0, :cond_22

    goto :goto_24

    .line 1411
    :goto_31
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result p1

    if-eqz p1, :cond_41

    if-eqz p0, :cond_40

    goto :goto_41

    :cond_40
    return v2

    :cond_41
    :goto_41
    return v1
.end method

.method public final shouldSkipReceiver(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastRecord;I)Ljava/lang/String;
    .registers 6

    .line 1096
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BroadcastQueueImpl;->getDeliveryState(Lcom/android/server/am/BroadcastRecord;I)I

    move-result v0

    .line 1097
    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 1098
    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 1101
    invoke-static {v0}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1102
    const-string p0, "already terminal state"

    return-object p0

    :cond_15
    if-eqz p1, :cond_21

    .line 1106
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isInFullBackup()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1107
    const-string/jumbo p0, "isInFullBackup"

    return-object p0

    .line 1109
    :cond_21
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mSkipPolicy:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/BroadcastSkipPolicy;->shouldSkipMessage(Lcom/android/server/am/BroadcastRecord;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2a

    return-object p0

    .line 1113
    :cond_2a
    invoke-virtual {p2, p3}, Lcom/android/server/am/BroadcastRecord;->getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_33

    .line 1115
    const-string p0, "getReceiverIntent"

    return-object p0

    .line 1119
    :cond_33
    instance-of p0, p3, Lcom/android/server/am/BroadcastFilter;

    if-eqz p0, :cond_46

    check-cast p3, Lcom/android/server/am/BroadcastFilter;

    iget-object p0, p3, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget p0, p0, Lcom/android/server/am/ReceiverList;->pid:I

    .line 1120
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p1

    if-eq p0, p1, :cond_46

    .line 1121
    const-string p0, "BroadcastFilter for mismatched PID"

    return-object p0

    :cond_46
    const/4 p0, 0x0

    return-object p0
.end method

.method public final skipAndCancelReplacedBroadcasts(Landroid/util/ArraySet;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 869
    :goto_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 870
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    move v3, v0

    .line 872
    :goto_f
    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 873
    invoke-virtual {v2, v3}, Lcom/android/server/am/BroadcastRecord;->getDeliveryState(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->isDeliveryStateTerminal(I)Z

    move-result v4

    if-nez v4, :cond_26

    .line 874
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerSkipAndCanceled:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-interface {v4, v2, v3}, Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;->accept(Lcom/android/server/am/BroadcastRecord;I)V

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2c
    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .registers 6

    .line 1785
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mFgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 1786
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBgConstants:Lcom/android/server/am/BroadcastConstants;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/BroadcastConstants;->startObserving(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 1788
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastQueueImpl$1;-><init>(Lcom/android/server/am/BroadcastQueueImpl;)V

    const/4 v1, 0x2

    const-string v2, "android"

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 1800
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final startDeliveryTimeoutLocked(Lcom/android/server/am/BroadcastProcessQueue;I)V
    .registers 5

    .line 1287
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mAnrTimer:Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/utils/AnrTimer;->start(Ljava/lang/Object;J)V

    return-void
.end method

.method public final testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 14

    const/4 v0, 0x0

    move v1, v0

    .line 1714
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const-string v3, "Test "

    if-ge v1, v2, :cond_5f

    .line 1715
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mProcessQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastProcessQueue;

    :goto_14
    if-eqz v2, :cond_5c

    .line 1717
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 1718
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1719
    iget-wide v6, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLastTestFailureTime:J

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    cmp-long p1, v4, v6

    if-lez p1, :cond_58

    .line 1720
    iput-wide v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLastTestFailureTime:J

    .line 1721
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed due to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    invoke-virtual {v2}, Lcom/android/server/am/BroadcastProcessQueue;->describeStateLocked()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1721
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    :cond_58
    return v0

    .line 1727
    :cond_59
    iget-object v2, v2, Lcom/android/server/am/BroadcastProcessQueue;->processNameNext:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_14

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1730
    :cond_5f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " passed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateRunnableList(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 10

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningIndexOf(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result v0

    if-ltz v0, :cond_8

    goto/16 :goto_91

    .line 403
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferApply:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/BroadcastProcessQueue;->updateDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V

    .line 404
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->updateRunnableAt()V

    .line 406
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_27

    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v4, :cond_27

    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v4, :cond_25

    goto :goto_27

    :cond_25
    move v4, v2

    goto :goto_28

    :cond_27
    :goto_27
    move v4, v3

    :goto_28
    if-eqz v0, :cond_6a

    if-eqz v4, :cond_63

    .line 413
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtPrev:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v0, :cond_3c

    .line 414
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3e

    :cond_3c
    move v0, v3

    goto :goto_3f

    :cond_3e
    move v0, v2

    .line 415
    :goto_3f
    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    if-eqz v1, :cond_4f

    .line 416
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_50

    :cond_4f
    move v2, v3

    :cond_50
    if-eqz v0, :cond_54

    if-nez v2, :cond_72

    .line 418
    :cond_54
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 419
    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_72

    .line 422
    :cond_63
    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->insertIntoRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    goto :goto_72

    :cond_6a
    if-eqz v4, :cond_72

    .line 425
    invoke-static {v1, p1}, Lcom/android/server/am/BroadcastProcessQueue;->removeFromRunnableList(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/BroadcastProcessQueue;)Lcom/android/server/am/BroadcastProcessQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    .line 429
    :cond_72
    :goto_72
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isOutgoingEmpty()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    move-result v0

    if-nez v0, :cond_91

    .line 430
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-nez v0, :cond_91

    .line 431
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/BroadcastQueueImpl;->removeProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;

    :cond_91
    :goto_91
    return-void
.end method

.method public final updateRunningList()V
    .registers 2

    .line 436
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 437
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->updateRunningListLocked()V

    .line 438
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateRunningListLocked()V
    .registers 15

    .line 456
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningUrgentCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v1, v1, Lcom/android/server/am/BroadcastConstants;->EXTRA_RUNNING_URGENT_PROCESS_QUEUES:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 458
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunning:[Lcom/android/server/am/BroadcastProcessQueue;

    array-length v1, v1

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningSize()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    if-nez v1, :cond_18

    return-void

    .line 461
    :cond_18
    const-string/jumbo v0, "updateRunningList"

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v0

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 465
    iget-object v4, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    .line 469
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    iget-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunnableHead:Lcom/android/server/am/BroadcastProcessQueue;

    const/4 v7, 0x0

    :goto_32
    const/4 v8, 0x3

    if-eqz v5, :cond_b8

    if-lez v1, :cond_b8

    .line 474
    iget-object v9, v5, Lcom/android/server/am/BroadcastProcessQueue;->runnableAtNext:Lcom/android/server/am/BroadcastProcessQueue;

    .line 475
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->getRunnableAt()J

    move-result-wide v10

    .line 479
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isRunnable()Z

    move-result v12

    if-nez v12, :cond_44

    goto :goto_90

    .line 486
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->getRunningSize()I

    move-result v12

    iget-object v13, p0, Lcom/android/server/am/BroadcastQueueImpl;->mConstants:Lcom/android/server/am/BroadcastConstants;

    iget v13, v13, Lcom/android/server/am/BroadcastConstants;->MAX_RUNNING_PROCESS_QUEUES:I

    if-lt v12, v13, :cond_55

    .line 487
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isPendingUrgent()Z

    move-result v12

    if-nez v12, :cond_55

    goto :goto_90

    :cond_55
    cmp-long v12, v10, v2

    if-lez v12, :cond_61

    if-eqz v4, :cond_61

    .line 496
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_b8

    .line 502
    :cond_61
    iget-object v10, p0, Lcom/android/server/am/BroadcastQueueImpl;->mBroadcastConsumerDeferClear:Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;

    invoke-virtual {v5, v10}, Lcom/android/server/am/BroadcastProcessQueue;->clearDeferredStates(Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;)V

    .line 506
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->updateWarmProcess(Lcom/android/server/am/BroadcastProcessQueue;)V

    .line 508
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v10

    if-eqz v10, :cond_80

    .line 510
    iget-object v11, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v5, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11, v12, v8}, Lcom/android/server/am/ActivityManagerService;->unfreezeTemporarily(Lcom/android/server/am/ProcessRecord;I)V

    .line 514
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v8

    if-nez v8, :cond_9a

    .line 516
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    goto :goto_90

    .line 523
    :cond_80
    iget-object v8, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    if-nez v8, :cond_8a

    .line 524
    iput-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 525
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    goto :goto_9a

    .line 526
    :cond_8a
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->isPendingColdStartValid()Z

    move-result v8

    if-eqz v8, :cond_92

    :goto_90
    move-object v5, v9

    goto :goto_32

    .line 532
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->clearInvalidPendingColdStart()V

    .line 533
    iput-object v5, p0, Lcom/android/server/am/BroadcastQueueImpl;->mRunningColdStart:Lcom/android/server/am/BroadcastProcessQueue;

    .line 534
    invoke-virtual {v5}, Lcom/android/server/am/BroadcastProcessQueue;->clearProcessStartInitiatedTimestampMillis()V

    .line 541
    :cond_9a
    :goto_9a
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->promoteToRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    if-eqz v10, :cond_ac

    .line 544
    iget-boolean v8, v5, Lcom/android/server/am/BroadcastProcessQueue;->runningOomAdjusted:Z

    or-int/2addr v7, v8

    .line 546
    :try_start_a2
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverWarmLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v8
    :try_end_a6
    .catch Lcom/android/server/am/BroadcastRetryException; {:try_start_a2 .. :try_end_a6} :catch_a7

    goto :goto_b0

    .line 548
    :catch_a7
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->finishOrReEnqueueActiveBroadcast(Lcom/android/server/am/BroadcastProcessQueue;)V

    move v8, v6

    goto :goto_b0

    .line 552
    :cond_ac
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->scheduleReceiverColdLocked(Lcom/android/server/am/BroadcastProcessQueue;)Z

    move-result v8

    :goto_b0
    if-eqz v8, :cond_b5

    .line 557
    invoke-virtual {p0, v5}, Lcom/android/server/am/BroadcastQueueImpl;->demoteFromRunningLocked(Lcom/android/server/am/BroadcastProcessQueue;)V

    :cond_b5
    add-int/lit8 v1, v1, -0x1

    goto :goto_90

    :cond_b8
    :goto_b8
    if-eqz v7, :cond_bf

    .line 570
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 573
    :cond_bf
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkPendingColdStartValidityLocked()V

    .line 574
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->checkAndRemoveWaitingFor()V

    .line 576
    invoke-static {v0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    return-void
.end method

.method public final updateWarmProcess(Lcom/android/server/am/BroadcastProcessQueue;)V
    .registers 6

    .line 2009
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isProcessWarm()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2016
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastProcessQueue;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2017
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl;->mUidForeground:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 2018
    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->isProcessFreezable(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    .line 2017
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/am/BroadcastProcessQueue;->setProcessAndUidState(Lcom/android/server/am/ProcessRecord;ZZ)Z

    :cond_20
    return-void
.end method

.method public final waitFor(Ljava/util/function/BooleanSupplier;)V
    .registers 5

    .line 1868
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1869
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1870
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueueImpl;->mWaitingFor:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1871
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1872
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueueImpl;->enqueueUpdateRunningList()V

    .line 1874
    :try_start_1c
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    .line 1876
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_27
    move-exception p0

    .line 1871
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public waitForBarrier(Ljava/io/PrintWriter;)V
    .registers 7

    .line 1846
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1847
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 1848
    :try_start_a
    sget-object v3, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v4, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1850
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1852
    :try_start_18
    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BroadcastQueueImpl;JLjava/io/PrintWriter;)V

    invoke-virtual {p0, v2}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_39

    .line 1854
    iget-object p1, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    .line 1855
    :try_start_26
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1857
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_33
    move-exception p0

    :try_start_34
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_39
    move-exception p1

    .line 1854
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1855
    :try_start_40
    sget-object v1, Lcom/android/server/am/BroadcastQueueImpl;->QUEUE_PREDICATE_ANY:Ljava/util/function/Predicate;

    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl;->forEachMatchingQueue(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Z

    .line 1857
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_4f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1858
    throw p1

    :catchall_4f
    move-exception p0

    .line 1857
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_55
    move-exception p0

    .line 1850
    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public waitForDispatched(Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .registers 4

    .line 1864
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public waitForIdle(Ljava/io/PrintWriter;)V
    .registers 3

    .line 1841
    new-instance v0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueueImpl;->waitFor(Ljava/util/function/BooleanSupplier;)V

    return-void
.end method
