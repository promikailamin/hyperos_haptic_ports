.class Landroid/app/SystemServiceRegistry$35;
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
        "Landroid/app/NotificationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 672
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/NotificationManager;
    .registers 11

    .line 675
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    .line 676
    new-instance v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 679
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 678
    const/4 v3, 0x0

    const v5, 0x103000b

    const v6, 0x103006f

    const v7, 0x103012e

    const v8, 0x1030132

    invoke-static/range {v3 .. v8}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/NotificationManager;-><init>(Landroid/content/Context;)V

    .line 676
    return-object v0
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

    .line 672
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$35;->createService(Landroid/app/ContextImpl;)Landroid/app/NotificationManager;

    move-result-object p1

    return-object p1
.end method
