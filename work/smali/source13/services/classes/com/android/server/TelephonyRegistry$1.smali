.class Lcom/android/server/TelephonyRegistry$1;
.super Landroid/os/Handler;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/TelephonyRegistry;

    .line 559
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 562
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7fffffff

    packed-switch v0, :pswitch_data_10a

    goto/16 :goto_108

    .line 580
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 581
    .local v0, "callSate":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 582
    .local v2, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmRecords(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 583
    :try_start_15
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmRecords(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 584
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    const-string v5, "com.tencent.mm"

    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 585
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notify wechat call state now...callSate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-$$Nest$smlog(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_15 .. :try_end_4b} :catchall_68

    .line 587
    :try_start_4b
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6, v4, v2}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mgetCallIncomingNumber(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onLegacyCallStateChanged(ILjava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_56} :catch_57
    .catchall {:try_start_4b .. :try_end_56} :catchall_68

    .line 590
    goto :goto_5f

    .line 588
    :catch_57
    move-exception v5

    .line 589
    .local v5, "ex":Landroid/os/RemoteException;
    :try_start_58
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    iget-object v7, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-static {v6, v7}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mremove(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    .line 592
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_5f
    :goto_5f
    goto :goto_1f

    .line 593
    :cond_60
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mhandleRemoveListLocked(Lcom/android/server/TelephonyRegistry;)V

    .line 594
    monitor-exit v3

    .line 596
    goto/16 :goto_108

    .line 594
    :catchall_68
    move-exception v1

    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_58 .. :try_end_6a} :catchall_68

    throw v1

    .line 600
    .end local v0    # "callSate":I
    .end local v2    # "phoneId":I
    :pswitch_6b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 601
    .local v0, "newDefaultPhoneId":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 612
    .local v2, "newDefaultSubId":I
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmRecords(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 613
    :try_start_76
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmRecords(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_80
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TelephonyRegistry$Record;

    .line 614
    .local v5, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget v6, v5, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v6, v1, :cond_95

    .line 615
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v6, v5, v0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mcheckPossibleMissNotify(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V

    .line 617
    .end local v5    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_95
    goto :goto_80

    .line 618
    :cond_96
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mhandleRemoveListLocked(Lcom/android/server/TelephonyRegistry;)V

    .line 619
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_76 .. :try_end_9c} :catchall_d9

    .line 620
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1, v2}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fputmDefaultSubId(Lcom/android/server/TelephonyRegistry;I)V

    .line 621
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1, v0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fputmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;I)V

    .line 622
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmLocalLog(Lcom/android/server/TelephonyRegistry;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default subscription updated: mDefaultPhoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmDefaultPhoneId(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDefaultSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmDefaultSubId(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_108

    .line 619
    :catchall_d9
    move-exception v1

    :try_start_da
    monitor-exit v3
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw v1

    .line 565
    .end local v0    # "newDefaultPhoneId":I
    .end local v2    # "newDefaultSubId":I
    :pswitch_dc
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mgetTelephonyManager(Lcom/android/server/TelephonyRegistry;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 566
    .local v0, "numPhones":I
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_e7
    if-ge v2, v0, :cond_107

    .line 567
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 569
    .local v3, "subIds":[I
    if-eqz v3, :cond_f6

    array-length v4, v3

    if-lez v4, :cond_f6

    .line 570
    const/4 v4, 0x0

    aget v4, v3, v4

    goto :goto_f7

    .line 571
    :cond_f6
    move v4, v1

    :goto_f7
    nop

    .line 572
    .local v4, "subId":I
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$1;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-$$Nest$fgetmCellIdentity(Lcom/android/server/TelephonyRegistry;)[Landroid/telephony/CellIdentity;

    move-result-object v6

    aget-object v6, v6, v2

    const/4 v7, 0x1

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mnotifyCellLocationForSubscriber(Lcom/android/server/TelephonyRegistry;ILandroid/telephony/CellIdentity;Z)V

    .line 566
    .end local v3    # "subIds":[I
    .end local v4    # "subId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_e7

    .line 575
    .end local v2    # "phoneId":I
    :cond_107
    nop

    .line 626
    .end local v0    # "numPhones":I
    :goto_108
    return-void

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_dc
        :pswitch_6b
        :pswitch_a
    .end packed-switch
.end method
