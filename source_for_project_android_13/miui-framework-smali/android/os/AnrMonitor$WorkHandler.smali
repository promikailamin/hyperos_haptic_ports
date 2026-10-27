.class final Landroid/os/AnrMonitor$WorkHandler;
.super Landroid/os/Handler;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkHandler"
.end annotation


# static fields
.field static final blacklist MONITOR_EXECUTION_TIMEOUT_MSG:I = 0x1

.field static final blacklist REPORT_RECORDS:I = 0x2


# direct methods
.method public constructor blacklist <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 659
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 660
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 664
    const-string v0, "opt"

    const-string v1, ","

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_d2

    goto/16 :goto_d1

    .line 694
    :pswitch_b
    :try_start_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 695
    .local v0, "reportContent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {}, Landroid/os/AnrMonitor;->-$$Nest$smisSystemBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 696
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportSimpleEvent(ILjava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_25

    .line 701
    .end local v0    # "reportContent":Ljava/lang/String;
    :cond_23
    goto/16 :goto_d1

    .line 699
    :catch_25
    move-exception v0

    .line 700
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnrMonitor"

    const-string v2, "report record error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_d1

    .line 666
    :pswitch_2f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 667
    .local v2, "data":Landroid/os/Bundle;
    if-eqz v2, :cond_d1

    invoke-static {}, Landroid/os/AnrMonitor;->-$$Nest$smisSystemBootCompleted()Z

    move-result v3

    if-eqz v3, :cond_d1

    invoke-static {}, Landroid/os/AnrMonitor;->isSystemServer()Z

    move-result v3

    if-nez v3, :cond_d1

    .line 668
    const-string v3, "monitor_msg"

    const-string v4, "no monitor message"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 670
    .local v3, "monitorMsg":Ljava/lang/String;
    :try_start_49
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 671
    .local v4, "object":Lorg/json/JSONObject;
    const-string v5, "dump_service"

    const-string v6, "activity"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 674
    .local v5, "args":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 675
    .local v6, "opt1":Lorg/json/JSONObject;
    const-string v7, "dump-app-trace"

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 677
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 678
    .local v7, "opt2":Lorg/json/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 679
    invoke-static {}, Landroid/os/AnrMonitor;->currentProcessName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 680
    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "Event Time : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 684
    const-string v0, "args"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    const/4 v1, -0x1

    .line 686
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 685
    invoke-virtual {v0, v1, v8}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportSimpleEvent(ILjava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_cc} :catch_cd

    .line 689
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "args":Lorg/json/JSONArray;
    .end local v6    # "opt1":Lorg/json/JSONObject;
    .end local v7    # "opt2":Lorg/json/JSONObject;
    goto :goto_d1

    .line 687
    :catch_cd
    move-exception v0

    .line 688
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 706
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "monitorMsg":Ljava/lang/String;
    :cond_d1
    :goto_d1
    return-void

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_b
    .end packed-switch
.end method
