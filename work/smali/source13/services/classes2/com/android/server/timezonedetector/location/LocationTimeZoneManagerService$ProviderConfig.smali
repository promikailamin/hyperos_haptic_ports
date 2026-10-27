.class final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;
.super Ljava/lang/Object;
.source "LocationTimeZoneManagerService.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderConfig"
.end annotation


# instance fields
.field private final mIndex:I

.field private final mName:Ljava/lang/String;

.field private final mServiceAction:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "index"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "serviceAction"    # Ljava/lang/String;

    .line 441
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 p1, 0x1

    if-ltz p2, :cond_b

    if-gt p2, p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 443
    iput p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    .line 444
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mName:Ljava/lang/String;

    .line 445
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mServiceAction:Ljava/lang/String;

    .line 446
    return-void
.end method

.method private createProxy()Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
    .registers 5

    .line 465
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->getMode()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "mode":Ljava/lang/String;
    const-string v1, "disabled"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 467
    new-instance v1, Lcom/android/server/timezonedetector/location/NullLocationTimeZoneProviderProxy;

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmContext(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmThreadingDomain(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/location/ThreadingDomain;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/timezonedetector/location/NullLocationTimeZoneProviderProxy;-><init>(Landroid/content/Context;Lcom/android/server/timezonedetector/location/ThreadingDomain;)V

    return-object v1

    .line 470
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->createRealProxy()Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    move-result-object v1

    return-object v1
.end method

.method private createRealProxy()Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;
    .registers 12

    .line 486
    iget-object v7, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mServiceAction:Ljava/lang/String;

    .line 487
    .local v7, "providerServiceAction":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->isTestProvider()Z

    move-result v8

    .line 488
    .local v8, "isTestProvider":Z
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, "providerPackageName":Ljava/lang/String;
    new-instance v10, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmContext(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmThreadingDomain(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/location/ThreadingDomain;

    move-result-object v3

    move-object v0, v10

    move-object v4, v7

    move-object v5, v9

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/location/ThreadingDomain;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v10
.end method

.method private getMode()Ljava/lang/String;
    .registers 2

    .line 477
    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    if-nez v0, :cond_f

    .line 478
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmServiceConfigAccessor(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 480
    :cond_f
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmServiceConfigAccessor(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .registers 2

    .line 504
    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    if-nez v0, :cond_f

    .line 505
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmServiceConfigAccessor(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getPrimaryLocationTimeZoneProviderPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 507
    :cond_f
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmServiceConfigAccessor(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getSecondaryLocationTimeZoneProviderPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isTestProvider()Z
    .registers 2

    .line 495
    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    if-nez v0, :cond_f

    .line 496
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmServiceConfigAccessor(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isTestPrimaryLocationTimeZoneProvider()Z

    move-result v0

    return v0

    .line 498
    :cond_f
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmServiceConfigAccessor(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->isTestSecondaryLocationTimeZoneProvider()Z

    move-result v0

    return v0
.end method


# virtual methods
.method createProvider()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .registers 9

    .line 450
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->createProxy()Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;

    move-result-object v6

    .line 451
    .local v6, "proxy":Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;
    new-instance v1, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;

    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mIndex:I

    invoke-direct {v1, v0}, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;-><init>(I)V

    .line 452
    .local v1, "providerMetricsLogger":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;
    new-instance v7, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmThreadingDomain(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/location/ThreadingDomain;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->this$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->-$$Nest$fgetmServiceConfigAccessor(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    move-result-object v0

    .line 454
    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getRecordStateChangesForTests()Z

    move-result v5

    move-object v0, v7

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderMetricsLogger;Lcom/android/server/timezonedetector/location/ThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy;Z)V

    .line 452
    return-object v7
.end method

.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 459
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->getMode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "getMode()=%s\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 460
    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$ProviderConfig;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "getPackageName()=%s\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 461
    return-void
.end method
