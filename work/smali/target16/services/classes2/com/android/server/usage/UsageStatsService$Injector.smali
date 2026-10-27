.class Lcom/android/server/usage/UsageStatsService$Injector;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppStandbyController(Landroid/content/Context;)Lcom/android/server/usage/AppStandbyInternal;
    .registers 2

    .line 295
    const-class p0, Lcom/android/server/usage/UsageStatsService;

    .line 296
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 295
    invoke-static {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->newAppStandbyController(Ljava/lang/ClassLoader;Landroid/content/Context;)Lcom/android/server/usage/AppStandbyInternal;

    move-result-object p0

    return-object p0
.end method
