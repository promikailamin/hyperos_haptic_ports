.class Landroid/hardware/contexthub/HubEndpoint$1;
.super Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;
.source "HubEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/contexthub/HubEndpoint;


# direct methods
.method public static synthetic blacklist $r8$lambda$WDKl2F8IpddfwlxwBCm8X8FXrt0(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionOpenComplete$1(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Wgr7HfV80R43MKHm3AygViFSD-M(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onMessageReceived$3(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YEFeKd02U6OLgKkDFA207DPz-qo(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$acceptSession$6(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gIE-glYnkToYq9p5Ej6kxJdMhQ4(Landroid/hardware/contexthub/HubEndpoint$1;ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionOpenRequest$0(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zfAg-ukHyOjeZF1dNs7QQcFyq54(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/contexthub/HubEndpoint$1;->lambda$onSessionClosed$2(Landroid/hardware/contexthub/HubEndpointSession;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/contexthub/HubEndpoint;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-direct {p0}, Landroid/hardware/contexthub/IContextHubEndpointCallback$Stub;-><init>()V

    return-void
.end method

.method private blacklist acceptSession(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 12

    .line 274
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 275
    :try_start_7
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contexthub/HubEndpointSession;

    .line 277
    if-eqz v0, :cond_2f

    .line 278
    const-string p2, "HubEndpoint"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSessionOpenRequestResult: session already exists, id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    monitor-exit v1

    return-void

    .line 285
    :cond_2f
    new-instance v2, Landroid/hardware/contexthub/HubEndpointSession;

    iget-object v4, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmAssignedHubEndpointInfo(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v5

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/hardware/contexthub/HubEndpointSession;-><init>(ILandroid/hardware/contexthub/HubEndpoint;Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 293
    new-instance p1, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda4;

    invoke-direct {p1, v3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 295
    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_6c

    .line 299
    invoke-virtual {v2}, Landroid/hardware/contexthub/HubEndpointSession;->setOpened()V

    .line 300
    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 301
    nop

    .line 302
    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, v2}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 305
    :cond_6b
    return-void

    .line 296
    :catchall_6c
    move-exception v0

    move-object p1, v0

    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6c

    throw p1
.end method

.method private blacklist getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;
    .registers 4

    .line 223
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 224
    :try_start_7
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/contexthub/HubEndpointSession;

    monitor-exit v0

    return-object p1

    .line 225
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p1
.end method

.method private blacklist invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V
    .registers 4

    .line 321
    :try_start_0
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmServiceToken(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;->accept(Landroid/hardware/contexthub/IContextHubEndpoint;)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_9} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_17

    .line 327
    :catch_a
    move-exception p1

    .line 328
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_18

    .line 322
    :catch_f
    move-exception p1

    .line 326
    const-string v0, "HubEndpoint"

    const-string v1, "IllegalStateException while calling callback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    :goto_17
    nop

    .line 330
    :goto_18
    return-void
.end method

.method private blacklist invokeCallbackFinished()V
    .registers 2

    .line 316
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 317
    return-void
.end method

.method static synthetic blacklist lambda$acceptSession$5(ILandroid/hardware/contexthub/IContextHubEndpoint;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-interface {p1, p0}, Landroid/hardware/contexthub/IContextHubEndpoint;->openSessionRequestComplete(I)V

    return-void
.end method

.method private synthetic blacklist lambda$acceptSession$6(Landroid/hardware/contexthub/HubEndpointSession;)V
    .registers 3

    .line 303
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpened(Landroid/hardware/contexthub/HubEndpointSession;)V

    return-void
.end method

.method static synthetic blacklist lambda$invokeCallbackFinished$8(Landroid/hardware/contexthub/IContextHubEndpoint;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-interface {p0}, Landroid/hardware/contexthub/IContextHubEndpoint;->onCallbackFinished()V

    return-void
.end method

.method private synthetic blacklist lambda$onMessageReceived$3(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V
    .registers 5

    .line 216
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/HubEndpointMessageCallback;->onMessageReceived(Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;)V

    .line 217
    const/4 p1, 0x0

    invoke-direct {p0, p3, p2, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V

    .line 218
    return-void
.end method

.method private synthetic blacklist lambda$onSessionClosed$2(Landroid/hardware/contexthub/HubEndpointSession;I)V
    .registers 4

    .line 194
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionClosed(Landroid/hardware/contexthub/HubEndpointSession;I)V

    .line 195
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 196
    return-void
.end method

.method private synthetic blacklist lambda$onSessionOpenComplete$1(Landroid/hardware/contexthub/HubEndpointSession;)V
    .registers 3

    .line 170
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpened(Landroid/hardware/contexthub/HubEndpointSession;)V

    .line 171
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 172
    return-void
.end method

.method private synthetic blacklist lambda$onSessionOpenRequest$0(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 5

    .line 144
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    .line 148
    invoke-interface {v0, p2, p3}, Landroid/hardware/contexthub/HubEndpointLifecycleCallback;->onSessionOpenRequest(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Landroid/hardware/contexthub/HubEndpointSessionResult;

    move-result-object v0

    .line 144
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->processSessionOpenRequestResult(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointSessionResult;)V

    return-void
.end method

.method static synthetic blacklist lambda$rejectSession$7(ILandroid/hardware/contexthub/IContextHubEndpoint;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x3

    invoke-interface {p1, p0, v0}, Landroid/hardware/contexthub/IContextHubEndpoint;->closeSession(II)V

    return-void
.end method

.method static synthetic blacklist lambda$sendMessageDeliveryStatus$4(ILandroid/hardware/contexthub/HubMessage;BLandroid/hardware/contexthub/IContextHubEndpoint;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    nop

    .line 235
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result p1

    .line 233
    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/contexthub/IContextHubEndpoint;->sendMessageDeliveryStatus(IIB)V

    return-void
.end method

.method private blacklist processSessionOpenRequestResult(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/HubEndpointSessionResult;)V
    .registers 6

    .line 246
    if-eqz p4, :cond_43

    .line 251
    invoke-virtual {p4}, Landroid/hardware/contexthub/HubEndpointSessionResult;->isAccepted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 252
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1;->acceptSession(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    goto :goto_3f

    .line 254
    :cond_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " from "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " was rejected, reason="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 261
    invoke-virtual {p4}, Landroid/hardware/contexthub/HubEndpointSessionResult;->getReason()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 254
    const-string p3, "HubEndpoint"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->rejectSession(I)V

    .line 265
    :goto_3f
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 266
    return-void

    .line 247
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HubEndpointSessionResult shouldn\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist rejectSession(I)V
    .registers 3

    .line 308
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 313
    return-void
.end method

.method private blacklist sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V
    .registers 5

    .line 230
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 231
    new-instance v0, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda8;-><init>(ILandroid/hardware/contexthub/HubMessage;B)V

    invoke-direct {p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallback(Landroid/hardware/contexthub/HubEndpoint$EndpointConsumer;)V

    .line 238
    :cond_e
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 239
    return-void
.end method


# virtual methods
.method public blacklist onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    .line 206
    if-nez v0, :cond_1e

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived: session not active, id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HubEndpoint"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1e
    if-eqz v0, :cond_38

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointMessageCallback;

    move-result-object v1

    if-nez v1, :cond_29

    goto :goto_38

    .line 214
    :cond_29
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmMessageCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p2, p1}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;Landroid/hardware/contexthub/HubMessage;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3c

    .line 211
    :cond_38
    :goto_38
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contexthub/HubEndpoint$1;->sendMessageDeliveryStatus(ILandroid/hardware/contexthub/HubMessage;B)V

    .line 220
    :goto_3c
    return-void
.end method

.method public blacklist onSessionClosed(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    .line 181
    if-nez v0, :cond_1f

    .line 182
    const-string v1, "HubEndpoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionClosed: session not active, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 184
    :cond_1f
    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointSession;->setClosed()V

    .line 185
    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLock(Landroid/hardware/contexthub/HubEndpoint;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 186
    :try_start_29
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v2}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmActiveSessions(Landroid/hardware/contexthub/HubEndpoint;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 187
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_50

    .line 191
    :goto_33
    if-eqz v0, :cond_4c

    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 192
    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, p2}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4f

    .line 198
    :cond_4c
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 200
    :goto_4f
    return-void

    .line 187
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public blacklist onSessionOpenComplete(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    .line 158
    if-nez v0, :cond_1f

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionOpenComplete: no pending session open request? id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HubEndpoint"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 164
    :cond_1f
    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointSession;->setOpened()V

    .line 167
    :goto_22
    if-eqz v0, :cond_3b

    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 168
    iget-object p1, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {p1}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;Landroid/hardware/contexthub/HubEndpointSession;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3e

    .line 174
    :cond_3b
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 176
    :goto_3e
    return-void
.end method

.method public blacklist onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->getActiveSession(I)Landroid/hardware/contexthub/HubEndpointSession;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 126
    :goto_9
    const-string v1, "HubEndpoint"

    if-eqz v0, :cond_23

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionOpenRequest: session already exists, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_23
    iget-object v2, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v2}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v2

    if-nez v2, :cond_38

    .line 133
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "onSessionOpenRequest: failed to open session, no lifecycle callback attached"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpoint$1;->rejectSession(I)V

    .line 141
    :cond_38
    if-nez v0, :cond_51

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallback(Landroid/hardware/contexthub/HubEndpoint;)Landroid/hardware/contexthub/HubEndpointLifecycleCallback;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 142
    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpoint$1;->this$0:Landroid/hardware/contexthub/HubEndpoint;

    invoke-static {v0}, Landroid/hardware/contexthub/HubEndpoint;->-$$Nest$fgetmLifecycleCallbackExecutor(Landroid/hardware/contexthub/HubEndpoint;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/contexthub/HubEndpoint$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/contexthub/HubEndpoint$1;ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_54

    .line 151
    :cond_51
    invoke-direct {p0}, Landroid/hardware/contexthub/HubEndpoint$1;->invokeCallbackFinished()V

    .line 153
    :goto_54
    return-void
.end method
