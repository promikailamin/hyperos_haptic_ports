.class Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VcnManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/VcnManagementService;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;-><init>(Lcom/android/server/VcnManagementService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 444
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_fa

    :cond_b
    goto :goto_3e

    :sswitch_c
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    goto :goto_3f

    :sswitch_16
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_3f

    :sswitch_20
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x2

    goto :goto_3f

    :sswitch_2a
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x4

    goto :goto_3f

    :sswitch_34
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_3f

    :goto_3e
    const/4 v1, -0x1

    :goto_3f
    packed-switch v1, :pswitch_data_110

    .line 483
    invoke-static {}, Lcom/android/server/VcnManagementService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received unexpected intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f9

    .line 456
    :pswitch_5f
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_d6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_70

    goto :goto_d6

    .line 464
    :cond_70
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v2}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLock(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 465
    :try_start_77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v3, "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    iget-object v4, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v4}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmConfigs(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 467
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/vcn/VcnConfig;

    invoke-virtual {v6}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 468
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;>;"
    :cond_af
    goto :goto_8a

    .line 472
    :cond_b0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    .line 473
    .local v5, "subGrp":Landroid/os/ParcelUuid;
    iget-object v6, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v6, v5}, Lcom/android/server/VcnManagementService;->-$$Nest$mstopAndClearVcnConfigInternalLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    .line 474
    .end local v5    # "subGrp":Landroid/os/ParcelUuid;
    goto :goto_b4

    .line 476
    :cond_c6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d1

    .line 477
    iget-object v4, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v4}, Lcom/android/server/VcnManagementService;->-$$Nest$mwriteConfigsToDiskLocked(Lcom/android/server/VcnManagementService;)V

    .line 479
    .end local v3    # "toRemove":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    :cond_d1
    monitor-exit v2

    .line 481
    goto :goto_f9

    .line 479
    :catchall_d3
    move-exception v3

    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_77 .. :try_end_d5} :catchall_d3

    throw v3

    .line 459
    :cond_d6
    :goto_d6
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name was empty or null for intent with action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/VcnManagementService;->-$$Nest$mlogWtf(Lcom/android/server/VcnManagementService;Ljava/lang/String;)V

    .line 460
    return-void

    .line 451
    .end local v1    # "pkgName":Ljava/lang/String;
    :pswitch_ef
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmTelephonySubscriptionTracker(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    .line 453
    nop

    .line 485
    :goto_f9
    return-void

    :sswitch_data_fa
    .sparse-switch
        -0x304ed112 -> :sswitch_34
        0xff13fb5 -> :sswitch_2a
        0x1f50b9c2 -> :sswitch_20
        0x5c1076e2 -> :sswitch_16
        0x5e33a4ad -> :sswitch_c
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_ef
        :pswitch_ef
        :pswitch_5f
        :pswitch_5f
    .end packed-switch
.end method
