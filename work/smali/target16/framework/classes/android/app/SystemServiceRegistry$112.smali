.class Landroid/app/SystemServiceRegistry$112;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistry;->registerServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1487
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1491
    const-string/jumbo p1, "wallpaper_effects_generation"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1493
    if-nez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_15

    .line 1494
    :cond_b
    new-instance v0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    .line 1495
    invoke-static {p1}, Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;-><init>(Landroid/app/wallpapereffectsgeneration/IWallpaperEffectsGenerationManager;)V

    move-object p1, v0

    .line 1493
    :goto_15
    return-object p1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1487
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$112;->createService(Landroid/app/ContextImpl;)Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    move-result-object p1

    return-object p1
.end method
