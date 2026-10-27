.class public Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;
.super Ljava/lang/Object;
.source "Vpn.java"

# interfaces
.implements Landroid/telephony/CarrierConfigManager$CarrierConfigChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)V
    .registers 2

    .line 2889
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarrierConfigChanged(IIII)V
    .registers 8

    .line 2893
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEventChanges(Lcom/android/server/connectivity/Vpn;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CarrierConfig] Changed on slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " carrerId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " specificCarrierId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2896
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object p1, p1, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter p1

    .line 2897
    :try_start_39
    iget-object p3, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object p3, p3, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmCachedCarrierConfigInfoPerSubId(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2900
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object p2, p2, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eq p2, p0, :cond_50

    monitor-exit p1

    return-void

    :catchall_4e
    move-exception p0

    goto :goto_59

    .line 2902
    :cond_50
    invoke-static {p0}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->-$$Nest$fgetmActiveNetwork(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;)Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->maybeMigrateIkeSessionAndUpdateVpnTransportInfo(Landroid/net/Network;)Z

    .line 2903
    monitor-exit p1

    return-void

    :goto_59
    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_4e

    throw p0
.end method
