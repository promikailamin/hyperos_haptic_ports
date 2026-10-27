.class public final Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;
.super Ljava/lang/Object;
.source "PluginStorage.java"


# instance fields
.field public final mListeners:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$8J1D9eKOUj6h71CCHekepdYyQMU(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    .line 242
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddListenerLocked(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->addListenerLocked(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveListenerLocked(Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->removeListenerLocked(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/plugin/PluginStorage-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListenerLocked(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)Z
    .registers 4

    .line 241
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    new-instance v0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer$$ExternalSyntheticLambda0;-><init>()V

    .line 242
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 243
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final removeListenerLocked(Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_b

    goto :goto_19

    .line 254
    :cond_b
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 256
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 257
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    :goto_19
    return-void
.end method
