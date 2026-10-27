.class public Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;
.super Ljava/lang/Object;
.source "ProxyGnssAssistanceProvider.java"


# instance fields
.field public final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x111018e

    const v1, 0x10402a5

    .line 58
    const-string v2, "android.location.provider.action.GNSS_ASSISTANCE_PROVIDER"

    invoke-static {p1, v2, v0, v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    const-string v2, "GnssAssistanceProxy"

    invoke-static {p1, v2, v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    return-void
.end method

.method public static createAndRegister(Landroid/content/Context;)Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;
    .registers 2

    .line 43
    new-instance v0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v0}, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;->register()Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final register()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 70
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    :cond_d
    return v0
.end method

.method public request(Landroid/location/provider/IGnssAssistanceCallback;)V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;-><init>(Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;Landroid/location/provider/IGnssAssistanceCallback;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method
