.class public final Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/resolution/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<",
        "Landroid/util/Pair<",
        "Lcom/android/server/pm/pkg/component/ParsedProvider;",
        "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
        ">;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 3
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;

    .line 1284
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1527
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    .line 1285
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;Lcom/android/server/pm/UserManagerService;)V
    .registers 5
    .param p1, "orig"    # Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;
    .param p2, "userManager"    # Lcom/android/server/pm/UserManagerService;

    .line 1290
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    .line 1527
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    .line 1291
    iget-object v1, p1, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1292
    return-void
.end method


# virtual methods
.method public bridge synthetic addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V
    .registers 3

    .line 1280
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    return-void
.end method

.method addProvider(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedProvider;)V
    .registers 10
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "p"    # Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1346
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PackageManager"

    if-eqz v0, :cond_2f

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already defined; ignoring"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    return-void

    .line 1351
    :cond_2f
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1358
    .local v0, "intentsSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_41
    if-ge v2, v0, :cond_7b

    .line 1359
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1360
    .local v3, "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 1365
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v4}, Landroid/content/IntentFilter;->debugCheck()Z

    move-result v5

    if-nez v5, :cond_71

    .line 1366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> For Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_71
    invoke-static {p2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    .line 1358
    .end local v3    # "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 1370
    :cond_7b
    return-void
.end method

.method protected allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1394
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedProvider;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_35

    .line 1395
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 1396
    .local v2, "destPi":Landroid/content/pm/ProviderInfo;
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedProvider;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1397
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1398
    const/4 v1, 0x0

    return v1

    .line 1394
    .end local v2    # "destPi":Landroid/content/pm/ProviderInfo;
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1401
    .end local v0    # "i":I
    :cond_35
    return v1
.end method

.method protected bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3

    .line 1280
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V
    .registers 8
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1489
    .local p3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedProvider;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1490
    .local v0, "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    iget-object v1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1492
    .local v1, "filter":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1493
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1494
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1495
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v2, " filter "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1497
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    return-void
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1280
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 8
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 1506
    move-object v0, p3

    check-cast v0, Landroid/util/Pair;

    .line 1508
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedProvider;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1509
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1510
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1511
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedProvider;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1512
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1511
    invoke-static {p1, v1, v2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const/4 v1, 0x1

    if-le p4, v1, :cond_3b

    .line 1514
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1516
    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1518
    :cond_3b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1519
    return-void
.end method

.method protected filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1502
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedProvider;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    return-object p1
.end method

.method protected bridge synthetic filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1280
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation

    .line 1524
    .local p1, "input":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedProvider;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 1280
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1413
    .local p2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedProvider;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedProvider;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 1280
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Landroid/util/Pair;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 1407
    new-array v0, p1, [Landroid/util/Pair;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1280
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;
    .registers 31
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p3, "match"    # I
    .param p4, "userId"    # I
    .param p5, "customFlags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;IIJ)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 1420
    .local p2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedProvider;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    move-object/from16 v0, p2

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v13, 0x0

    if-nez v1, :cond_12

    .line 1421
    return-object v13

    .line 1424
    :cond_12
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1425
    .local v14, "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1426
    .local v15, "intentInfo":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v15}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v8

    .line 1428
    .local v8, "filter":Landroid/content/IntentFilter;
    nop

    .line 1429
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, p1

    invoke-interface {v7, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 1430
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v6, :cond_f4

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_f4

    .line 1431
    invoke-static {v6, v14, v10, v11, v9}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    if-nez v1, :cond_40

    move/from16 v4, p3

    move-object/from16 v21, v6

    move-object v3, v8

    goto/16 :goto_f9

    .line 1436
    :cond_40
    invoke-interface {v6, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    .line 1437
    .local v16, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    const-wide/32 v1, 0x1000000

    and-long/2addr v1, v10

    const-wide/16 v17, 0x0

    cmp-long v1, v1, v17

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_52

    move v1, v2

    goto :goto_53

    :cond_52
    move v1, v3

    :goto_53
    move/from16 v19, v1

    .line 1439
    .local v19, "matchVisibleToInstantApp":Z
    const-wide/32 v4, 0x800000

    and-long/2addr v4, v10

    cmp-long v1, v4, v17

    if-eqz v1, :cond_5e

    goto :goto_5f

    :cond_5e
    move v2, v3

    :goto_5f
    move/from16 v20, v2

    .line 1441
    .local v20, "isInstantApp":Z
    if-eqz v19, :cond_70

    .line 1442
    invoke-virtual {v8}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v1

    if-nez v1, :cond_70

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v1

    if-nez v1, :cond_70

    .line 1443
    return-object v13

    .line 1446
    :cond_70
    if-nez v20, :cond_79

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 1447
    return-object v13

    .line 1451
    :cond_79
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->isUpdateAvailable()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1452
    return-object v13

    .line 1454
    :cond_86
    nop

    .line 1455
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    .line 1454
    move-wide/from16 v2, p5

    move-object/from16 v4, v16

    move/from16 v5, p4

    move-object/from16 v21, v6

    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v21, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    .line 1456
    .local v22, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v22, :cond_9a

    .line 1457
    return-object v13

    .line 1459
    :cond_9a
    invoke-interface/range {v21 .. v21}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    move-object v2, v14

    move-wide/from16 v3, p5

    move-object/from16 v5, v16

    move-object/from16 v6, v22

    move/from16 v7, p4

    move-object/from16 v23, v8

    .end local v8    # "filter":Landroid/content/IntentFilter;
    .local v23, "filter":Landroid/content/IntentFilter;
    move-object/from16 v8, v21

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 1461
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_b2

    .line 1462
    return-object v13

    .line 1464
    :cond_b2
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1465
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 1466
    const-wide/16 v3, 0x40

    and-long/2addr v3, v10

    cmp-long v3, v3, v17

    if-eqz v3, :cond_c5

    .line 1467
    move-object/from16 v3, v23

    .end local v23    # "filter":Landroid/content/IntentFilter;
    .local v3, "filter":Landroid/content/IntentFilter;
    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    goto :goto_c7

    .line 1466
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v23    # "filter":Landroid/content/IntentFilter;
    :cond_c5
    move-object/from16 v3, v23

    .line 1469
    .end local v23    # "filter":Landroid/content/IntentFilter;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    :goto_c7
    invoke-virtual {v3}, Landroid/content/IntentFilter;->getPriority()I

    move-result v4

    iput v4, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1472
    move/from16 v4, p3

    iput v4, v2, Landroid/content/pm/ResolveInfo;->match:I

    .line 1473
    invoke-interface {v15}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    move-result v5

    iput-boolean v5, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1474
    invoke-interface {v15}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    move-result v5

    iput v5, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1475
    invoke-interface {v15}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1476
    invoke-interface {v15}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result v5

    iput v5, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1477
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    iput-boolean v5, v2, Landroid/content/pm/ResolveInfo;->system:Z

    .line 1478
    return-object v2

    .line 1430
    .end local v1    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v2    # "res":Landroid/content/pm/ResolveInfo;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v16    # "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v19    # "matchVisibleToInstantApp":Z
    .end local v20    # "isInstantApp":Z
    .end local v21    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v22    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    :cond_f4
    move/from16 v4, p3

    move-object/from16 v21, v6

    move-object v3, v8

    .line 1433
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "filter":Landroid/content/IntentFilter;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v21    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_f9
    return-object v13
.end method

.method protected bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 14

    .line 1280
    move-object v2, p2

    check-cast v2, Landroid/util/Pair;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method queryIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 16
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1307
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1308
    const/4 v0, 0x0

    return-object v0

    .line 1310
    :cond_a
    const-wide/32 v0, 0x10000

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p6

    move-wide v7, p4

    invoke-super/range {v1 .. v8}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 16
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "defaultOnly"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1298
    const/4 v0, 0x0

    return-object v0

    .line 1300
    :cond_a
    if-eqz p4, :cond_10

    const-wide/32 v0, 0x10000

    goto :goto_12

    :cond_10
    const-wide/16 v0, 0x0

    :goto_12
    move-wide v8, v0

    .line 1301
    .local v8, "flags":J
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-super/range {v2 .. v9}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZIJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryIntentForPackage(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;
    .registers 22
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedProvider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1318
    .local p6, "packageProviders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedProvider;>;"
    move-object v9, p0

    move-object/from16 v10, p6

    iget-object v0, v9, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v11, p7

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1319
    const/4 v0, 0x0

    return-object v0

    .line 1321
    :cond_f
    if-nez v10, :cond_16

    .line 1322
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1324
    :cond_16
    const-wide/32 v0, 0x10000

    and-long v0, p4, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    move v4, v0

    .line 1325
    .local v4, "defaultOnly":Z
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v12

    .line 1326
    .local v12, "providersSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v0

    .line 1330
    .local v13, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedProvider;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, v12, :cond_66

    .line 1331
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1332
    .local v1, "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v2

    .line 1333
    .local v2, "intentFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    .line 1334
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object v3

    .line 1335
    .local v3, "array":[Landroid/util/Pair;, "[Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedProvider;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    const/4 v5, 0x0

    .local v5, "arrayIndex":I
    :goto_4b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_60

    .line 1336
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1335
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 1338
    .end local v5    # "arrayIndex":I
    :cond_60
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    .end local v1    # "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .end local v3    # "array":[Landroid/util/Pair;, "[Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedProvider;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 1341
    .end local v0    # "i":I
    .end local v2    # "intentFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    :cond_66
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v13

    move/from16 v6, p7

    move-wide/from16 v7, p4

    invoke-super/range {v0 .. v8}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntentFromList(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;IJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method removeProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)V
    .registers 7
    .param p1, "p"    # Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 1373
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1380
    .local v0, "intentsSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_12
    if-ge v1, v0, :cond_2c

    .line 1381
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1382
    .local v2, "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 1387
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 1380
    .end local v2    # "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1389
    :cond_2c
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1483
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1484
    return-void
.end method

.method public bridge synthetic updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1280
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
