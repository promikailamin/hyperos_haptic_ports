.class final Lcom/android/server/appop/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# instance fields
.field public final pkgOps:Landroid/util/ArrayMap;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;I)V
    .registers 3

    .line 586
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 587
    iput p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 591
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-interface {v0, v1}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removeUid(I)V

    const/4 v0, 0x0

    .line 592
    :goto_a
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 593
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 594
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->removePackage(Ljava/lang/String;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;J)V
    .registers 5

    .line 610
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mgetUidStateTracker(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-interface {v0, p1, p0, p2, p3}, Lcom/android/server/appop/AppOpsUidStateTracker;->dumpUidState(Ljava/io/PrintWriter;IJ)V

    return-void
.end method

.method public evalMode(II)I
    .registers 4

    .line 600
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mgetUidStateTracker(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/appop/AppOpsUidStateTracker;->evalMode(III)I

    move-result p0

    return p0
.end method

.method public getState()I
    .registers 2

    .line 605
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Lcom/android/server/appop/AppOpsService;->-$$Nest$mgetUidStateTracker(Lcom/android/server/appop/AppOpsService;)Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    iget p0, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-interface {v0, p0}, Lcom/android/server/appop/AppOpsUidStateTracker;->getUidState(I)I

    move-result p0

    return p0
.end method
