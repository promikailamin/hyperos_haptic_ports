.class public Lcom/android/server/Smart5gService$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "Smart5gService.java"


# instance fields
.field public mNetworkCaps:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/Smart5gService;


# direct methods
.method public static synthetic $r8$lambda$SMFlYCso1IIWTTHDwHXJNkPYPrA(Landroid/net/NetworkCapabilities;)Z
    .registers 2

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/Smart5gService;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/android/server/Smart5gService$3;->this$0:Lcom/android/server/Smart5gService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 125
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/Smart5gService$3;->mNetworkCaps:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 136
    const-string v0, "NetworkCallback: onCapabilitiesChanged"

    invoke-static {v0}, Lcom/android/server/Smart5gService;->-$$Nest$smdlog(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/server/Smart5gService$3;->mNetworkCaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0}, Lcom/android/server/Smart5gService$3;->refresh()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 129
    const-string v0, "NetworkCallback: onLost"

    invoke-static {v0}, Lcom/android/server/Smart5gService;->-$$Nest$smdlog(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/Smart5gService$3;->mNetworkCaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lcom/android/server/Smart5gService$3;->refresh()V

    return-void
.end method

.method public final refresh()V
    .registers 6

    .line 142
    iget-object v0, p0, Lcom/android/server/Smart5gService$3;->mNetworkCaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 143
    iget-object v2, p0, Lcom/android/server/Smart5gService$3;->mNetworkCaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/Smart5gService$3$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/Smart5gService$3$$ExternalSyntheticLambda0;-><init>()V

    .line 144
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkCallback: isInternetConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isMobileDataActive:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/Smart5gService;->-$$Nest$smdlog(Ljava/lang/String;)V

    if-nez v2, :cond_3e

    if-eqz v0, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v0, 0x1

    .line 148
    :goto_3f
    iget-object v1, p0, Lcom/android/server/Smart5gService$3;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v1}, Lcom/android/server/Smart5gService;->-$$Nest$fgetmIsOnMobileData(Lcom/android/server/Smart5gService;)Z

    move-result v1

    if-eq v0, v1, :cond_51

    .line 149
    iget-object v1, p0, Lcom/android/server/Smart5gService$3;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {v1, v0}, Lcom/android/server/Smart5gService;->-$$Nest$fputmIsOnMobileData(Lcom/android/server/Smart5gService;Z)V

    .line 150
    iget-object p0, p0, Lcom/android/server/Smart5gService$3;->this$0:Lcom/android/server/Smart5gService;

    invoke-static {p0}, Lcom/android/server/Smart5gService;->-$$Nest$mupdate(Lcom/android/server/Smart5gService;)V

    :cond_51
    return-void
.end method
