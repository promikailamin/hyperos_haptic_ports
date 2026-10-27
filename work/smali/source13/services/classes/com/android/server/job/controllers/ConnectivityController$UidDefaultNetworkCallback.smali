.class Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidDefaultNetworkCallback"
.end annotation


# instance fields
.field private mBlockedReasons:I

.field private mDefaultNetwork:Landroid/net/Network;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBlockedReasons(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)Landroid/net/Network;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/net/Network;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclear(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->clear()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdumpLocked(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUid(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->setUid(I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 2

    .line 1310
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    return-void
.end method

.method private clear()V
    .registers 2

    .line 1322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 1323
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    .line 1324
    return-void
.end method

.method private dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 1397
    const-string v0, "UID: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1398
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1399
    const-string v0, "; "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    if-nez v0, :cond_19

    .line 1401
    const-string v0, "No network"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_36

    .line 1403
    :cond_19
    const-string v0, "Network: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1404
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 1405
    const-string v0, " (blocked="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1406
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1407
    const-string v0, ")"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1409
    :goto_36
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1410
    return-void
.end method

.method private setUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 1317
    iput p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    .line 1318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 1319
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 1328
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default-onAvailable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_2a
    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;I)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "blockedReasons"    # I

    .line 1333
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1334
    const-string v0, "JobScheduler.Connectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default-onBlockedStatusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_34
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_3b

    .line 1338
    return-void

    .line 1340
    :cond_3b
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_40
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 1342
    iput p2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    .line 1343
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-static {v1, v2, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1344
    monitor-exit v0

    .line 1345
    return-void

    .line 1344
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 1377
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1378
    const-string v0, "JobScheduler.Connectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default-onLost("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_2a
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_31

    .line 1381
    return-void

    .line 1383
    :cond_31
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1384
    :try_start_36
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1385
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 1386
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-static {v1, v2, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1391
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;J)V

    .line 1393
    :cond_4f
    monitor-exit v0

    .line 1394
    return-void

    .line 1393
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_36 .. :try_end_53} :catchall_51

    throw v1
.end method
