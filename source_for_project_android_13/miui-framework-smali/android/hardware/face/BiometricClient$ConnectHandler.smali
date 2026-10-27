.class Landroid/hardware/face/BiometricClient$ConnectHandler;
.super Landroid/os/Handler;
.source "BiometricClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/BiometricClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/BiometricClient;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/face/BiometricClient;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .line 559
    iput-object p1, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    .line 560
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":ConnectHandler"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 566
    sget-boolean v0, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    const-string v1, ", arg1:"

    const-string v2, ":"

    const-string v3, "BiometricClient"

    if-eqz v0, :cond_3a

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v4}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":handleMessage cb - what:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_3a
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x270f

    if-ne v0, v4, :cond_57

    .line 570
    const-string v0, "MSG_CONNECT_TEST ok"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v0}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetreplayReadyLatch_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 572
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v0}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetreplayReadyLatch_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 574
    :cond_56
    return-void

    .line 577
    :cond_57
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v0}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetaccessLock_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 578
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v0}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmServiceCallback(Landroid/hardware/face/BiometricClient;)Landroid/hardware/face/BiometricClient$ServiceCallback;

    move-result-object v0

    if-nez v0, :cond_a2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v2}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":handleMessage cb ignore- what:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v0}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetaccessLock_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 581
    return-void

    .line 584
    :cond_a2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 586
    .local v0, "in_bundle":Landroid/os/Bundle;
    const-class v4, Landroid/miui/BiometricConnect;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 588
    const-string v4, "result"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 591
    .local v4, "result":Z
    iget v5, p1, Landroid/os/Message;->what:I

    const-string v6, "module_id"

    packed-switch v5, :pswitch_data_27a

    .line 646
    :pswitch_bc
    iget-object v1, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetaccessLock_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_268

    .line 623
    :pswitch_c7
    if-eqz v4, :cond_e5

    iget-object v5, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v5}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmServiceCallback(Landroid/hardware/face/BiometricClient;)Landroid/hardware/face/BiometricClient$ServiceCallback;

    move-result-object v5

    if-eqz v5, :cond_e5

    .line 624
    iget-object v1, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmServiceCallback(Landroid/hardware/face/BiometricClient;)Landroid/hardware/face/BiometricClient$ServiceCallback;

    move-result-object v1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 625
    const-string v3, "key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 624
    invoke-interface {v1, v2, v3, v0}, Landroid/hardware/face/BiometricClient$ServiceCallback;->onBiometricBundleCallback(IILandroid/os/Bundle;)V

    goto :goto_115

    .line 629
    :cond_e5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v5}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":handleMessage cb MSG_CALLBACK_BUNDLE ignore- what:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_115
    iget-object v1, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetaccessLock_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 632
    goto/16 :goto_268

    .line 609
    :pswitch_120
    if-eqz v4, :cond_14a

    iget-object v5, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v5}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmServiceCallback(Landroid/hardware/face/BiometricClient;)Landroid/hardware/face/BiometricClient$ServiceCallback;

    move-result-object v5

    if-eqz v5, :cond_14a

    .line 610
    iget-object v1, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmServiceCallback(Landroid/hardware/face/BiometricClient;)Landroid/hardware/face/BiometricClient$ServiceCallback;

    move-result-object v1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 611
    const-string v3, "event"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 612
    const-string v5, "arg1"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 613
    const-string v6, "arg2"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 610
    invoke-interface {v1, v2, v3, v5, v6}, Landroid/hardware/face/BiometricClient$ServiceCallback;->onBiometricEventCallback(IIII)V

    goto :goto_17a

    .line 616
    :cond_14a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v5}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":handleMessage cb MSG_CALLBACK_EVENT ignore- what:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_17a
    iget-object v1, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetaccessLock_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 619
    goto/16 :goto_268

    .line 635
    :pswitch_185
    const/4 v1, 0x2

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_1b5

    .line 636
    sget-boolean v1, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v1, :cond_1ae

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v2}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":handleMessage cb - MSG_COMMAND_DEINIT_CALLBACK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_1ae
    iget-object v1, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/hardware/face/BiometricClient;->-$$Nest$monServiceUnbind(Landroid/hardware/face/BiometricClient;Z)V

    goto :goto_1de

    .line 639
    :cond_1b5
    const/4 v1, 0x1

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_1de

    .line 640
    sget-boolean v1, Landroid/miui/BiometricConnect;->DEBUG_LOG:Z

    if-eqz v1, :cond_1de

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v2}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":handleMessage cb - MSG_COMMAND_INIT_CALLBACK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_1de
    :goto_1de
    iget-object v1, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v1}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetaccessLock_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 644
    goto/16 :goto_268

    .line 593
    :pswitch_1e9
    const-string v1, "svc_ver_maj"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 594
    .local v1, "serviceVerMaj_":I
    const-string v5, "svc_ver_min"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 595
    .local v5, "serviceVerMin_":I
    const-string v6, "module_ver_maj"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 596
    .local v6, "moduleVerMaj_":I
    const-string v7, "module_ver_min"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 597
    .local v7, "moduleVerMin_":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v8}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmTagInfo(Landroid/hardware/face/BiometricClient;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ":handleMessage cb - MSG_SEVICE_VERSION:SVC: v"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", Module: v"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v2, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v2}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmClientLister(Landroid/hardware/face/BiometricClient;)Landroid/hardware/face/BiometricClient$ClientLister;

    move-result-object v2

    if-eqz v2, :cond_25e

    .line 601
    iget-object v2, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v2}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetmClientLister(Landroid/hardware/face/BiometricClient;)Landroid/hardware/face/BiometricClient$ClientLister;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x64

    add-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v3, v8

    mul-int/lit8 v9, v6, 0x64

    add-int/2addr v9, v7

    int-to-float v9, v9

    div-float/2addr v9, v8

    invoke-interface {v2, v3, v9}, Landroid/hardware/face/BiometricClient$ClientLister;->onVersion(FF)V

    .line 604
    :cond_25e
    iget-object v2, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v2}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetaccessLock_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 605
    nop

    .line 650
    .end local v1    # "serviceVerMaj_":I
    .end local v5    # "serviceVerMin_":I
    .end local v6    # "moduleVerMaj_":I
    .end local v7    # "moduleVerMin_":I
    :goto_268
    const-string v1, "auto_reply"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 654
    .local v1, "auto_reply":Z
    if-nez v1, :cond_279

    .line 655
    iget-object v2, p0, Landroid/hardware/face/BiometricClient$ConnectHandler;->this$0:Landroid/hardware/face/BiometricClient;

    invoke-static {v2}, Landroid/hardware/face/BiometricClient;->-$$Nest$fgetreplayReadyLatch_(Landroid/hardware/face/BiometricClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 657
    :cond_279
    return-void

    :pswitch_data_27a
    .packed-switch 0x3e8
        :pswitch_1e9
        :pswitch_185
        :pswitch_bc
        :pswitch_bc
        :pswitch_120
        :pswitch_c7
    .end packed-switch
.end method
