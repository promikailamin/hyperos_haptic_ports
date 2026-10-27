.class public Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 2

    .line 619
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Lcom/android/server/print/RemotePrintService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 622
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmDestroyed(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-nez p1, :cond_f8

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmBinding(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_f8

    .line 626
    :cond_12
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fputmBinding(Lcom/android/server/print/RemotePrintService;Z)V

    .line 627
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Landroid/printservice/IPrintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fputmPrintService(Lcom/android/server/print/RemotePrintService;Landroid/printservice/IPrintService;)V

    .line 629
    :try_start_21
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_f2

    .line 635
    :try_start_26
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmPrintService(Lcom/android/server/print/RemotePrintService;)Landroid/printservice/IPrintService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmPrintServiceClient(Lcom/android/server/print/RemotePrintService;)Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_35} :catch_d5

    .line 642
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmServiceDied(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmHasPrinterDiscoverySession(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 643
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleCreatePrinterDiscoverySession(Lcom/android/server/print/RemotePrintService;)V

    .line 646
    :cond_4a
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmServiceDied(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmDiscoveryPriorityList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 647
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmDiscoveryPriorityList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleStartPrinterDiscovery(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    .line 649
    :cond_63
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 651
    :try_start_6a
    iget-object p2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmServiceDied(Lcom/android/server/print/RemotePrintService;)Z

    move-result p2

    if-eqz p2, :cond_9b

    iget-object p2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmTrackedPrinterList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_9b

    .line 652
    iget-object p2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p2}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmTrackedPrinterList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    move v1, v0

    :goto_85
    if-ge v1, p2, :cond_9b

    .line 654
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v2}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmTrackedPrinterList(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    invoke-static {v2, v3}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    :catchall_99
    move-exception p0

    goto :goto_d3

    .line 657
    :cond_9b
    monitor-exit p1
    :try_end_9c
    .catchall {:try_start_6a .. :try_end_9c} :catchall_99

    .line 659
    :goto_9c
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmPendingCommands(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b8

    .line 660
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmPendingCommands(Lcom/android/server/print/RemotePrintService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 661
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_9c

    .line 666
    :cond_b8
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmHasPrinterDiscoverySession(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-nez p1, :cond_cd

    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmHasActivePrintJobs(Lcom/android/server/print/RemotePrintService;)Z

    move-result p1

    if-nez p1, :cond_cd

    .line 667
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mensureUnbound(Lcom/android/server/print/RemotePrintService;)V

    .line 669
    :cond_cd
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p0, v0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fputmServiceDied(Lcom/android/server/print/RemotePrintService;Z)V

    return-void

    .line 657
    :goto_d3
    :try_start_d3
    monitor-exit p1
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_99

    throw p0

    :catch_d5
    move-exception p1

    .line 637
    const-string v0, "RemotePrintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting client for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleBinderDied(Lcom/android/server/print/RemotePrintService;)V

    return-void

    .line 631
    :catch_f2
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleBinderDied(Lcom/android/server/print/RemotePrintService;)V

    return-void

    .line 623
    :cond_f8
    :goto_f8
    iget-object p1, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmContext(Lcom/android/server/print/RemotePrintService;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fgetmServiceConnection(Lcom/android/server/print/RemotePrintService;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 674
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;->this$0:Lcom/android/server/print/RemotePrintService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/print/RemotePrintService;->-$$Nest$fputmBinding(Lcom/android/server/print/RemotePrintService;Z)V

    return-void
.end method
