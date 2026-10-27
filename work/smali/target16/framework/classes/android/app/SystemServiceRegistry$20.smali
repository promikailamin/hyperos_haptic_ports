.class Landroid/app/SystemServiceRegistry$20;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/location/CountryDetector;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 541
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Landroid/location/CountryDetector;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 544
    const-string v0, "country_detector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 545
    new-instance v1, Landroid/location/CountryDetector;

    invoke-static {v0}, Landroid/location/ICountryDetector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ICountryDetector;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/location/CountryDetector;-><init>(Landroid/location/ICountryDetector;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$20;->createService()Landroid/location/CountryDetector;

    move-result-object v0

    return-object v0
.end method
