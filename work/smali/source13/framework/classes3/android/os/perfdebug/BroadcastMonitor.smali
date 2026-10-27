.class public Landroid/os/perfdebug/BroadcastMonitor;
.super Ljava/lang/Object;
.source "BroadcastMonitor.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist newBroadcastMonitor()Landroid/os/perfdebug/BroadcastMonitor;
    .registers 1

    .line 14
    const-class v0, Landroid/os/perfdebug/BroadcastMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/perfdebug/BroadcastMonitor;

    return-object v0
.end method


# virtual methods
.method public blacklist monitorReceiveBegin()V
    .registers 1

    .line 18
    return-void
.end method

.method public blacklist monitorReceiveEnd(ZLandroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .registers 4
    .param p1, "isOrder"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 21
    return-void
.end method
