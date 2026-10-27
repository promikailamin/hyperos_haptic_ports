.class Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;
.super Landroid/telephony/TelephonyCallback;
.source "ConnectivityController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellSignalStrengthCallback"
.end annotation


# instance fields
.field public signalStrength:I

.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method private constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 2

    .line 1446
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 1448
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 9
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1453
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1454
    :try_start_5
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    .line 1455
    .local v1, "newSignalStrength":I
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1456
    const-string v2, "JobScheduler.Connectivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signal strength changing from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellSignalStrength;

    .line 1459
    .local v3, "css":Landroid/telephony/CellSignalStrength;
    const-string v4, "JobScheduler.Connectivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CSS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    nop

    .end local v3    # "css":Landroid/telephony/CellSignalStrength;
    goto :goto_3b

    .line 1462
    :cond_6f
    iget v2, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    if-ne v2, v1, :cond_75

    .line 1464
    monitor-exit v0

    return-void

    .line 1466
    :cond_75
    iput v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    .line 1468
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1469
    .end local v1    # "newSignalStrength":I
    monitor-exit v0

    .line 1470
    return-void

    .line 1469
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_5 .. :try_end_8a} :catchall_88

    throw v1
.end method
