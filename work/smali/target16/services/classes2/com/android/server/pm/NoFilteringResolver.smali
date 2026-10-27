.class public Lcom/android/server/pm/NoFilteringResolver;
.super Lcom/android/server/pm/CrossProfileResolver;
.source "NoFilteringResolver.java"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 143
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isAppCloningBuildingBlocksEnabled(Landroid/content/Context;Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;)Z
    .registers 5

    .line 152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 154
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x111017d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getEnableAppCloningBuildingBlocks()Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :catchall_19
    move-exception p0

    goto :goto_20

    :cond_1b
    const/4 p0, 0x0

    .line 157
    :goto_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    throw p0
.end method

.method public static isIntentRedirectionAllowed(Landroid/content/Context;Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;ZJ)Z
    .registers 12

    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_19

    const-wide v5, 0x400000000L

    and-long/2addr p3, v5

    cmp-long p3, p3, v2

    if-eqz p3, :cond_17

    goto :goto_19

    :cond_17
    move p3, v4

    goto :goto_1a

    :cond_19
    :goto_19
    move p3, v1

    .line 65
    :goto_1a
    invoke-static {p0, p1}, Lcom/android/server/pm/NoFilteringResolver;->isAppCloningBuildingBlocksEnabled(Landroid/content/Context;Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;)Z

    move-result p1

    if-eqz p1, :cond_2d

    if-nez p2, :cond_2c

    if-eqz p3, :cond_2d

    const-string p1, "android.permission.QUERY_CLONED_APPS"

    .line 68
    invoke-static {p0, p1}, Lcom/android/server/pm/NoFilteringResolver;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    :cond_2c
    return v1

    :cond_2d
    return v4
.end method


# virtual methods
.method public filterResolveInfoWithDomainPreferredActivity(Landroid/content/Intent;Ljava/util/List;JIII)Ljava/util/List;
    .registers 8

    .line 0
    return-object p2
.end method

.method public resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;
    .registers 12

    move p11, p5

    .line 103
    iget-object p5, p0, Lcom/android/server/pm/CrossProfileResolver;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object p8, p3

    move-wide p9, p6

    move-object p6, p1

    move-object p7, p2

    invoke-interface/range {p5 .. p11}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object p1

    .line 105
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2b

    const/4 p3, 0x0

    move p5, p3

    .line 108
    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p6

    if-ge p5, p6, :cond_2b

    .line 109
    new-instance p6, Lcom/android/server/pm/CrossProfileDomainInfo;

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    invoke-direct {p6, p7, p3, p11}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    invoke-interface {p2, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_14

    .line 114
    :cond_2b
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/CrossProfileResolver;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
