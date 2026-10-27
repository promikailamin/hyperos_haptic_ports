.class public final Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;
.super Ljava/lang/Object;
.source "IntrusionDetectionService.java"

# interfaces
.implements Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 1

    .line 310
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDataAggregator(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Lcom/android/server/security/intrusiondetection/DataAggregator;
    .registers 3

    .line 336
    new-instance v0, Lcom/android/server/security/intrusiondetection/DataAggregator;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/server/security/intrusiondetection/DataAggregator;-><init>(Landroid/content/Context;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V

    return-object v0
.end method

.method public getIntrusionDetectionEventransportConnection()Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;
    .registers 2

    .line 330
    new-instance v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 4

    .line 320
    new-instance p0, Lcom/android/server/ServiceThread;

    const/4 v0, -0x2

    const/4 v1, 0x1

    const-string v2, "IntrusionDetectionService"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->start()V

    .line 324
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getPermissionEnforcer()Landroid/os/PermissionEnforcer;
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object p0

    return-object p0
.end method
