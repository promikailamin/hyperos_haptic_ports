.class final Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
.super Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;
.source "LoudnessCodecDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/LoudnessCodecDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoudnessCodecUpdatesDispatcherStub"
.end annotation


# static fields
.field private static blacklist sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;


# instance fields
.field private final blacklist mConfiguratorListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;",
            "Landroid/media/LoudnessCodecController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$OTkOqPriJqnS11TvsEiiJrHQCyM(Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->lambda$dispatchLoudnessCodecParameterChange$2(ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;-><init>()V

    .line 57
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method private static blacklist filterLoudnessParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    const-string v1, "aac-target-ref-level"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 137
    nop

    .line 138
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    :cond_15
    const-string v1, "aac-drc-heavy-compression"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 141
    nop

    .line 142
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    :cond_25
    const-string v1, "aac-drc-effect-type"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 145
    nop

    .line 146
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    :cond_35
    const-string v1, "aac-drc-boost-level"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 149
    nop

    .line 150
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    :cond_45
    const-string v1, "aac-drc-cut-level"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 153
    nop

    .line 154
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    :cond_55
    const-string v1, "aac-drc-album-mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 157
    nop

    .line 158
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 157
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    :cond_65
    return-object v0
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
    .registers 2

    const-class v0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    monitor-enter v0

    .line 67
    :try_start_3
    sget-object v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    if-nez v1, :cond_e

    .line 68
    new-instance v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    invoke-direct {v1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;-><init>()V

    sput-object v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;

    .line 70
    :cond_e
    sget-object v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->sLoudnessCodecStub:Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method static synthetic blacklist lambda$addLoudnessCodecListener$3(Landroid/media/CallbackUtil$DispatcherStub;)Landroid/media/CallbackUtil$DispatcherStub;
    .registers 1

    .line 174
    return-object p0
.end method

.method static synthetic blacklist lambda$dispatchLoudnessCodecParameterChange$0(Landroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Ljava/util/Map$Entry;)V
    .registers 8

    .line 87
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/LoudnessCodecInfo;

    .line 88
    invoke-virtual {v0}, Landroid/media/LoudnessCodecInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    nop

    .line 90
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    goto :goto_20

    .line 90
    :cond_1f
    const/4 v1, 0x0

    .line 94
    :goto_20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 95
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    .line 96
    nop

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    if-nez v1, :cond_48

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 99
    goto :goto_2a

    .line 101
    :cond_48
    nop

    .line 102
    if-nez v1, :cond_56

    .line 104
    new-instance v1, Landroid/os/Bundle;

    .line 105
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    .line 106
    const/4 v2, 0x1

    goto :goto_57

    .line 102
    :cond_56
    const/4 v2, 0x0

    .line 108
    :goto_57
    nop

    .line 110
    invoke-interface {p1, v0, v1}, Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;->onLoudnessCodecUpdate(Landroid/media/MediaCodec;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 109
    invoke-static {v1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->filterLoudnessParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v3

    if-nez v3, :cond_83

    .line 115
    :try_start_66
    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_69
    .catch Ljava/lang/IllegalStateException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 119
    goto :goto_83

    .line 116
    :catch_6a
    move-exception v3

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set loudness bundle on media codec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LoudnessCodecDispatcher"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_83
    :goto_83
    if-eqz v2, :cond_86

    .line 122
    goto :goto_87

    .line 124
    :cond_86
    goto :goto_2a

    .line 125
    :cond_87
    :goto_87
    return-void
.end method

.method static synthetic blacklist lambda$dispatchLoudnessCodecParameterChange$1(ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;Landroid/media/LoudnessCodecController;)Landroid/media/LoudnessCodecController;
    .registers 5

    .line 85
    invoke-virtual {p3}, Landroid/media/LoudnessCodecController;->getSessionId()I

    move-result v0

    if-ne v0, p0, :cond_e

    .line 86
    new-instance p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1, p2}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda2;-><init>(Landroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V

    invoke-virtual {p3, p0}, Landroid/media/LoudnessCodecController;->mediaCodecsConsume(Ljava/util/function/Consumer;)V

    .line 127
    :cond_e
    return-object p3
.end method

.method private synthetic blacklist lambda$dispatchLoudnessCodecParameterChange$2(ILandroid/os/PersistableBundle;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .registers 7

    .line 82
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    new-instance v2, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda3;-><init>(ILandroid/os/PersistableBundle;)V

    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 129
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method


# virtual methods
.method blacklist addLoudnessCodecListener(Landroid/media/CallbackUtil$DispatcherStub;Landroid/media/LoudnessCodecController;Ljava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)V
    .registers 8

    .line 168
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "addLoudnessCodecListener"

    new-instance v2, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/CallbackUtil$DispatcherStub;)V

    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 175
    iget-object p1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 176
    :try_start_18
    iget-object p3, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit p1

    .line 178
    return-void

    .line 177
    :catchall_1f
    move-exception p2

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p2
.end method

.method public blacklist dispatchLoudnessCodecParameterChange(ILandroid/os/PersistableBundle;)V
    .registers 5

    .line 81
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;ILandroid/os/PersistableBundle;)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 131
    return-void
.end method

.method blacklist removeLoudnessCodecListener(Landroid/media/LoudnessCodecController;)V
    .registers 6

    .line 181
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    nop

    .line 184
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_7
    iget-object v1, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mConfiguratorListener:Ljava/util/HashMap;

    .line 186
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 187
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 188
    nop

    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2f

    .line 191
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;

    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 193
    nop

    .line 194
    goto :goto_31

    .line 196
    :cond_2f
    goto :goto_11

    .line 187
    :cond_30
    const/4 p1, 0x0

    .line 197
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_3c

    .line 198
    if-eqz p1, :cond_3b

    .line 199
    iget-object v0, p0, Landroid/media/LoudnessCodecDispatcher$LoudnessCodecUpdatesDispatcherStub;->mLoudnessListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeLoudnessCodecListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :cond_3b
    return-void

    .line 197
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method
