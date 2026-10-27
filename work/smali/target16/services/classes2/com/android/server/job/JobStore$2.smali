.class public Lcom/android/server/job/JobStore$2;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mJobFiles:Landroid/util/SparseArray;

.field public final mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

.field public final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStore;)V
    .registers 2

    .line 644
    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    .line 646
    new-instance p1, Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-direct {p1, p0}, Lcom/android/server/job/JobStore$2$CopyConsumer;-><init>(Lcom/android/server/job/JobStore$2;)V

    iput-object p1, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    return-void
.end method


# virtual methods
.method public final addAttributesToJobTag(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 849
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "jobid"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 850
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 851
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "class"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 852
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 853
    const-string/jumbo p0, "sourcePackageName"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 855
    :cond_39
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 856
    const-string/jumbo p0, "namespace"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 858
    :cond_49
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_59

    .line 859
    const-string/jumbo p0, "sourceTag"

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 861
    :cond_59
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "sourceUserId"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 862
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "uid"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 863
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getBias()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "bias"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 864
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "priority"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 865
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "flags"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 866
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result p0

    if-eqz p0, :cond_b4

    .line 867
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getInternalFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "internalFlags"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 871
    :cond_b4
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 870
    const-string v1, "lastSuccessfulRunTime"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 873
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 872
    const-string v1, "lastFailedRunTime"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    const-string p0, "cumulativeExecutionTime"

    .line 876
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getCumulativeExecutionTimeMs()J

    move-result-wide v1

    .line 875
    invoke-interface {p1, v0, p0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;
    .registers 7

    if-gtz p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 891
    :cond_4
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 892
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 893
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 894
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 895
    instance-of v3, v2, Landroid/os/PersistableBundle;

    if-eqz v3, :cond_12

    .line 896
    check-cast v2, Landroid/os/PersistableBundle;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/JobStore$2;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 897
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_12

    :cond_32
    return-object v0
.end method

.method public run()V
    .registers 10

    .line 712
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 720
    iget-object v2, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v2, v2, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 721
    :try_start_b
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/job/JobStore;->-$$Nest$fputmWriteScheduled(Lcom/android/server/job/JobStore;Z)V

    .line 722
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmWriteInProgress(Lcom/android/server/job/JobStore;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 724
    iget-object p0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p0}, Lcom/android/server/job/JobStore;->-$$Nest$mmaybeWriteStatusToDiskAsync(Lcom/android/server/job/JobStore;)V

    .line 725
    monitor-exit v2

    return-void

    :catchall_20
    move-exception p0

    goto/16 :goto_1ac

    .line 727
    :cond_23
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/server/job/JobStore;->-$$Nest$fputmWriteInProgress(Lcom/android/server/job/JobStore;Z)V

    .line 728
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_20

    .line 730
    iget-object v2, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v3, v2, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 732
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v2}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmUseSplitFiles(Lcom/android/server/job/JobStore;)Z

    move-result v2

    .line 733
    iget-object v6, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v6}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$mprepare(Lcom/android/server/job/JobStore$2$CopyConsumer;)V

    .line 734
    iget-object v6, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v6, v6, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-object v7, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 735
    iget-object v6, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v6}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPendingJobWriteUids(Lcom/android/server/job/JobStore;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 736
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_2f .. :try_end_4e} :catchall_1a9

    .line 737
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v4, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 738
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v4, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 739
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    iput v4, v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 740
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v3}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_71
    if-ltz v3, :cond_112

    if-eqz v2, :cond_a6

    .line 743
    iget-object v5, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v5}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 744
    iget-object v6, p0, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/AtomicFile;

    if-nez v6, :cond_ac

    .line 746
    iget-object v6, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jobs_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/job/JobStore;->-$$Nest$mcreateJobFile(Lcom/android/server/job/JobStore;Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v6

    .line 747
    iget-object v7, p0, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_ac

    .line 750
    :cond_a6
    iget-object v5, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v5}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobsFile(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v6

    .line 752
    :cond_ac
    :goto_ac
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 753
    const-string v5, "JobStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v8}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v8}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;

    move-result-object v8

    .line 755
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " jobs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 753
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_ff
    iget-object v5, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v5}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$fgetmJobStoreCopy(Lcom/android/server/job/JobStore$2$CopyConsumer;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {p0, v6, v5}, Lcom/android/server/job/JobStore$2;->writeJobsMapImpl(Landroid/util/AtomicFile;Ljava/util/List;)V

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_71

    .line 759
    :cond_112
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_13b

    .line 760
    const-string v3, "JobStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished writing, took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_13b
    iget-object v0, p0, Lcom/android/server/job/JobStore$2;->mPersistedJobCopier:Lcom/android/server/job/JobStore$2$CopyConsumer;

    invoke-static {v0}, Lcom/android/server/job/JobStore$2$CopyConsumer;->-$$Nest$mreset(Lcom/android/server/job/JobStore$2$CopyConsumer;)V

    if-nez v2, :cond_147

    .line 765
    iget-object v0, p0, Lcom/android/server/job/JobStore$2;->mJobFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 769
    :cond_147
    iget-object v0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setLastModified(J)Z

    .line 770
    iget-object v0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_15b
    iget-object v1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmSplitFileMigrationNeeded(Lcom/android/server/job/JobStore;)Z

    move-result v1

    if-eqz v1, :cond_199

    .line 772
    iget-object v1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmJobFileDirectory(Lcom/android/server/job/JobStore;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 773
    array-length v3, v1

    move v5, v4

    :goto_16f
    if-ge v5, v3, :cond_199

    aget-object v6, v1, v5

    if-eqz v2, :cond_187

    .line 775
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jobs_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_196

    .line 777
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_196

    :catchall_185
    move-exception p0

    goto :goto_1a7

    .line 779
    :cond_187
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jobs_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_196

    .line 781
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_196
    :goto_196
    add-int/lit8 v5, v5, 0x1

    goto :goto_16f

    .line 785
    :cond_199
    iget-object v1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v1, v4}, Lcom/android/server/job/JobStore;->-$$Nest$fputmWriteInProgress(Lcom/android/server/job/JobStore;Z)V

    .line 786
    iget-object p0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object p0, p0, Lcom/android/server/job/JobStore;->mWriteScheduleLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 787
    monitor-exit v0

    return-void

    :goto_1a7
    monitor-exit v0
    :try_end_1a8
    .catchall {:try_start_15b .. :try_end_1a8} :catchall_185

    throw p0

    :catchall_1a9
    move-exception p0

    .line 736
    :try_start_1aa
    monitor-exit v3
    :try_end_1ab
    .catchall {:try_start_1aa .. :try_end_1ab} :catchall_1a9

    throw p0

    .line 728
    :goto_1ac
    :try_start_1ac
    monitor-exit v2
    :try_end_1ad
    .catchall {:try_start_1ac .. :try_end_1ad} :catchall_20

    throw p0
.end method

.method public final writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6

    const/4 v0, 0x0

    .line 881
    const-string v1, "extras"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v2, 0xa

    .line 882
    invoke-virtual {p0, p1, v2}, Lcom/android/server/job/JobStore$2;->deepCopyBundle(Landroid/os/PersistableBundle;I)Landroid/os/PersistableBundle;

    move-result-object p0

    .line 883
    invoke-virtual {p0, p2}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 884
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeConstraintsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 9

    const/4 p0, 0x0

    .line 912
    const-string v0, "constraints"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 913
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 914
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 915
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p2

    .line 917
    invoke-virtual {p2}, Landroid/net/NetworkRequest;->getCapabilities()[I

    move-result-object v2

    .line 916
    invoke-static {v2}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "net-capabilities-csv"

    invoke-interface {p1, p0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 919
    invoke-virtual {p2}, Landroid/net/NetworkRequest;->getForbiddenCapabilities()[I

    move-result-object v2

    .line 918
    invoke-static {v2}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "net-forbidden-capabilities-csv"

    invoke-interface {p1, p0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 921
    invoke-virtual {p2}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object p2

    .line 920
    invoke-static {p2}, Lcom/android/server/job/JobStore;->intArrayToString([I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "net-transport-types-csv"

    invoke-interface {p1, p0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 922
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_55

    .line 923
    const-string p2, "estimated-download-bytes"

    .line 924
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v2

    .line 923
    invoke-interface {p1, p0, p2, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 926
    :cond_55
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v2

    cmp-long p2, v2, v4

    if-eqz p2, :cond_66

    .line 927
    const-string p2, "estimated-upload-bytes"

    .line 928
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v2

    .line 927
    invoke-interface {p1, p0, p2, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 930
    :cond_66
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v2

    cmp-long p2, v2, v4

    if-eqz p2, :cond_78

    .line 931
    const-string/jumbo p2, "minimum-network-chunk-bytes"

    .line 932
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v2

    .line 931
    invoke-interface {p1, p0, p2, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 935
    :cond_78
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_88

    .line 936
    const-string p2, "idle"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, p2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 938
    :cond_88
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result p2

    if-eqz p2, :cond_97

    .line 939
    const-string p2, "charging"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, p2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 941
    :cond_97
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result p2

    if-eqz p2, :cond_a6

    .line 942
    const-string p2, "battery-not-low"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, p2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 944
    :cond_a6
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result p2

    if-eqz p2, :cond_b6

    .line 945
    const-string/jumbo p2, "storage-not-low"

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, p2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 947
    :cond_b6
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeDebugInfoToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 9

    .line 1002
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getDebugTagsArraySet()Landroid/util/ArraySet;

    move-result-object p0

    .line 1003
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1004
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_19

    if-nez v0, :cond_19

    return-void

    :cond_19
    const/4 v1, 0x0

    .line 1008
    const-string v2, "debug-info"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p2, :cond_27

    .line 1010
    const-string/jumbo v3, "trace-tag"

    invoke-interface {p1, v1, v3, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_27
    const/4 p2, 0x0

    :goto_28
    if-ge p2, v0, :cond_41

    .line 1013
    const-string v3, "debug-tag"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1014
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "tag"

    invoke-interface {p1, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1015
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    .line 1017
    :cond_41
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 14

    .line 952
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 953
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    const-string/jumbo v1, "one-off"

    const-string/jumbo v2, "periodic"

    const/4 v3, 0x0

    if-eqz v0, :cond_34

    .line 954
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 955
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "period"

    invoke-interface {p1, v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 956
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v4, "flex"

    invoke-interface {p1, v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_37

    .line 958
    :cond_34
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 964
    :goto_37
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v0

    .line 965
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_5a

    if-eqz v0, :cond_5a

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "storing original UTC timestamps for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobStore"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_5a
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 970
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 971
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v8

    if-eqz v8, :cond_86

    if-nez v0, :cond_75

    .line 974
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v8

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    goto :goto_7d

    .line 975
    :cond_75
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 976
    :goto_7d
    const-string v10, "deadline"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 978
    :cond_86
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v8

    if-eqz v8, :cond_a6

    if-nez v0, :cond_95

    .line 980
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    add-long/2addr v4, v8

    goto :goto_9d

    .line 981
    :cond_95
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 982
    :goto_9d
    const-string v0, "delay"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 988
    :cond_a6
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-nez v0, :cond_bf

    .line 989
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_d9

    .line 990
    :cond_bf
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "backoff-policy"

    invoke-interface {p1, v3, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 991
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "initial-backoff"

    invoke-interface {p1, v3, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 993
    :cond_d9
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result p0

    if-eqz p0, :cond_e3

    .line 994
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    .line 996
    :cond_e3
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
    .registers 14

    if-nez p2, :cond_4

    goto/16 :goto_78

    .line 1034
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_78

    .line 1036
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    .line 1037
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_18

    goto :goto_75

    .line 1042
    :cond_18
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 1045
    const-string v2, "JobStore"

    const-string v3, "Encountered JobWorkItem with Intent in persisting list"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    :cond_26
    const/4 v3, 0x0

    .line 1048
    const-string v4, "job-work-item"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1049
    const-string v5, "delivery-count"

    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v6

    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1050
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_48

    .line 1051
    const-string v5, "estimated-download-bytes"

    .line 1052
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v9

    .line 1051
    invoke-interface {p1, v3, v5, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1054
    :cond_48
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_59

    .line 1055
    const-string v5, "estimated-upload-bytes"

    .line 1056
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v9

    .line 1055
    invoke-interface {p1, v3, v5, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1058
    :cond_59
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6b

    .line 1059
    const-string/jumbo v5, "minimum-network-chunk-bytes"

    .line 1060
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v6

    .line 1059
    invoke-interface {p1, v3, v5, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1062
    :cond_6b
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/JobStore$2;->writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1063
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_78
    :goto_78
    return-void
.end method

.method public final writeJobWorkItemsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4

    .line 1023
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobStore$2;->writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    .line 1024
    iget-object p2, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobStore$2;->writeJobWorkItemListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    return-void
.end method

.method public final writeJobsMapImpl(Landroid/util/AtomicFile;Ljava/util/List;)V
    .registers 16

    .line 791
    const-string v0, "job"

    const-string v1, "job-info"

    const-string v2, "JobStore"

    .line 794
    iget-object v3, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v3}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmEventLogger(Lcom/android/server/job/JobStore;)Landroid/util/SystemConfigFileCommitEventLogger;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/SystemConfigFileCommitEventLogger;->setStartTime(J)V

    const/4 v3, 0x0

    .line 795
    :try_start_14
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_123
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_18} :catch_f3
    .catchall {:try_start_14 .. :try_end_18} :catchall_ef

    .line 796
    :try_start_18
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v5

    .line 797
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 798
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v5, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 800
    invoke-interface {v5, v7, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 801
    const-string/jumbo v6, "version"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_da

    move v6, v3

    move v8, v6

    move v9, v8

    .line 802
    :goto_38
    :try_start_38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_9e

    .line 803
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/JobStatus;

    .line 804
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result v11

    if-eqz v11, :cond_67

    .line 805
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Saving job "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :catchall_63
    move-exception p1

    move v3, v6

    goto/16 :goto_dd

    .line 807
    :cond_67
    :goto_67
    invoke-interface {v5, v7, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 808
    invoke-virtual {p0, v5, v10}, Lcom/android/server/job/JobStore$2;->addAttributesToJobTag(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 809
    invoke-virtual {p0, v5, v10}, Lcom/android/server/job/JobStore$2;->writeConstraintsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 810
    invoke-virtual {p0, v5, v10}, Lcom/android/server/job/JobStore$2;->writeExecutionCriteriaToXml(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 811
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v11

    invoke-virtual {p0, v11, v5}, Lcom/android/server/job/JobStore$2;->writeBundleToXml(Landroid/os/PersistableBundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 812
    invoke-virtual {p0, v5, v10}, Lcom/android/server/job/JobStore$2;->writeJobWorkItemsToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 813
    invoke-virtual {p0, v5, v10}, Lcom/android/server/job/JobStore$2;->writeDebugInfoToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/job/controllers/JobStatus;)V

    .line 814
    invoke-interface {v5, v7, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    .line 817
    invoke-virtual {v10}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_9b

    add-int/lit8 v8, v8, 0x1

    .line 819
    invoke-static {v10}, Lcom/android/server/job/JobStore;->-$$Nest$smisSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_9b

    add-int/lit8 v9, v9, 0x1

    :cond_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 824
    :cond_9e
    invoke-interface {v5, v7, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 825
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 827
    invoke-virtual {p1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a7
    .catchall {:try_start_38 .. :try_end_a7} :catchall_63

    if-eqz v4, :cond_b8

    .line 828
    :try_start_a9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_b4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_ac} :catch_b1
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_ad

    goto :goto_b8

    :catchall_ad
    move-exception p1

    move v3, v6

    goto/16 :goto_133

    :catch_b1
    move-exception p1

    move v3, v6

    goto :goto_f6

    :catch_b4
    move-exception p1

    move v3, v6

    goto/16 :goto_126

    .line 837
    :cond_b8
    :goto_b8
    iget-object p1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p1

    iget p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    add-int/2addr p2, v6

    iput p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 838
    iget-object p1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p1

    iget p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    add-int/2addr p2, v8

    iput p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 839
    iget-object p0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p0

    iget p1, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    return-void

    :catchall_da
    move-exception p1

    move v8, v3

    move v9, v8

    :goto_dd
    if-eqz v4, :cond_ee

    .line 795
    :try_start_df
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_e3

    goto :goto_ee

    :catchall_e3
    move-exception p2

    :try_start_e4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_ee

    :catchall_e8
    move-exception p1

    goto :goto_133

    :catch_ea
    move-exception p1

    goto :goto_f6

    :catch_ec
    move-exception p1

    goto :goto_126

    :cond_ee
    :goto_ee
    throw p1
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_ef} :catch_ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e4 .. :try_end_ef} :catch_ea
    .catchall {:try_start_e4 .. :try_end_ef} :catchall_e8

    :catchall_ef
    move-exception p1

    move v8, v3

    move v9, v8

    goto :goto_133

    :catch_f3
    move-exception p1

    move v8, v3

    move v9, v8

    .line 833
    :goto_f6
    :try_start_f6
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_101

    .line 834
    const-string p2, "Error persisting bundle."

    invoke-static {v2, p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_101
    .catchall {:try_start_f6 .. :try_end_101} :catchall_e8

    .line 837
    :cond_101
    :goto_101
    iget-object p1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p1

    iget p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    add-int/2addr p2, v3

    iput p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 838
    iget-object p1, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p1}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p1

    iget p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    add-int/2addr p2, v8

    iput p2, p1, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 839
    iget-object p0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p0

    iget p1, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    goto :goto_132

    :catch_123
    move-exception p1

    move v8, v3

    move v9, v8

    .line 829
    :goto_126
    :try_start_126
    invoke-static {}, Lcom/android/server/job/JobStore;->-$$Nest$sfgetDEBUG()Z

    move-result p2

    if-eqz p2, :cond_101

    .line 830
    const-string p2, "Error writing out job data."

    invoke-static {v2, p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_131
    .catchall {:try_start_126 .. :try_end_131} :catchall_e8

    goto :goto_101

    :goto_132
    return-void

    .line 837
    :goto_133
    iget-object p2, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p2}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p2

    iget v0, p2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    add-int/2addr v0, v3

    iput v0, p2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countAllJobsSaved:I

    .line 838
    iget-object p2, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p2}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p2

    iget v0, p2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    add-int/2addr v0, v8

    iput v0, p2, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemServerJobsSaved:I

    .line 839
    iget-object p0, p0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {p0}, Lcom/android/server/job/JobStore;->-$$Nest$fgetmPersistInfo(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object p0

    iget p2, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    add-int/2addr p2, v9

    iput p2, p0, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->countSystemSyncManagerJobsSaved:I

    .line 840
    throw p1
.end method
