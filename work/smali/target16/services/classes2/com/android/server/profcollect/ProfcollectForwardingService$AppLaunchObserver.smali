.class public Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "ProfcollectForwardingService.java"


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 2

    .line 374
    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/ProfcollectForwardingService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/profcollect/ProfcollectForwardingService$AppLaunchObserver;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    return-void
.end method


# virtual methods
.method public onIntentStarted(Landroid/content/Intent;J)V
    .registers 4

    .line 377
    const-string p0, "applaunch_trace_freq"

    const/4 p1, 0x5

    invoke-static {p0, p1}, Lcom/android/server/profcollect/Utils;->withFrequency(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_13

    .line 378
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfgetsIProfcollect()Lcom/android/server/profcollect/IProfCollectd;

    move-result-object p0

    const-string p1, "applaunch"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/server/profcollect/Utils;->traceSystem(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;I)Z

    :cond_13
    return-void
.end method
