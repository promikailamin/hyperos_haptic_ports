.class public Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;
.super Ljava/lang/Object;
.source "RemotePrintServiceRecommendationService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mCallbacks:Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

.field public final synthetic this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->mCallbacks:Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintServiceRecommendationService;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V
    .registers 3

    .line 193
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->mCallbacks:Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 199
    iget-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 200
    :try_start_7
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {p2}, Landroid/printservice/recommendation/IRecommendationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/recommendation/IRecommendationService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-$$Nest$fputmService(Lcom/android/server/print/RemotePrintServiceRecommendationService;Landroid/printservice/recommendation/IRecommendationService;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1f

    .line 203
    :try_start_10
    iget-object p2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {p2}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-$$Nest$fgetmService(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;

    move-result-object p2

    new-instance v0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;-><init>(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)V

    invoke-interface {p2, v0}, Landroid/printservice/recommendation/IRecommendationService;->registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1e} :catch_21
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1f

    goto :goto_29

    :catchall_1f
    move-exception p0

    goto :goto_2b

    :catch_21
    move-exception p0

    .line 221
    :try_start_22
    const-string p2, "RemotePrintServiceRecS"

    const-string v0, "Could not register callbacks"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    :goto_29
    monitor-exit p1

    return-void

    :goto_2b
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_1f

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 228
    const-string p1, "RemotePrintServiceRecS"

    const-string v0, "Unexpected termination of connection"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {p1}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 231
    :try_start_e
    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-$$Nest$fputmService(Lcom/android/server/print/RemotePrintServiceRecommendationService;Landroid/printservice/recommendation/IRecommendationService;)V

    .line 232
    monitor-exit p1

    return-void

    :catchall_16
    move-exception p0

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p0
.end method
