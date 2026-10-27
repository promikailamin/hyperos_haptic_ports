.class public Landroid/content/res/Resources$AssetManagerUpdateHandler;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Landroid/content/res/Resources$UpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssetManagerUpdateHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 290
    iput-object p1, p0, Landroid/content/res/Resources$AssetManagerUpdateHandler;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onLoaderUpdated(Landroid/content/res/loader/ResourcesLoader;)V
    .registers 5

    .line 303
    iget-object v0, p0, Landroid/content/res/Resources$AssetManagerUpdateHandler;->this$0:Landroid/content/res/Resources;

    invoke-static {v0}, Landroid/content/res/Resources;->-$$Nest$fgetmResourcesImpl(Landroid/content/res/Resources;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLoaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 306
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->clearAllCaches()V

    .line 307
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLoaders()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->setLoaders(Ljava/util/List;)V

    .line 309
    :cond_1e
    return-void
.end method

.method public blacklist onLoadersChanged(Landroid/content/res/Resources;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Landroid/content/res/Resources$AssetManagerUpdateHandler;->this$0:Landroid/content/res/Resources;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 296
    iget-object p1, p0, Landroid/content/res/Resources$AssetManagerUpdateHandler;->this$0:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/content/res/Resources;->-$$Nest$fgetmResourcesImpl(Landroid/content/res/Resources;)Landroid/content/res/ResourcesImpl;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->clearAllCaches()V

    .line 298
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->setLoaders(Ljava/util/List;)V

    .line 299
    return-void
.end method
