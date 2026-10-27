.class final Landroid/app/ReceiverReporter$ReceiverHandler;
.super Landroid/os/Handler;
.source "ReceiverReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ReceiverReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiverHandler"
.end annotation


# static fields
.field static final blacklist RECEIVER_RECORDS:I


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "MIUI-ReceiverReporter"

    packed-switch v0, :pswitch_data_2a

    .line 90
    const-string v0, "wrong message received of BRReportHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 78
    :pswitch_d
    :try_start_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 82
    .local v0, "reportEvents":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/mqsas/sdk/event/BroadcastEvent;>;"
    if-eqz v0, :cond_20

    invoke-static {}, Landroid/app/ReceiverReporter;->-$$Nest$smisSystemBootCompleted()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 83
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_21

    .line 87
    .end local v0    # "reportEvents":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/mqsas/sdk/event/BroadcastEvent;>;"
    :cond_20
    goto :goto_28

    .line 85
    :catch_21
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "report message record error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 93
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
