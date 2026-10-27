.class public Landroid/content/res/IMiuiResourceImpl;
.super Ljava/lang/Object;
.source "IMiuiResourceImpl.java"

# interfaces
.implements Landroid/content/res/IMiuiResource;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createResources()Landroid/content/res/Resources;
    .registers 2

    .line 13
    new-instance v0, Landroid/content/res/MiuiResources;

    invoke-direct {v0}, Landroid/content/res/MiuiResources;-><init>()V

    return-object v0
.end method

.method public blacklist createResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 5
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .line 23
    new-instance v0, Landroid/content/res/MiuiResources;

    invoke-direct {v0, p1, p2, p3}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public blacklist createResources(Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .registers 3
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 18
    new-instance v0, Landroid/content/res/MiuiResources;

    invoke-direct {v0, p1}, Landroid/content/res/MiuiResources;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public blacklist createResourcesImpl(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)Landroid/content/res/ResourcesImpl;
    .registers 6
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "daj"    # Landroid/view/DisplayAdjustments;

    .line 28
    new-instance v0, Landroid/content/res/MiuiResourcesImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/content/res/MiuiResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    return-object v0
.end method

.method public blacklist createTypedArray(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 33
    new-instance v0, Landroid/content/res/MiuiTypedArray;

    invoke-direct {v0, p1}, Landroid/content/res/MiuiTypedArray;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public blacklist initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 39
    instance-of v0, p1, Landroid/content/res/MiuiResources;

    if-eqz v0, :cond_a

    .line 40
    move-object v0, p1

    check-cast v0, Landroid/content/res/MiuiResources;

    invoke-virtual {v0, p2}, Landroid/content/res/MiuiResources;->init(Ljava/lang/String;)V

    .line 42
    :cond_a
    return-void
.end method
