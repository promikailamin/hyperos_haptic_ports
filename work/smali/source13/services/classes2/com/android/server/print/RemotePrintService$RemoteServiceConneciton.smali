.class Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConneciton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method private constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 2

    .line 628
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 631
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmDestroyed(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-nez v0, :cond_fc

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmBinding(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_fc

    .line 635
    :cond_12
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fputmBinding(Lcom/android/server/print/RemotePrintService;Z)V

    .line 636
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Landroid/printservice/IPrintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fputmPrintService(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)V

    .line 638
    :try_start_21
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_f5

    .line 642
    nop

    .line 644
    :try_start_27
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmPrintService(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmPrintServiceClient(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_36} :catch_d6

    .line 649
    nop

    .line 651
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmServiceDied(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmHasPrinterDiscoverySession(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 652
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleCreatePrinterDiscoverySession(Lcom/android/server/print/RemotePrintService;)V

    .line 655
    :cond_4c
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmServiceDied(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmDiscoveryPriorityList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 656
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmDiscoveryPriorityList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleStartPrinterDiscovery(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    .line 658
    :cond_65
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 660
    :try_start_6c
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmServiceDied(Lcom/android/server/print/RemotePrintService;)Z

    move-result v2

    if-eqz v2, :cond_9b

    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmTrackedPrinterList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9b

    .line 661
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmTrackedPrinterList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 662
    .local v2, "trackedPrinterCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_87
    if-ge v3, v2, :cond_9b

    .line 663
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmTrackedPrinterList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterId;

    invoke-static {v4, v5}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    .line 662
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 666
    .end local v2    # "trackedPrinterCount":I
    .end local v3    # "i":I
    :cond_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_6c .. :try_end_9c} :catchall_d3

    .line 668
    :goto_9c
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmPendingCommands(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 669
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmPendingCommands(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 670
    .local v0, "pendingCommand":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 671
    .end local v0    # "pendingCommand":Ljava/lang/Runnable;
    goto :goto_9c

    .line 675
    :cond_b8
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmHasPrinterDiscoverySession(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-nez v0, :cond_cd

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmHasActivePrintJobs(Lcom/android/server/print/RemotePrintService;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 676
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mensureUnbound(Lcom/android/server/print/RemotePrintService;)V

    .line 678
    :cond_cd
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fputmServiceDied(Lcom/android/server/print/RemotePrintService;Z)V

    .line 679
    return-void

    .line 666
    :catchall_d3
    move-exception v1

    :try_start_d4
    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v1

    .line 645
    :catch_d6
    move-exception v0

    .line 646
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "RemotePrintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting client for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleBinderDied(Lcom/android/server/print/RemotePrintService;)V

    .line 648
    return-void

    .line 639
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_f5
    move-exception v0

    .line 640
    .restart local v0    # "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleBinderDied(Lcom/android/server/print/RemotePrintService;)V

    .line 641
    return-void

    .line 632
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_fc
    :goto_fc
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmContext(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmServiceConnection(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 633
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 683
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fputmBinding(Lcom/android/server/print/RemotePrintService;Z)V

    .line 684
    return-void
.end method
