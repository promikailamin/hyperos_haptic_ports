.class Lcom/miui/whetstone/PowerKeeperPolicy$2;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;->checkNetworkState(Ljava/lang/String;ILcom/miui/whetstone/INetStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

.field final synthetic blacklist val$callback:Lcom/miui/whetstone/INetStateCallback;

.field final synthetic blacklist val$netId:I

.field final synthetic blacklist val$url:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/miui/whetstone/PowerKeeperPolicy;ILjava/lang/String;Lcom/miui/whetstone/INetStateCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 966
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    iput p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->val$netId:I

    iput-object p3, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->val$callback:Lcom/miui/whetstone/INetStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 10

    .line 969
    const-string v0, "connect to "

    const/4 v1, 0x0

    .line 971
    .local v1, "val":Z
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$fgetmContext(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/content/Context;

    move-result-object v2

    .line 972
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 973
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    .line 974
    .local v3, "network":Landroid/net/Network;
    const-string v4, "PowerKeeperPolicy"

    if-eqz v3, :cond_ae

    invoke-virtual {v3}, Landroid/net/Network;->getNetId()I

    move-result v5

    iget v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->val$netId:I

    if-eq v5, v6, :cond_23

    .line 975
    goto/16 :goto_ae

    .line 977
    :cond_23
    const/4 v5, 0x0

    .line 979
    .local v5, "conn":Ljava/net/HttpURLConnection;
    :try_start_24
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->val$url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_82
    .catchall {:try_start_24 .. :try_end_31} :catchall_80

    move-object v5, v6

    .line 980
    if-nez v5, :cond_3a

    .line 995
    if-eqz v5, :cond_39

    .line 996
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 981
    :cond_39
    return-void

    .line 983
    :cond_3a
    const/16 v6, 0x1388

    :try_start_3c
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 984
    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 985
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 986
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 987
    .local v6, "res":I
    const/16 v7, 0xcc

    if-eq v6, v7, :cond_53

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_54

    .line 989
    :cond_53
    const/4 v1, 0x1

    .line 991
    :cond_54
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_7a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->val$url:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_7a} :catch_82
    .catchall {:try_start_3c .. :try_end_7a} :catchall_80

    .line 995
    .end local v6    # "res":I
    :cond_7a
    if-eqz v5, :cond_ae

    .line 996
    :goto_7c
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_ae

    .line 995
    :catchall_80
    move-exception v0

    goto :goto_a8

    .line 992
    :catch_82
    move-exception v6

    .line 993
    .local v6, "e":Ljava/lang/Exception;
    :try_start_83
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_a5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " failed"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_83 .. :try_end_a5} :catchall_80

    .line 995
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_a5
    if-eqz v5, :cond_ae

    .line 996
    goto :goto_7c

    .line 995
    :goto_a8
    if-eqz v5, :cond_ad

    .line 996
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 998
    :cond_ad
    throw v0

    .line 1001
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "network":Landroid/net/Network;
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    :cond_ae
    :goto_ae
    :try_start_ae
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->val$callback:Lcom/miui/whetstone/INetStateCallback;

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$2;->val$netId:I

    invoke-interface {v0, v1, v2}, Lcom/miui/whetstone/INetStateCallback;->onCheckComplete(ZI)V
    :try_end_b5
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_b5} :catch_b6

    .line 1004
    goto :goto_bc

    .line 1002
    :catch_b6
    move-exception v0

    .line 1003
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "callback powerkeeper fail"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1005
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_bc
    return-void
.end method
