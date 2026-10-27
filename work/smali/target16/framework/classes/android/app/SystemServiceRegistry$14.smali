.class Landroid/app/SystemServiceRegistry$14;
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
        "Landroid/graphics/fonts/FontManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 482
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/graphics/fonts/FontManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 485
    const-string p1, "font"

    invoke-static {p1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 486
    invoke-static {p1}, Lcom/android/internal/graphics/fonts/IFontManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/graphics/fonts/IFontManager;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/fonts/FontManager;->create(Lcom/android/internal/graphics/fonts/IFontManager;)Landroid/graphics/fonts/FontManager;

    move-result-object p1

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

    .line 482
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$14;->createService(Landroid/app/ContextImpl;)Landroid/graphics/fonts/FontManager;

    move-result-object p1

    return-object p1
.end method
