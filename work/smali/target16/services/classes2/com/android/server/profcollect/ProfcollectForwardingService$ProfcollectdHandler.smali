.class public Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;
.super Landroid/os/Handler;
.source "ProfcollectForwardingService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public static synthetic $r8$lambda$W1sP-wkr3brwLKxn11NmnH5mf7s()V
    .registers 3

    .line 295
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetsIProfcollect()Lcom/android/server/profcollect/IProfCollectd;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 296
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetsIProfcollect()Lcom/android/server/profcollect/IProfCollectd;

    move-result-object v0

    const-string/jumbo v1, "periodic"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/profcollect/Utils;->traceSystem(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;I)Z

    :cond_11
    return-void
.end method

.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/os/Looper;)V
    .registers 3

    .line 274
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    .line 275
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 289
    iget-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {p1}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$mregisterObservers(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    .line 291
    const-string p1, "collection_interval"

    const/16 v0, 0x258

    .line 292
    const-string/jumbo v1, "profcollect_native_boot"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 294
    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$fgetmScheduledExecutorService(Lcom/android/server/profcollect/ProfcollectForwardingService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler$$ExternalSyntheticLambda0;-><init>()V

    int-to-long v5, p1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 300
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService$ReportProcessJobService;->schedule(Landroid/content/Context;)V

    return-void

    .line 303
    :cond_34
    new-instance p0, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 285
    :cond_4b
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdHandler;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$mconnectNativeService(Lcom/android/server/profcollect/ProfcollectForwardingService;)Z

    return-void
.end method
