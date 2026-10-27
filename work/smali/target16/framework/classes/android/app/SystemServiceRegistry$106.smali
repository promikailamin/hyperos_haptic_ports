.class Landroid/app/SystemServiceRegistry$106;
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
        "Landroid/view/translation/UiTranslationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1419
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/view/translation/UiTranslationManager;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1423
    const-string/jumbo v0, "translation"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1424
    invoke-static {v0}, Landroid/view/translation/ITranslationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/translation/ITranslationManager;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_17

    .line 1426
    new-instance v1, Landroid/view/translation/UiTranslationManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/view/translation/UiTranslationManager;-><init>(Landroid/content/Context;Landroid/view/translation/ITranslationManager;)V

    return-object v1

    .line 1428
    :cond_17
    const/4 p1, 0x0

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

    .line 1419
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$106;->createService(Landroid/app/ContextImpl;)Landroid/view/translation/UiTranslationManager;

    move-result-object p1

    return-object p1
.end method
