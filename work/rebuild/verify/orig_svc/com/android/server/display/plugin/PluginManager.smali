.class public Lcom/android/server/display/plugin/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# instance fields
.field public final mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

.field public final mPlugins:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .registers 4

    .line 52
    new-instance v0, Lcom/android/server/display/plugin/PluginManager$Injector;

    invoke-direct {v0}, Lcom/android/server/display/plugin/PluginManager$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/plugin/PluginManager;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager$Injector;)V
    .registers 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p3, p2}, Lcom/android/server/display/plugin/PluginManager$Injector;->getEnabledPluginTypes(Lcom/android/server/display/feature/DisplayManagerFlags;)Ljava/util/Set;

    move-result-object p2

    .line 58
    invoke-virtual {p3, p2}, Lcom/android/server/display/plugin/PluginManager$Injector;->getPluginStorage(Ljava/util/Set;)Lcom/android/server/display/plugin/PluginStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginManager;->mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

    .line 59
    invoke-virtual {p3, p1, v0, p2}, Lcom/android/server/display/plugin/PluginManager$Injector;->loadPlugins(Landroid/content/Context;Lcom/android/server/display/plugin/PluginStorage;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "loaded Plugins:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    .line 91
    const-string v0, "PluginManager:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/display/plugin/PluginManager;->mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/display/plugin/PluginStorage;->dump(Ljava/io/PrintWriter;)V

    .line 93
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/plugin/Plugin;

    .line 94
    invoke-interface {v0, p1}, Lcom/android/server/display/plugin/Plugin;->dump(Ljava/io/PrintWriter;)V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public onBootCompleted()V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    new-instance v0, Lcom/android/server/display/plugin/PluginManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/plugin/PluginManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public subscribe(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .registers 4

    .line 76
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginManager;->mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/plugin/PluginStorage;->addListener(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    return-void
.end method

.method public unsubscribe(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V
    .registers 4

    .line 84
    iget-object p0, p0, Lcom/android/server/display/plugin/PluginManager;->mPluginStorage:Lcom/android/server/display/plugin/PluginStorage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/plugin/PluginStorage;->removeListener(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Lcom/android/server/display/plugin/PluginManager$PluginChangeListener;)V

    return-void
.end method
