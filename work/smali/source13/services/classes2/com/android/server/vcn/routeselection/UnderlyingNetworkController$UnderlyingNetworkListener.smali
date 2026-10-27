.class Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UnderlyingNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnderlyingNetworkListener"
.end annotation


# instance fields
.field private final mUnderlyingNetworkRecordBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Network;",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;


# direct methods
.method static bridge synthetic -$$Nest$mgetSortedUnderlyingNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;)Ljava/util/TreeSet;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->getSortedUnderlyingNetworks()Ljava/util/TreeSet;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 390
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 391
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>(I)V

    .line 387
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    .line 392
    return-void
.end method

.method private getSortedUnderlyingNetworks()Ljava/util/TreeSet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            ">;"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmVcnContext(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/VcnContext;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Landroid/net/vcn/VcnGatewayConnectionConfig;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getVcnUnderlyingNetworkPriorities()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmSubscriptionGroup(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Landroid/os/ParcelUuid;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmLastSnapshot(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmCurrentRecord(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$fgetmCarrierConfig(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;

    move-result-object v7

    .line 397
    invoke-static/range {v2 .. v7}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->getComparator(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 406
    .local v0, "sorted":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;>;"
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 407
    .local v2, "builder":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;
    invoke-virtual {v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 408
    invoke-virtual {v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->build()Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v2    # "builder":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;
    :cond_54
    goto :goto_3b

    .line 412
    :cond_55
    return-object v0
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 417
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    new-instance v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    invoke-direct {v1, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;-><init>(Landroid/net/Network;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "isBlocked"    # Z

    .line 462
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    .line 463
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 464
    .local v0, "builder":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;
    if-nez v0, :cond_23

    .line 465
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got blocked status change for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mlogWtf(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;Ljava/lang/String;)V

    .line 466
    return-void

    .line 469
    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->setIsBlocked(Z)V

    .line 470
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 471
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mreevaluateNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    .line 473
    :cond_31
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 431
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    .line 432
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 433
    .local v0, "builder":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;
    if-nez v0, :cond_23

    .line 434
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got capabilities change for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mlogWtf(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;Ljava/lang/String;)V

    .line 435
    return-void

    .line 438
    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 439
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 440
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mreevaluateNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    .line 442
    :cond_31
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 447
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    .line 448
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;

    .line 449
    .local v0, "builder":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;
    if-nez v0, :cond_23

    .line 450
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got link properties change for unknown key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mlogWtf(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;Ljava/lang/String;)V

    .line 451
    return-void

    .line 454
    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->setLinkProperties(Landroid/net/LinkProperties;)V

    .line 455
    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 456
    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mreevaluateNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    .line 458
    :cond_31
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 423
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->mUnderlyingNetworkRecordBuilders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkListener;->this$0:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-static {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->-$$Nest$mreevaluateNetworks(Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;)V

    .line 426
    return-void
.end method
