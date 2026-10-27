.class Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrinterDiscoverySessionMediator"
.end annotation


# instance fields
.field private final mDiscoveryObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/print/IPrinterDiscoveryObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDestroyed:Z

.field private final mPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartedPrinterDiscoveryTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateTrackedPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public static synthetic $r8$lambda$0WYc6q1JaWyIs0KBsDNaSFpBZRo(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1bKMu_-eRdvH5I9_weS__Iy3yLg(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchDestroyPrinterDiscoverySession(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FAC-7EU5oHKE3w1CWaJTQrs7De4(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WPnZWxAcULKXo0BvpaAMnH3u6is(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZV9uTbCvP2RPIqcyY3MFvTU8CY4(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersAdded(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aVNI9C1cPE4uOIZ2UjYA_kJz39U(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersAdded(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fvp5guvKJQeZc-FjAk72NYKIRQ8(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStartPrinterDiscovery(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gLu9gC1P6N64VJDT-X_nfWIhtqE(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchStopPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pVUz9hy3VNDfqD4QAYcmzhjCl6k(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tTSTkOGZyl0YlI6y5va4xQ6L2ZE(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchCreatePrinterDiscoverySession(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v49nSd7KpJ0A4kMLOo3NMyE7Y7w(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handleDispatchPrintersRemoved(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/print/UserState;)V
    .registers 5

    .line 1292
    iput-object p1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1272
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    .line 1275
    new-instance v0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$1;-><init>(Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    .line 1294
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/print/UserState;->-$$Nest$fgetmActiveServices(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 1296
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1294
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1297
    return-void
.end method

.method private handleDispatchCreatePrinterDiscoverySession(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    .line 1688
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1689
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 1690
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 1691
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintService;->createPrinterDiscoverySession()V

    .line 1689
    .end local v2    # "service":Lcom/android/server/print/RemotePrintService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1693
    .end local v1    # "i":I
    :cond_13
    return-void
.end method

.method private handleDispatchDestroyPrinterDiscoverySession(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    .line 1697
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1698
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 1699
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 1700
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintService;->destroyPrinterDiscoverySession()V

    .line 1698
    .end local v2    # "service":Lcom/android/server/print/RemotePrintService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1702
    .end local v1    # "i":I
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onDestroyed()V

    .line 1703
    return-void
.end method

.method private handleDispatchPrintersAdded(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 1669
    .local p1, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1670
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1671
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1672
    .local v2, "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, v2, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 1670
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1674
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1675
    return-void
.end method

.method private handleDispatchPrintersRemoved(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1678
    .local p1, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1679
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1680
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1681
    .local v2, "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, v2, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->handlePrintersRemoved(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 1679
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1683
    .end local v1    # "i":I
    :cond_17
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1684
    return-void
.end method

.method private handleDispatchStartPrinterDiscovery(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1707
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1708
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 1709
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 1710
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v2, p2}, Lcom/android/server/print/RemotePrintService;->startPrinterDiscovery(Ljava/util/List;)V

    .line 1708
    .end local v2    # "service":Lcom/android/server/print/RemotePrintService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1712
    .end local v1    # "i":I
    :cond_13
    return-void
.end method

.method private handleDispatchStopPrinterDiscovery(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/print/RemotePrintService;",
            ">;)V"
        }
    .end annotation

    .line 1715
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1716
    .local v0, "serviceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 1717
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 1718
    .local v2, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintService;->stopPrinterDiscovery()V

    .line 1716
    .end local v2    # "service":Lcom/android/server/print/RemotePrintService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1720
    .end local v1    # "i":I
    :cond_13
    return-void
.end method

.method private handlePrintersAdded(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 6
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 1740
    .local p2, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :try_start_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 1743
    goto :goto_11

    .line 1741
    :catch_9
    move-exception v0

    .line 1742
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "UserState"

    const-string v2, "Error sending added printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1744
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method private handlePrintersRemoved(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 6
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1749
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :try_start_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v0}, Landroid/print/IPrinterDiscoveryObserver;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 1752
    goto :goto_11

    .line 1750
    :catch_9
    move-exception v0

    .line 1751
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "UserState"

    const-string v2, "Error sending removed printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1753
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method private handleStartPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;
    .param p2, "printerId"    # Landroid/print/PrinterId;

    .line 1729
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 1730
    return-void
.end method

.method private handleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;
    .param p2, "printerId"    # Landroid/print/PrinterId;

    .line 1734
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 1735
    return-void
.end method

.method private handleValidatePrinters(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/print/RemotePrintService;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1724
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->validatePrinters(Ljava/util/List;)V

    .line 1725
    return-void
.end method

.method private removePrintersForServiceLocked(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .line 1642
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1643
    return-void

    .line 1646
    :cond_9
    const/4 v0, 0x0

    .line 1647
    .local v0, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1648
    .local v1, "printerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_33

    .line 1649
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    .line 1650
    .local v3, "printerId":Landroid/print/PrinterId;
    invoke-virtual {v3}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1651
    if-nez v0, :cond_2d

    .line 1652
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1654
    :cond_2d
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    .end local v3    # "printerId":Landroid/print/PrinterId;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1657
    .end local v2    # "i":I
    :cond_33
    if-eqz v0, :cond_58

    .line 1658
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1659
    .local v2, "removedPrinterCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    if-ge v3, v2, :cond_48

    .line 1660
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1659
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 1662
    .end local v3    # "i":I
    :cond_48
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v4, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1666
    .end local v2    # "removedPrinterCount":I
    :cond_58
    return-void
.end method


# virtual methods
.method public addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 6
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 1301
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1304
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1305
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda12;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    .line 1307
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1305
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1309
    :cond_28
    return-void
.end method

.method public destroyLocked()V
    .registers 7

    .line 1456
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 1457
    const-string v0, "UserState"

    const-string v1, "Not destroying - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    return-void

    .line 1460
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    .line 1462
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1463
    .local v0, "printerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_28

    .line 1464
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 1465
    .local v2, "printerId":Landroid/print/PrinterId;
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-virtual {v3, v2}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 1463
    .end local v2    # "printerId":Landroid/print/PrinterId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1468
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1469
    .local v1, "observerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    if-ge v2, v1, :cond_43

    .line 1470
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1471
    .local v3, "token":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/print/IPrinterDiscoveryObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/print/IPrinterDiscoveryObserver;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 1469
    .end local v3    # "token":Landroid/os/IBinder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1474
    .end local v2    # "i":I
    :cond_43
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda4;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v5}, Lcom/android/server/print/UserState;->-$$Nest$fgetmActiveServices(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v5

    .line 1476
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1474
    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1477
    return-void
.end method

.method public dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 14
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1604
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->-$$Nest$fgetmDestroyed(Lcom/android/server/print/UserState;)Z

    move-result v0

    const-string v1, "is_destroyed"

    const-wide v2, 0x10800000001L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1605
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    .line 1607
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1605
    xor-int/lit8 v0, v0, 0x1

    const-string v1, "is_printer_discovery_in_progress"

    const-wide v2, 0x10800000002L

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1609
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1610
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    if-ge v1, v0, :cond_45

    .line 1611
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/print/IPrinterDiscoveryObserver;

    .line 1612
    .local v2, "observer":Landroid/print/IPrinterDiscoveryObserver;
    const-wide v3, 0x20900000003L

    .line 1614
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1612
    const-string/jumbo v6, "printer_discovery_observers"

    invoke-virtual {p1, v6, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 1610
    .end local v2    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1616
    .end local v1    # "i":I
    :cond_45
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1618
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1619
    .local v1, "tokenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    if-ge v2, v1, :cond_6c

    .line 1620
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 1621
    .local v3, "token":Landroid/os/IBinder;
    const-wide v4, 0x20900000004L

    .line 1622
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1621
    const-string v7, "discovery_requests"

    invoke-virtual {p1, v7, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 1619
    .end local v3    # "token":Landroid/os/IBinder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 1625
    .end local v2    # "i":I
    :cond_6c
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1626
    .local v2, "trackedPrinters":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_73
    if-ge v3, v2, :cond_8b

    .line 1627
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterId;

    .line 1628
    .local v4, "printer":Landroid/print/PrinterId;
    const-wide v5, 0x20b00000005L

    const-string/jumbo v7, "tracked_printer_requests"

    invoke-static {p1, v7, v5, v6, v4}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    .line 1626
    .end local v4    # "printer":Landroid/print/PrinterId;
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 1632
    .end local v3    # "i":I
    :cond_8b
    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1633
    .local v3, "printerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_92
    if-ge v4, v3, :cond_b2

    .line 1634
    iget-object v5, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterInfo;

    .line 1635
    .local v5, "printer":Landroid/print/PrinterInfo;
    iget-object v6, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v6}, Lcom/android/server/print/UserState;->-$$Nest$fgetmContext(Lcom/android/server/print/UserState;)Landroid/content/Context;

    move-result-object v6

    const-wide v9, 0x20b00000006L

    const-string/jumbo v8, "printer"

    move-object v7, p1

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/internal/print/DumpUtils;->writePrinterInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterInfo;)V

    .line 1633
    .end local v5    # "printer":Landroid/print/PrinterInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_92

    .line 1638
    .end local v4    # "i":I
    :cond_b2
    return-void
.end method

.method public onCustomPrinterIconLoadedLocked(Landroid/print/PrinterId;)V
    .registers 7
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 1556
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 1557
    const-string v0, "UserState"

    const-string v1, "Not updating printer - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    return-void

    .line 1561
    :cond_c
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 1562
    .local v0, "printer":Landroid/print/PrinterInfo;
    if-eqz v0, :cond_41

    .line 1563
    new-instance v1, Landroid/print/PrinterInfo$Builder;

    invoke-direct {v1, v0}, Landroid/print/PrinterInfo$Builder;-><init>(Landroid/print/PrinterInfo;)V

    .line 1564
    invoke-virtual {v1}, Landroid/print/PrinterInfo$Builder;->incCustomPrinterIconGen()Landroid/print/PrinterInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrinterInfo$Builder;->build()Landroid/print/PrinterInfo;

    move-result-object v1

    .line 1565
    .local v1, "newPrinter":Landroid/print/PrinterInfo;
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1568
    .local v2, "addedPrinters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/print/PrinterInfo;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v4, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1573
    .end local v1    # "newPrinter":Landroid/print/PrinterInfo;
    .end local v2    # "addedPrinters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/print/PrinterInfo;>;"
    :cond_41
    return-void
.end method

.method public onDestroyed()V
    .registers 1

    .line 1453
    return-void
.end method

.method public onPrintersAddedLocked(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 1483
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 1484
    const-string v0, "UserState"

    const-string v1, "Not adding printers - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    return-void

    .line 1487
    :cond_c
    const/4 v0, 0x0

    .line 1488
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1489
    .local v1, "addedPrinterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_3c

    .line 1490
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    .line 1491
    .local v3, "printer":Landroid/print/PrinterInfo;
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 1492
    .local v4, "oldPrinter":Landroid/print/PrinterInfo;
    if-eqz v4, :cond_2e

    invoke-virtual {v4, v3}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 1493
    :cond_2e
    if-nez v0, :cond_36

    .line 1494
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 1496
    :cond_36
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1489
    .end local v3    # "printer":Landroid/print/PrinterInfo;
    .end local v4    # "oldPrinter":Landroid/print/PrinterInfo;
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1499
    .end local v2    # "i":I
    :cond_3c
    if-eqz v0, :cond_4e

    .line 1500
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v3, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1504
    :cond_4e
    return-void
.end method

.method public onPrintersRemovedLocked(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1510
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 1511
    const-string v0, "UserState"

    const-string v1, "Not removing printers - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    return-void

    .line 1514
    :cond_c
    const/4 v0, 0x0

    .line 1515
    .local v0, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1516
    .local v1, "removedPrinterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_30

    .line 1517
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterId;

    .line 1518
    .local v3, "removedPrinterId":Landroid/print/PrinterId;
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1519
    if-nez v0, :cond_2a

    .line 1520
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1522
    :cond_2a
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    .end local v3    # "removedPrinterId":Landroid/print/PrinterId;
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1525
    .end local v2    # "i":I
    :cond_30
    if-eqz v0, :cond_42

    .line 1526
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v3, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1530
    :cond_42
    return-void
.end method

.method public onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 1580
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 1581
    const-string v0, "UserState"

    const-string v1, "Not updating added service - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    return-void

    .line 1585
    :cond_c
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1588
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1589
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda6;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1593
    :cond_35
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1594
    .local v0, "trackedPrinterCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    if-ge v1, v0, :cond_67

    .line 1595
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 1596
    .local v2, "printerId":Landroid/print/PrinterId;
    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 1597
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v4, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1594
    .end local v2    # "printerId":Landroid/print/PrinterId;
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 1601
    .end local v1    # "i":I
    :cond_67
    return-void
.end method

.method public onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 1576
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0, p1}, Lcom/android/server/print/UserState;->-$$Nest$mremoveServiceLocked(Lcom/android/server/print/UserState;Lcom/android/server/print/RemotePrintService;)V

    .line 1577
    return-void
.end method

.method public onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .line 1533
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 1534
    const-string v0, "UserState"

    const-string v1, "Not updating removed service - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    return-void

    .line 1538
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1539
    .local v0, "serviceName":Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removePrintersForServiceLocked(Landroid/content/ComponentName;)V

    .line 1540
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    .line 1541
    return-void
.end method

.method public removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 1313
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1315
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mDiscoveryObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 1316
    invoke-virtual {p0}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    .line 1318
    :cond_10
    return-void
.end method

.method public final startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 8
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1322
    .local p2, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 1323
    const-string v0, "UserState"

    const-string v1, "Not starting dicovery - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    return-void

    .line 1327
    :cond_c
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1330
    .local v0, "discoveryStarted":Z
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1334
    if-eqz v0, :cond_2d

    if-eqz p2, :cond_2d

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1335
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-virtual {v1, p2}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V

    .line 1336
    return-void

    .line 1340
    :cond_2d
    iget-object v2, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_36

    .line 1341
    return-void

    .line 1344
    :cond_36
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda8;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v4}, Lcom/android/server/print/UserState;->-$$Nest$fgetmActiveServices(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v4

    .line 1346
    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1344
    invoke-static {v2, p0, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1347
    return-void
.end method

.method public final startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    .registers 6
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 1403
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 1404
    const-string v0, "UserState"

    const-string v1, "Not starting printer state tracking - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    return-void

    .line 1408
    :cond_c
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1409
    return-void

    .line 1411
    :cond_15
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1413
    .local v0, "containedPrinterId":Z
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1415
    if-eqz v0, :cond_23

    .line 1416
    return-void

    .line 1419
    :cond_23
    iget-object v1, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v1}, Lcom/android/server/print/UserState;->-$$Nest$fgetmActiveServices(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 1420
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    if-nez v1, :cond_36

    .line 1421
    return-void

    .line 1424
    :cond_36
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v3, p0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1426
    return-void
.end method

.method public final stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 6
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .line 1350
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 1351
    const-string v0, "UserState"

    const-string v1, "Not stopping dicovery - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    return-void

    .line 1355
    :cond_c
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {p1}, Landroid/print/IPrinterDiscoveryObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1356
    return-void

    .line 1359
    :cond_19
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1360
    return-void

    .line 1362
    :cond_22
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda11;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v3}, Lcom/android/server/print/UserState;->-$$Nest$fgetmActiveServices(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1364
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1362
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1365
    return-void
.end method

.method public final stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V
    .registers 5
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 1429
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 1430
    const-string v0, "UserState"

    const-string v1, "Not stopping printer state tracking - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    return-void

    .line 1434
    :cond_c
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStartedPrinterDiscoveryTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1435
    return-void

    .line 1438
    :cond_15
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mStateTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1439
    return-void

    .line 1442
    :cond_1e
    iget-object v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->-$$Nest$fgetmActiveServices(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 1443
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    if-nez v0, :cond_31

    .line 1444
    return-void

    .line 1447
    :cond_31
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v2, p0, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1449
    return-void
.end method

.method public validatePrintersLocked(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .line 1368
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->mIsDestroyed:Z

    if-eqz v0, :cond_c

    .line 1369
    const-string v0, "UserState"

    const-string v1, "Not validating pritners - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return-void

    .line 1373
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1374
    .local v0, "remainingList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    .line 1375
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1377
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/print/PrinterId;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1378
    .local v2, "updateList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    const/4 v3, 0x0

    .line 1379
    .local v3, "serviceName":Landroid/content/ComponentName;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1380
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterId;

    .line 1381
    .local v4, "printerId":Landroid/print/PrinterId;
    if-eqz v4, :cond_50

    .line 1382
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1383
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1384
    invoke-virtual {v4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1385
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_50

    .line 1386
    :cond_40
    invoke-virtual {v4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1387
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1388
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1391
    .end local v4    # "printerId":Landroid/print/PrinterId;
    :cond_50
    :goto_50
    goto :goto_21

    .line 1393
    :cond_51
    iget-object v4, p0, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v4}, Lcom/android/server/print/UserState;->-$$Nest$fgetmActiveServices(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/RemotePrintService;

    .line 1394
    .local v4, "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v4, :cond_6f

    .line 1395
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v6, p0, v4, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1399
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/print/PrinterId;>;"
    .end local v2    # "updateList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v3    # "serviceName":Landroid/content/ComponentName;
    .end local v4    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_6f
    goto :goto_11

    .line 1400
    :cond_70
    return-void
.end method
