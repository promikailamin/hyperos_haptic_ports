.class Lcom/android/server/am/BatteryExternalStatsWorker$5;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZI[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/telephony/ModemActivityInfo;",
        "Landroid/telephony/TelephonyManager$ModemActivityInfoException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

.field final synthetic val$temp:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 597
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$5;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    iput-object p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$5;->val$temp:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V
    .registers 4
    .param p1, "e"    # Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error reading modem stats:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryExternalStatsWorker"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$5;->val$temp:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 607
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 597
    check-cast p1, Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker$5;->onError(Landroid/telephony/TelephonyManager$ModemActivityInfoException;)V

    return-void
.end method

.method public onResult(Landroid/telephony/ModemActivityInfo;)V
    .registers 3
    .param p1, "result"    # Landroid/telephony/ModemActivityInfo;

    .line 600
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$5;->val$temp:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 601
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .registers 2

    .line 597
    check-cast p1, Landroid/telephony/ModemActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryExternalStatsWorker$5;->onResult(Landroid/telephony/ModemActivityInfo;)V

    return-void
.end method
