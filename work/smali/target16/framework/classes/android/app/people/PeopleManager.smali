.class public final Landroid/app/people/PeopleManager;
.super Ljava/lang/Object;
.source "PeopleManager.java"


# annotations
.annotation runtime Landroid/annotation/RestrictedForEnvironment;
    environments = {
        "SDK Runtime"
    }
    from = 0x22
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/PeopleManager$ConversationListenerProxy;,
        Landroid/app/people/PeopleManager$ConversationListener;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mConversationListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/people/PeopleManager$ConversationListener;",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/people/IConversationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mService:Landroid/app/people/IPeopleManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/people/PeopleManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    const-class v0, Landroid/app/people/PeopleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/people/PeopleManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 75
    const-string/jumbo p1, "people"

    invoke-static {p1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object p1

    iput-object p1, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/people/IPeopleManager;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    .line 84
    iput-object p1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist addOrUpdateStatus(Ljava/lang/String;Landroid/app/people/ConversationStatus;)V
    .registers 6

    .line 131
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 132
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :try_start_6
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    iget-object v1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 134
    invoke-interface {v0, v1, v2, p1, p2}, Landroid/app/people/IPeopleManager;->addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_19

    .line 138
    nop

    .line 139
    return-void

    .line 136
    :catch_19
    move-exception p1

    .line 137
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist clearStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 150
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 151
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 153
    :try_start_6
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    iget-object v1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 153
    invoke-interface {v0, v1, v2, p1, p2}, Landroid/app/people/IPeopleManager;->clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_19

    .line 157
    nop

    .line 158
    return-void

    .line 155
    :catch_19
    move-exception p1

    .line 156
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist clearStatuses(Ljava/lang/String;)V
    .registers 5

    .line 167
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 169
    :try_start_3
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    iget-object v1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 169
    invoke-interface {v0, v1, v2, p1}, Landroid/app/people/IPeopleManager;->clearStatuses(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_16

    .line 173
    nop

    .line 174
    return-void

    .line 171
    :catch_16
    move-exception p1

    .line 172
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getStatuses(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    iget-object v1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 185
    invoke-interface {v0, v1, v2, p1}, Landroid/app/people/IPeopleManager;->getStatuses(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 187
    if-eqz p1, :cond_19

    .line 188
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_20

    return-object p1

    .line 192
    :cond_19
    nop

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 190
    :catch_20
    move-exception p1

    .line 191
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isConversation(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 107
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 109
    :try_start_6
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    iget-object v1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/people/IPeopleManager;->isConversation(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return p1

    .line 110
    :catch_13
    move-exception p1

    .line 111
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/PeopleManager$ConversationListener;Ljava/util/concurrent/Executor;)V
    .registers 9

    .line 230
    const-string v0, "Listener cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    const-string v0, "Package name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    const-string v0, "Shortcut ID cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    monitor-enter v0

    .line 234
    :try_start_12
    new-instance v1, Landroid/app/people/PeopleManager$ConversationListenerProxy;

    invoke-direct {v1, p5, p4}, Landroid/app/people/PeopleManager$ConversationListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/app/people/PeopleManager$ConversationListener;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_2f

    .line 237
    :try_start_17
    iget-object v2, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    invoke-interface {v2, p1, p2, p3, v1}, Landroid/app/people/IPeopleManager;->registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/IConversationListener;)V

    .line 239
    iget-object p1, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_26} :catch_29
    .catchall {:try_start_17 .. :try_end_26} :catchall_2f

    .line 243
    nop

    .line 244
    :try_start_27
    monitor-exit v0

    .line 245
    return-void

    .line 241
    :catch_29
    move-exception p1

    .line 242
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 244
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public blacklist unregisterConversationListener(Landroid/app/people/PeopleManager$ConversationListener;)V
    .registers 4

    .line 255
    const-string v0, "Listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    monitor-enter v0

    .line 258
    :try_start_8
    iget-object v1, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 259
    iget-object v1, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/app/people/IConversationListener;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2a

    .line 261
    :try_start_1c
    iget-object v1, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    invoke-interface {v1, p1}, Landroid/app/people/IPeopleManager;->unregisterConversationListener(Landroid/app/people/IConversationListener;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_2a

    .line 264
    goto :goto_28

    .line 262
    :catch_22
    move-exception p1

    .line 263
    :try_start_23
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 266
    :cond_28
    :goto_28
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2a

    throw p1
.end method
