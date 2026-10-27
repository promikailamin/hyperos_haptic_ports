.class public Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;
.super Ljava/lang/Object;
.source "ProxyGnssAssistanceProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic val$callback:Landroid/location/provider/IGnssAssistanceCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider;Landroid/location/provider/IGnssAssistanceCallback;)V
    .registers 3

    .line 80
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;->val$callback:Landroid/location/provider/IGnssAssistanceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 89
    :try_start_0
    const-string v0, "GnssAssistanceProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on requesting GnssAssistance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;->val$callback:Landroid/location/provider/IGnssAssistanceCallback;

    invoke-interface {p0}, Landroid/location/provider/IGnssAssistanceCallback;->onError()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void
.end method

.method public run(Landroid/os/IBinder;)V
    .registers 2

    .line 83
    invoke-static {p1}, Landroid/location/provider/IGnssAssistanceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IGnssAssistanceProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGnssAssistanceProvider$1;->val$callback:Landroid/location/provider/IGnssAssistanceCallback;

    invoke-interface {p1, p0}, Landroid/location/provider/IGnssAssistanceProvider;->request(Landroid/location/provider/IGnssAssistanceCallback;)V

    return-void
.end method
