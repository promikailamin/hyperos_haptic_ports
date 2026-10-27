.class Lcom/android/server/job/controllers/ConnectivityController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ConnectivityController;

    .line 1180
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private maybeRegisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V
    .registers 10
    .param p1, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 1229
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1230
    return-void

    .line 1232
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1233
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v1

    .line 1234
    .local v1, "subscriptionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1235
    .local v3, "subId":I
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v4}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_39

    .line 1236
    goto :goto_1c

    .line 1238
    :cond_39
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1239
    .local v4, "idTm":Landroid/telephony/TelephonyManager;
    new-instance v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback-IA;)V

    .line 1240
    .local v5, "callback":Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;
    nop

    .line 1241
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 1240
    invoke-virtual {v4, v6, v5}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 1242
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v6}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1244
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v6

    .line 1245
    .local v6, "signalStrength":Landroid/telephony/SignalStrength;
    if-eqz v6, :cond_62

    .line 1246
    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v7

    iput v7, v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    .line 1248
    .end local v3    # "subId":I
    .end local v4    # "idTm":Landroid/telephony/TelephonyManager;
    .end local v5    # "callback":Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;
    .end local v6    # "signalStrength":Landroid/telephony/SignalStrength;
    :cond_62
    goto :goto_1c

    .line 1249
    :cond_63
    return-void
.end method

.method private maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V
    .registers 12
    .param p1, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 1254
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1255
    return-void

    .line 1257
    :cond_8
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1258
    .local v1, "activeIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .local v3, "size":I
    :goto_18
    if-ge v2, v3, :cond_36

    .line 1259
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v4}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkCapabilities;

    .line 1260
    .local v4, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v4, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1261
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1258
    .end local v4    # "nc":Landroid/net/NetworkCapabilities;
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 1264
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_36
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v2, "JobScheduler.Connectivity"

    if-eqz v0, :cond_54

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active subscription IDs: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_54
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1268
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v3

    .line 1269
    .local v3, "subscriptionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1270
    .local v5, "subId":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 1271
    goto :goto_68

    .line 1273
    :cond_83
    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 1274
    .local v6, "idTm":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v7}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmSignalStrengths(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    .line 1275
    .local v7, "callback":Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;
    if-eqz v7, :cond_99

    .line 1276
    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_b5

    .line 1278
    :cond_99
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Callback for sub "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " didn\'t exist?!?!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    .end local v5    # "subId":I
    .end local v6    # "idTm":Landroid/telephony/TelephonyManager;
    .end local v7    # "callback":Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;
    :goto_b5
    goto :goto_68

    .line 1281
    :cond_b6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 1183
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_1f
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 1191
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1192
    const-string v0, "JobScheduler.Connectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCapabilitiesChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_1f
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1195
    :try_start_24
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 1196
    .local v1, "oldCaps":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_35

    .line 1197
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    .line 1199
    :cond_35
    invoke-direct {p0, p2}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeRegisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    .line 1200
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v3, -0x1

    invoke-static {v2, v3, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1201
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 1202
    .end local v1    # "oldCaps":Landroid/net/NetworkCapabilities;
    monitor-exit v0

    .line 1203
    return-void

    .line 1202
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_24 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;

    .line 1207
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1208
    const-string v0, "JobScheduler.Connectivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :cond_1f
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    :try_start_24
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmAvailableNetworks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 1212
    .local v1, "capabilities":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_35

    .line 1213
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    .line 1215
    :cond_35
    const/4 v2, 0x0

    .local v2, "u":I
    :goto_36
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmCurrentDefaultNetworkCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5f

    .line 1216
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$fgetmCurrentDefaultNetworkCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 1217
    .local v3, "callback":Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
    invoke-static {v3}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fgetmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;)Landroid/net/Network;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1218
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->-$$Nest$fputmDefaultNetwork(Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;Landroid/net/Network;)V

    .line 1215
    .end local v3    # "callback":Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 1221
    .end local v2    # "u":I
    :cond_5f
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v3, -0x1

    invoke-static {v2, v3, p1}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mupdateTrackedJobsLocked(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 1222
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v2}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mpostAdjustCallbacks(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 1223
    .end local v1    # "capabilities":Landroid/net/NetworkCapabilities;
    monitor-exit v0

    .line 1224
    return-void

    .line 1223
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_24 .. :try_end_6e} :catchall_6c

    throw v1
.end method
