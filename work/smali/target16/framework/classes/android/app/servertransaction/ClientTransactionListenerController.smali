.class public Landroid/app/servertransaction/ClientTransactionListenerController;
.super Ljava/lang/Object;
.source "ClientTransactionListenerController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ClientTransactionListenerController"

.field private static blacklist sController:Landroid/app/servertransaction/ClientTransactionListenerController;


# instance fields
.field private final blacklist mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/util/function/BiConsumer<",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mContextToPreChangedConfigMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Context;",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

.field private blacklist mIsClientTransactionExecuting:Z

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal;)V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerGlobal;

    iput-object p1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    .line 94
    return-void
.end method

.method public static blacklist createInstanceForTesting(Landroid/hardware/display/DisplayManagerGlobal;)Landroid/app/servertransaction/ClientTransactionListenerController;
    .registers 2

    .line 89
    new-instance v0, Landroid/app/servertransaction/ClientTransactionListenerController;

    invoke-direct {v0, p0}, Landroid/app/servertransaction/ClientTransactionListenerController;-><init>(Landroid/hardware/display/DisplayManagerGlobal;)V

    return-object v0
.end method

.method public static blacklist getInstance()Landroid/app/servertransaction/ClientTransactionListenerController;
    .registers 3

    .line 75
    const-class v0, Landroid/app/servertransaction/ClientTransactionListenerController;

    monitor-enter v0

    .line 76
    :try_start_3
    sget-object v1, Landroid/app/servertransaction/ClientTransactionListenerController;->sController:Landroid/app/servertransaction/ClientTransactionListenerController;

    if-nez v1, :cond_12

    .line 77
    new-instance v1, Landroid/app/servertransaction/ClientTransactionListenerController;

    .line 78
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/servertransaction/ClientTransactionListenerController;-><init>(Landroid/hardware/display/DisplayManagerGlobal;)V

    sput-object v1, Landroid/app/servertransaction/ClientTransactionListenerController;->sController:Landroid/app/servertransaction/ClientTransactionListenerController;

    .line 80
    :cond_12
    sget-object v1, Landroid/app/servertransaction/ClientTransactionListenerController;->sController:Landroid/app/servertransaction/ClientTransactionListenerController;

    monitor-exit v0

    return-object v1

    .line 81
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private blacklist shouldReportDisplayChange(Landroid/content/Context;Landroid/content/res/Configuration;)Z
    .registers 3

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 232
    invoke-static {p1, p2}, Landroid/app/WindowConfiguration;->areConfigurationsEqualForDisplay(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public blacklist onActivityWindowInfoChanged(Landroid/os/IBinder;Landroid/window/ActivityWindowInfo;)V
    .registers 8

    .line 126
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_d
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 131
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_28

    .line 132
    array-length v0, v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_27

    aget-object v3, v1, v2

    .line 133
    check-cast v3, Ljava/util/function/BiConsumer;

    new-instance v4, Landroid/window/ActivityWindowInfo;

    invoke-direct {v4, p2}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    .line 134
    invoke-interface {v3, p1, v4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 136
    :cond_27
    return-void

    .line 131
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public blacklist onClientTransactionFinished()V
    .registers 8

    .line 148
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mIsClientTransactionExecuting:Z

    .line 153
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 154
    monitor-exit v0

    return-void

    .line 158
    :cond_10
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 159
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_71

    .line 161
    move v4, v1

    :goto_1c
    if-ge v4, v3, :cond_49

    .line 162
    :try_start_1e
    iget-object v5, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 163
    iget-object v6, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Configuration;

    .line 164
    invoke-direct {p0, v5, v6}, Landroid/app/servertransaction/ClientTransactionListenerController;->shouldReportDisplayChange(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 165
    invoke-virtual {v5}, Landroid/content/Context;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_1e .. :try_end_3f} :catchall_42

    .line 161
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 169
    :catchall_42
    move-exception v1

    :try_start_43
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 170
    throw v1

    .line 169
    :cond_49
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 170
    nop

    .line 171
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_71

    .line 175
    :try_start_50
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 176
    nop

    :goto_55
    if-ge v1, v0, :cond_67

    .line 177
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 178
    invoke-virtual {p0, v3}, Landroid/app/servertransaction/ClientTransactionListenerController;->onDisplayChanged(I)V
    :try_end_64
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_50 .. :try_end_64} :catch_68

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 182
    :cond_67
    goto :goto_70

    .line 180
    :catch_68
    move-exception v0

    .line 181
    const-string v0, "ClientTransactionListenerController"

    const-string v1, "Failed to notify DisplayListener because the Handler is shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_70
    return-void

    .line 171
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1
.end method

.method public blacklist onClientTransactionStarted()V
    .registers 3

    .line 140
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mIsClientTransactionExecuting:Z

    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public blacklist onContextConfigurationPostChanged(Landroid/content/Context;)V
    .registers 5

    .line 203
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    return-void

    .line 207
    :cond_7
    nop

    .line 208
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_b
    iget-boolean v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mIsClientTransactionExecuting:Z

    if-eqz v1, :cond_11

    .line 212
    monitor-exit v0

    return-void

    .line 214
    :cond_11
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 215
    const/4 v2, -0x1

    if-eqz v1, :cond_27

    invoke-direct {p0, p1, v1}, Landroid/app/servertransaction/ClientTransactionListenerController;->shouldReportDisplayChange(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    goto :goto_28

    .line 218
    :cond_27
    move p1, v2

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_38

    .line 220
    if-eq p1, v2, :cond_37

    .line 222
    :try_start_2b
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/ClientTransactionListenerController;->onDisplayChanged(I)V
    :try_end_2e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 225
    goto :goto_37

    .line 223
    :catch_2f
    move-exception p1

    .line 224
    const-string p1, "ClientTransactionListenerController"

    const-string v0, "Failed to notify DisplayListener because the Handler is shutting down"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_37
    :goto_37
    return-void

    .line 218
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public blacklist onContextConfigurationPreChanged(Landroid/content/Context;)V
    .registers 6

    .line 187
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    return-void

    .line 191
    :cond_7
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_a
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 194
    monitor-exit v0

    return-void

    .line 196
    :cond_14
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mContextToPreChangedConfigMap:Landroid/util/ArrayMap;

    new-instance v2, Landroid/content/res/Configuration;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 196
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public blacklist onDisplayChanged(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayChangeFromWindowManager(I)V

    .line 244
    return-void
.end method

.method public blacklist registerActivityWindowInfoChangedListener(Ljava/util/function/BiConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist unregisterActivityWindowInfoChangedListener(Ljava/util/function/BiConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/os/IBinder;",
            "Landroid/window/ActivityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransactionListenerController;->mActivityWindowInfoChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
