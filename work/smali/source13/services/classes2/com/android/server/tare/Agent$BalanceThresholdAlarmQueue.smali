.class Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BalanceThresholdAlarmQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/AlarmQueue<",
        "Lcom/android/server/tare/Agent$Package;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tare/Agent;


# direct methods
.method private constructor <init>(Lcom/android/server/tare/Agent;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 12
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1023
    iput-object p1, p0, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;->this$0:Lcom/android/server/tare/Agent;

    .line 1024
    const-string v3, "*tare.affordability_check*"

    const-string v4, "Affordability check"

    const/4 v5, 0x1

    const-wide/16 v6, 0x3a98

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 1026
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tare/Agent;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;-><init>(Lcom/android/server/tare/Agent;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected isForUser(Lcom/android/server/tare/Agent$Package;I)Z
    .registers 4
    .param p1, "key"    # Lcom/android/server/tare/Agent$Package;
    .param p2, "userId"    # I

    .line 1030
    iget v0, p1, Lcom/android/server/tare/Agent$Package;->userId:I

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

    .line 1022
    check-cast p1, Lcom/android/server/tare/Agent$Package;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;->isForUser(Lcom/android/server/tare/Agent$Package;I)Z

    move-result p1

    return p1
.end method

.method protected processExpiredAlarms(Landroid/util/ArraySet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/tare/Agent$Package;",
            ">;)V"
        }
    .end annotation

    .line 1035
    .local p1, "expired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/tare/Agent$Package;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 1036
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/Agent$Package;

    .line 1037
    .local v1, "p":Lcom/android/server/tare/Agent$Package;
    iget-object v2, p0, Lcom/android/server/tare/Agent$BalanceThresholdAlarmQueue;->this$0:Lcom/android/server/tare/Agent;

    invoke-static {v2}, Lcom/android/server/tare/Agent;->-$$Nest$fgetmHandler(Lcom/android/server/tare/Agent;)Landroid/os/Handler;

    move-result-object v2

    iget v3, v1, Lcom/android/server/tare/Agent$Package;->userId:I

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/tare/Agent$Package;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1039
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1035
    .end local v1    # "p":Lcom/android/server/tare/Agent$Package;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1041
    .end local v0    # "i":I
    :cond_23
    return-void
.end method
