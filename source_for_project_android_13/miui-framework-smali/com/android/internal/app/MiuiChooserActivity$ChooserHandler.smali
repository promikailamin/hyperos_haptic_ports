.class Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;
.super Landroid/os/Handler;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooserHandler"
.end annotation


# static fields
.field private static final blacklist CHOOSER_TARGET_SERVICE_RESULT:I = 0x1

.field private static final blacklist CHOOSER_TARGET_SERVICE_WATCHDOG_MAX_TIMEOUT:I = 0x3

.field private static final blacklist CHOOSER_TARGET_SERVICE_WATCHDOG_MIN_TIMEOUT:I = 0x2

.field private static final blacklist LIST_VIEW_UPDATE_MESSAGE:I = 0x6

.field private static final blacklist SHORTCUT_MANAGER_SHARE_TARGET_RESULT:I = 0x4

.field private static final blacklist SHORTCUT_MANAGER_SHARE_TARGET_RESULT_COMPLETED:I = 0x5

.field private static final blacklist WATCHDOG_TIMEOUT_MAX_MILLIS:I = 0x2710

.field private static final blacklist WATCHDOG_TIMEOUT_MIN_MILLIS:I = 0xbb8


# instance fields
.field private blacklist mMinTimeoutPassed:Z

.field final synthetic blacklist this$0:Lcom/android/internal/app/MiuiChooserActivity;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 507
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->mMinTimeoutPassed:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/MiuiChooserActivity;Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;-><init>(Lcom/android/internal/app/MiuiChooserActivity;)V

    return-void
.end method

.method private blacklist maybeStopServiceRequestTimer()V
    .registers 3

    .line 538
    iget-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->mMinTimeoutPassed:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/MiuiChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 539
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    const/16 v1, 0x6b7

    invoke-static {v0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$mlogDirectShareTargetReceived(Lcom/android/internal/app/MiuiChooserActivity;I)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 542
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/MiuiChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->completeServiceTargetLoading()V

    .line 545
    :cond_27
    return-void
.end method

.method private blacklist removeAllMessages()V
    .registers 2

    .line 510
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 511
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 512
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 513
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 514
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 515
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 516
    return-void
.end method

.method private blacklist restartServiceRequestTimer()V
    .registers 5

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->mMinTimeoutPassed:Z

    .line 520
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 521
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 524
    const-string v2, "MiuiChooserActivity"

    const-string v3, "queryTargets setting watchdog timer for 10000ms"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 530
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 532
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 555
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "MiuiChooserActivity"

    sparse-switch v0, :sswitch_data_102

    .line 663
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_100

    .line 654
    :sswitch_d
    const-string v0, "CHOOSER_TARGET_SERVICE_WATCHDOG_TIMEOUT; unbinding services"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->unbindRemainingServices()V

    .line 657
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 658
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/MiuiChooserActivity;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter;->setShowServiceTargets(Z)V

    .line 659
    goto/16 :goto_100

    .line 619
    :sswitch_27
    const-string v0, "LIST_VIEW_UPDATE_MESSAGE; "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserHandle;

    .line 626
    .local v0, "userHandle":Landroid/os/UserHandle;
    goto/16 :goto_100

    .line 646
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    :sswitch_32
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    const/16 v1, 0x6b6

    invoke-static {v0, v1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$mlogDirectShareTargetReceived(Lcom/android/internal/app/MiuiChooserActivity;I)V

    .line 648
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 649
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetDirectLoadComplete()V

    .line 650
    goto/16 :goto_100

    .line 643
    :sswitch_49
    goto/16 :goto_100

    .line 608
    :sswitch_4b
    iput-boolean v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->mMinTimeoutPassed:Z

    .line 609
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/MiuiChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    .line 610
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->getChooserActivityLogger()Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetDirectLoadTimeout()V

    .line 612
    :cond_62
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->unbindRemainingServices()V

    .line 615
    goto/16 :goto_100

    .line 602
    :sswitch_69
    iput-boolean v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->mMinTimeoutPassed:Z

    .line 605
    goto/16 :goto_100

    .line 557
    :sswitch_6d
    const-string v0, "CHOOSER_TARGET_SERVICE_RESULT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/MiuiChooserActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7c

    goto/16 :goto_100

    .line 560
    :cond_7c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;

    .line 561
    .local v0, "sri":Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;
    iget-object v3, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/MiuiChooserActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bb

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooserTargetServiceConnection "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 563
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " returned after being removed from active connections. Have you considered returning results faster?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    goto :goto_100

    .line 568
    :cond_bb
    iget-object v2, v0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v2, :cond_cd

    .line 583
    iget-object v2, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/MiuiChooserActivity;)Lcom/android/internal/app/ChooserListAdapter;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v4, v0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/internal/app/ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;ILjava/util/Map;)V

    .line 587
    :cond_cd
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    iget-object v2, v0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MiuiChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 588
    iget-object v1, v0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v1}, Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;->destroy()V

    .line 589
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/MiuiChooserActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/MiuiChooserActivity$ChooserTargetServiceConnection;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 592
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmServiceConnections(Lcom/android/internal/app/MiuiChooserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 593
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/MiuiChooserActivity;->-$$Nest$fgetmChooserHandler(Lcom/android/internal/app/MiuiChooserActivity;)Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->removeMessages(I)V

    .line 594
    iget-object v1, p0, Lcom/android/internal/app/MiuiChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/MiuiChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/MiuiChooserActivity;->sendVoiceChoicesIfNeeded()V

    .line 665
    .end local v0    # "sri":Lcom/android/internal/app/MiuiChooserActivity$ServiceResultInfo;
    :cond_100
    :goto_100
    return-void

    nop

    :sswitch_data_102
    .sparse-switch
        0x1 -> :sswitch_6d
        0x2 -> :sswitch_69
        0x3 -> :sswitch_4b
        0x4 -> :sswitch_49
        0x5 -> :sswitch_32
        0x6 -> :sswitch_27
        0x15 -> :sswitch_d
    .end sparse-switch
.end method
