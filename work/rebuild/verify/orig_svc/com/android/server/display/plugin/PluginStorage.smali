.class public Lcom/android/server/display/plugin/PluginStorage;
.super Ljava/lang/Object;
.source "PluginStorage.java"


# static fields
.field static final GLOBAL_ID:Ljava/lang/String; = "GLOBAL"


# instance fields
.field public final mEnabledTypes:Ljava/util/Set;

.field public final mListeners:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mPluginEventStorages:Ljava/util/Map;

.field public final mValues:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$4NHpfRXNSqkyR96RLPGoHeG_OGc(Ljava/lang/Object;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .registers 2

    .line 102
    invoke-interface {p1, p0}, Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7xBCmlHDr7uu0vLhFjyfPldxcU4(Ljava/util/Map;Lcom/android/server/display/plugin/PluginType;Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)V
    .registers 4

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p2}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->-$$Nest$fgetmListeners(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$JPyfKrTJKUXeM22epagmQ5vWvYk(Ljava/lang/String;)Lcom/android/server/display/plugin/PluginEventStorage;
    .registers 1

    .line 96
    new-instance p0, Lcom/android/server/display/plugin/PluginEventStorage;

    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginEventStorage;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZNHg48vVXUJO_sfoVRF99TeZVfQ(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;Ljava/util/Set;)V
    .registers 4

    .line 116
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 117
    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-void
.end method

.method public static synthetic $r8$lambda$qNwLvSRZ35HnWhFOq_w2xbndio4(Ljava/util/Map;Ljava/lang/String;Lcom/android/server/display/plugin/PluginEventStorage;)V
    .registers 3

    .line 183
    invoke-virtual {p2}, Lcom/android/server/display/plugin/PluginEventStorage;->getTimeFrames()Ljava/util/List;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic $r8$lambda$yLyukOKWn1ZeoT9KYUV67YzOHvM(Ljava/util/Map;Lcom/android/server/display/plugin/PluginType;Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)V
    .registers 4

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p2}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->-$$Nest$fgetmValues(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mListeners:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mPluginEventStorages:Ljava/util/Map;

    .line 69
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/plugin/PluginStorage;->mEnabledTypes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .registers 6

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->isTypeDisabled(Lcom/android/server/display/plugin/PluginType;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 134
    const-string p0, "PluginStorage"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addListener ignored for disabled type="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_1f
    const-string v0, "GLOBAL"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 138
    const-string p0, "PluginStorage"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addListener ignored for GLOBAL_ID, type="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_40
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_43
    invoke-virtual {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getListenersContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    move-result-object v1

    .line 144
    invoke-static {v1, p2, p3}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->-$$Nest$maddListenerLocked(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getValuesContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    move-result-object p0

    .line 146
    invoke-static {p0, p2}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->-$$Nest$mgetValueLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_59

    :catchall_56
    move-exception p0

    goto :goto_60

    :cond_58
    const/4 p0, 0x0

    .line 148
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_56

    if-eqz p0, :cond_5f

    .line 150
    invoke-interface {p3, p0}, Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;->onChanged(Ljava/lang/Object;)V

    :cond_5f
    return-void

    .line 148
    :goto_60
    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_56

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 180
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 181
    iget-object v3, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 182
    :try_start_12
    iget-object v4, p0, Lcom/android/server/display/plugin/PluginStorage;->mPluginEventStorages:Ljava/util/Map;

    new-instance v5, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 185
    iget-object v4, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    new-instance v5, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 188
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage;->mListeners:Ljava/util/Map;

    new-instance v4, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda5;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 191
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_ae

    .line 192
    const-string p0, "PluginStorage:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "values="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "listeners="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    const-string p0, "PluginEventStorage:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeFrames for displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;

    .line 200
    invoke-virtual {v1, p1}, Lcom/android/server/display/plugin/PluginEventStorage$TimeFrame;->dump(Ljava/io/PrintWriter;)V

    goto :goto_9d

    :cond_ad
    return-void

    :catchall_ae
    move-exception p0

    .line 191
    :try_start_af
    monitor-exit v3
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw p0
.end method

.method public final getListenersContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    if-nez v0, :cond_15

    .line 214
    new-instance v0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;-><init>(Lcom/android/server/display/plugin/PluginStorage-IA;)V

    .line 215
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage;->mListeners:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method public final getListenersForUpdateLocked(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;)Ljava/util/Set;
    .registers 6

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getListenersContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 112
    const-string v2, "GLOBAL"

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getValuesContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    move-result-object p0

    .line 114
    invoke-static {p0}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->-$$Nest$mgetNonGlobalDisplaysLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;)Ljava/util/Set;

    move-result-object p0

    .line 115
    invoke-static {v0}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->-$$Nest$fgetmListeners(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)Ljava/util/Map;

    move-result-object p1

    new-instance p2, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v1}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v1

    .line 121
    :cond_26
    invoke-static {v0}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->-$$Nest$fgetmListeners(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)Ljava/util/Map;

    move-result-object p0

    .line 122
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 121
    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final getValuesContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    if-nez v0, :cond_15

    .line 227
    new-instance v0, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;-><init>(Lcom/android/server/display/plugin/PluginStorage-IA;)V

    .line 228
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method public final isTypeDisabled(Lcom/android/server/display/plugin/PluginType;)Z
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage;->mEnabledTypes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public removeListener(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .registers 5

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->isTypeDisabled(Lcom/android/server/display/plugin/PluginType;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 160
    const-string p0, "PluginStorage"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "removeListener ignored for disabled type="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_20
    const-string v0, "GLOBAL"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 164
    const-string p0, "PluginStorage"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "removeListener ignored for GLOBAL_ID, type="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 167
    :cond_42
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_45
    invoke-virtual {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getListenersContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    move-result-object p0

    .line 169
    invoke-static {p0, p2, p3}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->-$$Nest$mremoveListenerLocked(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    .line 170
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public updateGlobalValue(Lcom/android/server/display/plugin/PluginType;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 63
    const-string v0, "GLOBAL"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/display/plugin/PluginStorage;->updateValue(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateValue(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->isTypeDisabled(Lcom/android/server/display/plugin/PluginType;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 82
    const-string p0, "PluginStorage"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateValue ignored for disabled type="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_20
    const-string v0, "PluginStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateValue, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_4c
    invoke-virtual {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;->getValuesContainerLocked(Lcom/android/server/display/plugin/PluginType;)Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    move-result-object v1

    .line 91
    invoke-static {v1, p2, p3}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->-$$Nest$mupdateValueLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-static {v1, p2}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->-$$Nest$mgetValueLocked(Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 95
    iget-object v1, p0, Lcom/android/server/display/plugin/PluginStorage;->mPluginEventStorages:Ljava/util/Map;

    new-instance v2, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/plugin/PluginEventStorage;

    .line 97
    invoke-virtual {v1, p1}, Lcom/android/server/display/plugin/PluginEventStorage;->onValueUpdated(Lcom/android/server/display/plugin/PluginType;)V

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage;->getListenersForUpdateLocked(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 100
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_4c .. :try_end_6c} :catchall_8c

    .line 101
    const-string p1, "PluginStorage"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateValue, notifying listeners="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance p1, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_8c
    move-exception p0

    .line 100
    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p0
.end method
