.class Landroid/app/ResourcesManager$UpdateHandler;
.super Ljava/lang/Object;
.source "ResourcesManager.java"

# interfaces
.implements Landroid/content/res/Resources$UpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ResourcesManager;


# direct methods
.method private constructor blacklist <init>(Landroid/app/ResourcesManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1980
    iput-object p1, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager$UpdateHandler;-><init>(Landroid/app/ResourcesManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onLoaderUpdated(Landroid/content/res/loader/ResourcesLoader;)V
    .registers 8

    .line 2020
    iget-object v0, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v0}, Landroid/app/ResourcesManager;->-$$Nest$fgetmLock(Landroid/app/ResourcesManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2021
    :try_start_7
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 2024
    iget-object v2, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v2}, Landroid/app/ResourcesManager;->-$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_59

    .line 2025
    iget-object v3, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v3}, Landroid/app/ResourcesManager;->-$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ResourcesKey;

    .line 2026
    iget-object v4, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v4}, Landroid/app/ResourcesManager;->-$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 2027
    if-eqz v4, :cond_56

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    iget-object v5, v3, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    .line 2028
    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 2029
    goto :goto_56

    .line 2032
    :cond_44
    iget-object v5, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v5}, Landroid/app/ResourcesManager;->-$$Nest$fgetmResourceImpls(Landroid/app/ResourcesManager;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesImpl;

    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    :cond_56
    :goto_56
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2036
    :cond_59
    iget-object p1, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {p1, v1}, Landroid/app/ResourcesManager;->-$$Nest$mredirectResourcesToNewImplLocked(Landroid/app/ResourcesManager;Landroid/util/ArrayMap;)V

    .line 2037
    monitor-exit v0

    .line 2038
    return-void

    .line 2037
    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public blacklist onLoadersChanged(Landroid/content/res/Resources;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)V"
        }
    .end annotation

    .line 1990
    iget-object v0, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v0}, Landroid/app/ResourcesManager;->-$$Nest$fgetmLock(Landroid/app/ResourcesManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1991
    :try_start_7
    iget-object v0, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/app/ResourcesManager;->-$$Nest$mfindKeyForResourceImplLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v0

    .line 1992
    if-eqz v0, :cond_3d

    .line 1997
    new-instance v2, Landroid/content/res/ResourcesKey;

    iget v3, v0, Landroid/content/res/ResourcesKey;->mTokenIdentity:I

    iget-object v4, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v6, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v7, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v8, v0, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v9, v0, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v10, v0, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/res/loader/ResourcesLoader;

    .line 2006
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v11, p2

    check-cast v11, [Landroid/content/res/loader/ResourcesLoader;

    invoke-direct/range {v2 .. v11}, Landroid/content/res/ResourcesKey;-><init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 2008
    iget-object p2, p0, Landroid/app/ResourcesManager$UpdateHandler;->this$0:Landroid/app/ResourcesManager;

    invoke-static {p2, v2}, Landroid/app/ResourcesManager;->-$$Nest$mfindOrCreateResourcesImplForKeyLocked(Landroid/app/ResourcesManager;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object p2

    .line 2009
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    .line 2010
    monitor-exit v1

    .line 2011
    return-void

    .line 1993
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot modify resource loaders of ResourcesImpl not registered with ResourcesManager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2010
    :catchall_45
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_45

    throw p1
.end method
