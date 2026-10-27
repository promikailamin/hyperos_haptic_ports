.class Lcom/android/server/location/contexthub/ContextHubClientManager;
.super Ljava/lang/Object;
.source "ContextHubClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;,
        Lcom/android/server/location/contexthub/ContextHubClientManager$Action;
    }
.end annotation


# static fields
.field public static final ACTION_CANCELLED:I = 0x2

.field public static final ACTION_REGISTERED:I = 0x0

.field public static final ACTION_UNREGISTERED:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final MAX_CLIENT_ID:I = 0x7fff

.field private static final NUM_CLIENT_RECORDS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ContextHubClientManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field private final mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Short;",
            "Lcom/android/server/location/contexthub/ContextHubClientBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mNextHostEndPointId:I

.field private final mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<",
            "Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/DateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/location/contexthub/ContextHubClientManager;->DATE_FORMAT:Ljava/text/DateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubClientManager;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mNextHostEndPointId:I

    .line 92
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 140
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 142
    return-void
.end method

.method private broadcastMessage(ILandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .param p1, "contextHubId"    # I
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/location/NanoAppMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 369
    .local p3, "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 372
    return-void
.end method

.method private getClientBroker(ILandroid/app/PendingIntent;J)Lcom/android/server/location/contexthub/ContextHubClientBroker;
    .registers 8
    .param p1, "contextHubId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "nanoAppId"    # J

    .line 383
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 384
    .local v1, "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->hasPendingIntent(Landroid/app/PendingIntent;J)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 385
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v2

    if-ne v2, p1, :cond_23

    .line 386
    return-object v1

    .line 388
    .end local v1    # "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    :cond_23
    goto :goto_a

    .line 390
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private getHostEndPointId()S
    .registers 6

    .line 343
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const v1, 0x8000

    if-eq v0, v1, :cond_33

    .line 347
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mNextHostEndPointId:I

    .line 348
    .local v0, "id":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    const/16 v2, 0x7fff

    if-gt v1, v2, :cond_31

    .line 349
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-short v4, v0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_28

    .line 350
    if-ne v0, v2, :cond_23

    goto :goto_25

    :cond_23
    add-int/lit8 v4, v0, 0x1

    :goto_25
    iput v4, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mNextHostEndPointId:I

    .line 351
    goto :goto_31

    .line 354
    :cond_28
    if-ne v0, v2, :cond_2b

    goto :goto_2d

    :cond_2b
    add-int/lit8 v4, v0, 0x1

    :goto_2d
    move v0, v4

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 357
    .end local v1    # "i":I
    :cond_31
    :goto_31
    int-to-short v1, v0

    return v1

    .line 344
    .end local v0    # "id":I
    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not register client - max limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$broadcastMessage$4(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 4
    .param p0, "message"    # Landroid/hardware/location/NanoAppMessage;
    .param p1, "nanoappPermissions"    # Ljava/util/List;
    .param p2, "messagePermissions"    # Ljava/util/List;
    .param p3, "client"    # Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 370
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onHubReset$2(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 1
    .param p0, "client"    # Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 308
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onHubReset()V

    return-void
.end method

.method static synthetic lambda$onNanoAppAborted$3(JILcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 4
    .param p0, "nanoAppId"    # J
    .param p2, "abortCode"    # I
    .param p3, "client"    # Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 317
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onNanoAppAborted(JI)V

    return-void
.end method

.method static synthetic lambda$onNanoAppLoaded$0(JLcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 3
    .param p0, "nanoAppId"    # J
    .param p2, "client"    # Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 293
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onNanoAppLoaded(J)V

    return-void
.end method

.method static synthetic lambda$onNanoAppUnloaded$1(JLcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 3
    .param p0, "nanoAppId"    # J
    .param p2, "client"    # Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 301
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onNanoAppUnloaded(J)V

    return-void
.end method


# virtual methods
.method dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 402
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 403
    .local v1, "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    const-wide v2, 0x20b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 404
    .local v2, "token":J
    invoke-virtual {v1, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 405
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 406
    .end local v1    # "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    .end local v2    # "token":J
    goto :goto_a

    .line 407
    :cond_26
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 408
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;>;"
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 409
    const-wide v1, 0x20b00000002L

    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 410
    .local v1, "token":J
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    invoke-virtual {v3, p1}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 411
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 412
    .end local v1    # "token":J
    goto :goto_2c

    .line 413
    :cond_48
    return-void
.end method

.method forEachClientOfHub(ILjava/util/function/Consumer;)V
    .registers 6
    .param p1, "contextHubId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/location/contexthub/ContextHubClientBroker;",
            ">;)V"
        }
    .end annotation

    .line 328
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/location/contexthub/ContextHubClientBroker;>;"
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 329
    .local v1, "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 330
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 332
    .end local v1    # "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    :cond_1f
    goto :goto_a

    .line 333
    :cond_20
    return-void
.end method

.method onHubReset(I)V
    .registers 3
    .param p1, "contextHubId"    # I

    .line 308
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 309
    return-void
.end method

.method onMessageFromNanoApp(ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .param p1, "contextHubId"    # I
    .param p2, "hostEndpointId"    # S
    .param p3, "message"    # Landroid/hardware/location/NanoAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IS",
            "Landroid/hardware/location/NanoAppMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p4, "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    move-result v0

    const-string v1, "ContextHubClientManager"

    if-eqz v0, :cond_2c

    .line 245
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast message with permissions from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    invoke-virtual {p3}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_28
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/location/contexthub/ContextHubClientManager;->broadcastMessage(ILandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    goto :goto_5a

    .line 253
    :cond_2c
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 254
    .local v0, "proxy":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    if-eqz v0, :cond_3e

    .line 255
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    goto :goto_5a

    .line 258
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot send message to unregistered client (host endpoint ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0    # "proxy":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    :goto_5a
    return-void
.end method

.method onNanoAppAborted(IJI)V
    .registers 6
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J
    .param p4, "abortCode"    # I

    .line 317
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda1;-><init>(JI)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 318
    return-void
.end method

.method onNanoAppLoaded(IJ)V
    .registers 5
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J

    .line 293
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 294
    return-void
.end method

.method onNanoAppUnloaded(IJ)V
    .registers 5
    .param p1, "contextHubId"    # I
    .param p2, "nanoAppId"    # J

    .line 301
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientManager$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 302
    return-void
.end method

.method registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;JLjava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)Landroid/hardware/location/IContextHubClient;
    .registers 23
    .param p1, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "nanoAppId"    # J
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "transactionManager"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 200
    move-object/from16 v12, p0

    const-string v13, "Regenerated"

    .line 201
    .local v13, "registerString":Ljava/lang/String;
    monitor-enter p0

    .line 202
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_79

    move-object/from16 v14, p2

    move-wide/from16 v10, p3

    :try_start_d
    invoke-direct {v12, v0, v14, v10, v11}, Lcom/android/server/location/contexthub/ContextHubClientManager;->getClientBroker(ILandroid/app/PendingIntent;J)Lcom/android/server/location/contexthub/ContextHubClientBroker;

    move-result-object v0

    .line 204
    .local v0, "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    if-nez v0, :cond_4c

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->getHostEndPointId()S

    move-result v6

    .line 206
    .local v6, "hostEndPointId":S
    new-instance v15, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iget-object v2, v12, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-object v1, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v11}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/app/PendingIntent;JLjava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V

    move-object v0, v15

    .line 210
    iget-object v1, v12, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "Registered"

    move-object v13, v1

    .line 212
    iget-object v1, v12, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    .line 213
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v12, v3, v4}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubClientManager;Ljava/lang/String;I)V

    .line 212
    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catchall {:try_start_d .. :try_end_49} :catchall_77

    .line 214
    move-object/from16 v1, p5

    .end local v6    # "hostEndPointId":S
    goto :goto_51

    .line 217
    :cond_4c
    move-object/from16 v1, p5

    :try_start_4e
    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->setAttributionTag(Ljava/lang/String;)V

    .line 219
    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_80

    .line 221
    const-string v2, "ContextHubClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " client with host endpoint ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getHostEndPointId()S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {v0}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object v2

    return-object v2

    .line 219
    .end local v0    # "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    :catchall_77
    move-exception v0

    goto :goto_7c

    :catchall_79
    move-exception v0

    move-object/from16 v14, p2

    :goto_7c
    move-object/from16 v1, p5

    :goto_7e
    :try_start_7e
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_80

    throw v0

    :catchall_80
    move-exception v0

    goto :goto_7e
.end method

.method registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;
    .registers 18
    .param p1, "contextHubInfo"    # Landroid/hardware/location/ContextHubInfo;
    .param p2, "clientCallback"    # Landroid/hardware/location/IContextHubClientCallback;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "transactionManager"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 160
    move-object v11, p0

    monitor-enter p0

    .line 161
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubClientManager;->getHostEndPointId()S

    move-result v6

    .line 162
    .local v6, "hostEndPointId":S
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    iget-object v2, v11, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContext:Landroid/content/Context;

    iget-object v3, v11, Lcom/android/server/location/contexthub/ContextHubClientManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)V

    move-object v1, v0

    .line 166
    .local v1, "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    iget-object v0, v11, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, v11, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    .line 168
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubClientManager;Ljava/lang/String;I)V

    .line 167
    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 169
    nop

    .end local v6    # "hostEndPointId":S
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_67

    .line 172
    :try_start_33
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->attachDeathRecipient()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_58

    .line 178
    nop

    .line 180
    const-string v0, "ContextHubClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered client with host endpoint ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getHostEndPointId()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {v1}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object v0

    return-object v0

    .line 173
    :catch_58
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ContextHubClientManager"

    const-string v3, "Failed to attach death recipient to client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->close()V

    .line 177
    const/4 v2, 0x0

    return-object v2

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 417
    const-string v0, ""

    .line 418
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 419
    .local v2, "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .end local v2    # "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    goto :goto_c

    .line 422
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nRegistration history:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 424
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;>;"
    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    .line 428
    :cond_69
    return-object v0
.end method

.method unregisterClient(S)V
    .registers 7
    .param p1, "hostEndPointId"    # S

    .line 273
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubClientBroker;

    .line 274
    .local v0, "broker":Lcom/android/server/location/contexthub/ContextHubClientBroker;
    if-eqz v0, :cond_25

    .line 276
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->isPendingIntentCancelled()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    goto :goto_17

    :cond_16
    const/4 v1, 0x1

    .line 277
    .local v1, "action":I
    :goto_17
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/android/server/location/contexthub/ContextHubClientManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubClientManager;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v1    # "action":I
    :cond_25
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ContextHubClientManager"

    if-eqz v1, :cond_4a

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregistered client with host endpoint ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 283
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot unregister non-existing client with host endpoint ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_60
    return-void
.end method
