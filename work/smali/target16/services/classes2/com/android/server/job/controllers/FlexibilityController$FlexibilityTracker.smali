.class Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;
.super Ljava/lang/Object;
.source "FlexibilityController.java"


# instance fields
.field public final mTrackedJobs:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;I)V
    .registers 5

    .line 834
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_d
    if-gt p1, p2, :cond_1c

    .line 837
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 853
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v0

    if-gez v0, :cond_7

    return-void

    .line 856
    :cond_7
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateNumDroppedConstraints(Lcom/android/server/job/controllers/JobStatus;J)V
    .registers 8

    .line 897
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController;->getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I

    move-result p2

    .line 899
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumAppliedFlexibleConstraints()I

    move-result p3

    .line 900
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 901
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$mgetPercentsToDropConstraints(Lcom/android/server/job/controllers/FlexibilityController;I)[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-ge v1, p3, :cond_21

    .line 903
    aget v3, v0, v1

    if-lt p2, v3, :cond_1e

    add-int/lit8 v2, v2, 0x1

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 907
    :cond_21
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->setNumDroppedFlexibleConstraints(Lcom/android/server/job/controllers/JobStatus;I)V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;J)V
    .registers 16

    const/4 v0, 0x0

    move v1, v0

    .line 931
    :goto_2
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7e

    .line 932
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    move v3, v0

    .line 933
    :goto_13
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_7a

    .line 934
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 935
    invoke-interface {p2, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    move-wide v7, p3

    goto :goto_76

    .line 938
    :cond_28
    invoke-virtual {v6, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 939
    const-string v4, " from "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-static {p1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 941
    const-string v4, "-> Num Required Constraints: "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 944
    const-string v4, ", lifecycle=["

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 945
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v4, v6}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v9

    .line 946
    invoke-virtual {p1, v9, v10}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 947
    const-string v4, ", ("

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 948
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v4, v6, p3, p4}, Lcom/android/server/job/controllers/FlexibilityController;->getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 949
    const-string v4, "%), "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 950
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    move-wide v7, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 951
    const-string p3, "]"

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_76
    add-int/lit8 v3, v3, 0x1

    move-wide p3, v7

    goto :goto_13

    :cond_7a
    move-wide v7, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7e
    return-void
.end method

.method public getJobsByNumRequiredConstraints(I)Landroid/util/ArraySet;
    .registers 3

    .line 844
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_11

    .line 845
    const-string p0, "JobScheduler.Flex"

    const-string p1, "Asked for a larger number of constraints than exists."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 848
    :cond_11
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    return-object p0
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3

    .line 861
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNumDroppedFlexibleConstraints(Lcom/android/server/job/controllers/JobStatus;I)V
    .registers 4

    .line 919
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v0

    if-eq p2, v0, :cond_f

    .line 920
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->remove(Lcom/android/server/job/controllers/JobStatus;)V

    .line 921
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setNumDroppedFlexibleConstraints(I)V

    .line 922
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_f
    return-void
.end method

.method public size()I
    .registers 1

    .line 927
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public updateFlexibleConstraints(Lcom/android/server/job/controllers/JobStatus;J)V
    .registers 9

    .line 868
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v0

    .line 870
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 871
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 872
    invoke-virtual {p1, v1}, Lcom/android/server/job/controllers/JobStatus;->setNumAppliedFlexibleConstraints(I)V

    .line 874
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 875
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/FlexibilityController;->-$$Nest$mgetPercentsToDropConstraints(Lcom/android/server/job/controllers/FlexibilityController;I)[I

    move-result-object v2

    .line 876
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController;->getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I

    move-result p2

    const/4 p3, 0x0

    move v3, p3

    :goto_23
    if-ge p3, v1, :cond_2e

    .line 879
    aget v4, v2, p3

    if-lt p2, v4, :cond_2b

    add-int/lit8 v3, v3, 0x1

    :cond_2b
    add-int/lit8 p3, p3, 0x1

    goto :goto_23

    .line 883
    :cond_2e
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->setNumDroppedFlexibleConstraints(I)V

    .line 885
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result p2

    if-ne v0, p2, :cond_38

    return-void

    .line 888
    :cond_38
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
