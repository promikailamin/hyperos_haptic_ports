.class public Lcom/android/server/backup/transport/TransportConnectionManager;
.super Ljava/lang/Object;
.source "TransportConnectionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransportConnectionManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/content/ComponentName;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mTransportClientsCallerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/backup/transport/TransportConnection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransportClientsCreated:I

.field private final mTransportClientsLock:Ljava/lang/Object;

.field private final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$L5nD_60PEhxIdzeW4lU6im8fA18(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 1

    invoke-static {p0}, Lcom/android/server/backup/transport/TransportConnectionManager;->getRealTransportIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "transportStats"    # Lcom/android/server/backup/transport/TransportStats;

    .line 63
    new-instance v0, Lcom/android/server/backup/transport/TransportConnectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/backup/transport/TransportConnectionManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/backup/transport/TransportConnectionManager;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Ljava/util/function/Function;)V

    .line 64
    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Ljava/util/function/Function;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "transportStats"    # Lcom/android/server/backup/transport/TransportStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/transport/TransportStats;",
            "Ljava/util/function/Function<",
            "Landroid/content/ComponentName;",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p4, "intentFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/content/ComponentName;Landroid/content/Intent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    .line 68
    iput p1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mUserId:I

    .line 69
    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 71
    iput-object p4, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mIntentFunction:Ljava/util/function/Function;

    .line 72
    return-void
.end method

.method private static getRealTransportIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3
    .param p0, "transportComponent"    # Landroid/content/ComponentName;

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Lcom/android/server/backup/transport/TransportConnection;
    .registers 14
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "bindIntent"    # Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    new-instance v9, Lcom/android/server/backup/transport/TransportConnection;

    iget v2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mUserId:I

    iget-object v3, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    iget v1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    move-object v5, p3

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/backup/transport/TransportConnection;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    .line 120
    .local v1, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget v2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    .line 122
    const/4 v2, 0x3

    const-string v3, "TransportConnectionManager"

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-static {v4, p2, v5}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    invoke-static {v2, v3, v4}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    monitor-exit v0

    return-object v1

    .line 127
    .end local v1    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method


# virtual methods
.method public disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .registers 9
    .param p1, "transportConnection"    # Lcom/android/server/backup/transport/TransportConnection;
    .param p2, "caller"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->unbind(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/android/server/backup/transport/TransportConnection;->markAsDisposed()V

    .line 141
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    const/4 v1, 0x3

    :try_start_a
    const-string v2, "TransportConnectionManager"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disposing of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v3, p2, v4}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v1, v2, v3}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transport clients created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current transport clients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportConnection;

    .line 155
    .local v2, "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    iget-object v3, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 156
    .local v3, "caller":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Lcom/android/server/backup/transport/TransportConnection;->getLogBuffer()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_83
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 158
    .local v5, "logEntry":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "        "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .end local v5    # "logEntry":Ljava/lang/String;
    goto :goto_83

    .line 160
    .end local v2    # "transportConnection":Lcom/android/server/backup/transport/TransportConnection;
    .end local v3    # "caller":Ljava/lang/String;
    :cond_a6
    goto :goto_41

    .line 161
    :cond_a7
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_a9
    move-exception v1

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_1b .. :try_end_ab} :catchall_a9

    throw v1
.end method

.method public getTransportClient(Landroid/content/ComponentName;Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .registers 6
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "caller"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mIntentFunction:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 102
    .local v0, "bindIntent":Landroid/content/Intent;
    if-eqz p2, :cond_d

    .line 103
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 105
    :cond_d
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/backup/transport/TransportConnectionManager;->getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v1

    return-object v1
.end method

.method public getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .registers 4
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "caller"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/backup/transport/TransportConnectionManager;->getTransportClient(Landroid/content/ComponentName;Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    move-result-object v0

    return-object v0
.end method
