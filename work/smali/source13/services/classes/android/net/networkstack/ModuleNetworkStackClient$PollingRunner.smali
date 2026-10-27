.class Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;
.super Ljava/lang/Object;
.source "ModuleNetworkStackClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/networkstack/ModuleNetworkStackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PollingRunner"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/networkstack/ModuleNetworkStackClient;


# direct methods
.method private constructor <init>(Landroid/net/networkstack/ModuleNetworkStackClient;)V
    .registers 2

    .line 81
    iput-object p1, p0, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;->this$0:Landroid/net/networkstack/ModuleNetworkStackClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/networkstack/ModuleNetworkStackClient;Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;-><init>(Landroid/net/networkstack/ModuleNetworkStackClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 87
    :goto_0
    invoke-static {}, Landroid/net/NetworkStack;->getService()Landroid/os/IBinder;

    move-result-object v0

    move-object v1, v0

    .local v1, "nss":Landroid/os/IBinder;
    if-nez v0, :cond_18

    .line 89
    const-wide/16 v2, 0xc8

    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    .line 93
    :goto_c
    goto :goto_0

    .line 90
    :catch_d
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Landroid/net/networkstack/ModuleNetworkStackClient;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Interrupted while waiting for NetworkStack connector"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_c

    .line 96
    :cond_18
    iget-object v0, p0, Landroid/net/networkstack/ModuleNetworkStackClient$PollingRunner;->this$0:Landroid/net/networkstack/ModuleNetworkStackClient;

    invoke-static {v1}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/networkstack/ModuleNetworkStackClient;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 97
    return-void
.end method
