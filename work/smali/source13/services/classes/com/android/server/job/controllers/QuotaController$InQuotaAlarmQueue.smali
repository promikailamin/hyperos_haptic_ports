.class Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InQuotaAlarmQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/AlarmQueue<",
        "Lcom/android/server/job/controllers/Package;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 12
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 2892
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 2893
    const-string v3, "*job.quota_check*"

    const-string v4, "In quota"

    const/4 v5, 0x0

    const-wide/32 v6, 0xea60

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 2895
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected isForUser(Lcom/android/server/job/controllers/Package;I)Z
    .registers 4
    .param p1, "key"    # Lcom/android/server/job/controllers/Package;
    .param p2, "userId"    # I

    .line 2899
    iget v0, p1, Lcom/android/server/job/controllers/Package;->userId:I

    if-ne v0, p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected bridge synthetic isForUser(Ljava/lang/Object;I)Z
    .registers 3

    .line 2891
    check-cast p1, Lcom/android/server/job/controllers/Package;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->isForUser(Lcom/android/server/job/controllers/Package;I)Z

    move-result p1

    return p1
.end method

.method protected processExpiredAlarms(Landroid/util/ArraySet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/Package;",
            ">;)V"
        }
    .end annotation

    .line 2904
    .local p1, "expired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/Package;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2905
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/Package;

    .line 2906
    .local v1, "p":Lcom/android/server/job/controllers/Package;
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object v2

    const/4 v3, 0x2

    iget v4, v1, Lcom/android/server/job/controllers/Package;->userId:I

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/server/job/controllers/Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2907
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2904
    .end local v1    # "p":Lcom/android/server/job/controllers/Package;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2909
    .end local v0    # "i":I
    :cond_23
    return-void
.end method
