.class public final Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/resolution/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<",
        "Landroid/util/Pair<",
        "Lcom/android/server/pm/pkg/component/ParsedService;",
        "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
        ">;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 3
    .param p1, "userManager"    # Lcom/android/server/pm/UserManagerService;

    .line 1534
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1762
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    .line 1535
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;Lcom/android/server/pm/UserManagerService;)V
    .registers 5
    .param p1, "orig"    # Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;
    .param p2, "userManager"    # Lcom/android/server/pm/UserManagerService;

    .line 1540
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    .line 1762
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    .line 1541
    iget-object v1, p1, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1542
    return-void
.end method


# virtual methods
.method public bridge synthetic addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V
    .registers 3

    .line 1530
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    return-void
.end method

.method addService(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedService;)V
    .registers 9
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p2, "s"    # Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1589
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1596
    .local v0, "intentsSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_12
    if-ge v1, v0, :cond_4e

    .line 1597
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1598
    .local v2, "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 1603
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v3}, Landroid/content/IntentFilter;->debugCheck()Z

    move-result v4

    if-nez v4, :cond_44

    .line 1604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> For Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_44
    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    .line 1596
    .end local v2    # "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1608
    :cond_4e
    return-void
.end method

.method protected allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1632
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedService;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_35

    .line 1633
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1634
    .local v2, "destAi":Landroid/content/pm/ServiceInfo;
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedService;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1635
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1636
    const/4 v1, 0x0

    return v1

    .line 1632
    .end local v2    # "destAi":Landroid/content/pm/ServiceInfo;
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1639
    .end local v0    # "i":I
    :cond_35
    return v1
.end method

.method protected bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3

    .line 1530
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z

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
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1720
    .local p3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedService;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1721
    .local v0, "service":Lcom/android/server/pm/pkg/component/ParsedService;
    iget-object v1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1723
    .local v1, "filter":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1724
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1725
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1726
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const-string v2, " filter "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1728
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1729
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 1730
    const-string v2, " permission "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4c

    .line 1732
    :cond_49
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1734
    :goto_4c
    return-void
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 1530
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 8
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 1742
    move-object v0, p3

    check-cast v0, Landroid/util/Pair;

    .line 1744
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedService;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1745
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1746
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1747
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedService;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1748
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedService;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1747
    invoke-static {p1, v1, v2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const/4 v1, 0x1

    if-le p4, v1, :cond_3b

    .line 1750
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1752
    :cond_3b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1753
    return-void
.end method

.method protected filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1738
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedService;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    return-object p1
.end method

.method protected bridge synthetic filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1530
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation

    .line 1758
    .local p1, "input":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedService;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 1530
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;

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
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1651
    .local p2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedService;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedService;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 1530
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z

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
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 1645
    new-array v0, p1, [Landroid/util/Pair;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1530
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;
    .registers 27
    .param p1, "computer"    # Lcom/android/server/pm/Computer;
    .param p3, "match"    # I
    .param p4, "userId"    # I
    .param p5, "customFlags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;IIJ)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 1658
    .local p2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedService;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    move-object/from16 v0, p2

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p0

    iget-object v1, v11, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    const/4 v12, 0x0

    if-nez v1, :cond_12

    return-object v12

    .line 1660
    :cond_12
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1661
    .local v13, "service":Lcom/android/server/pm/pkg/component/ParsedService;
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1662
    .local v14, "intentInfo":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v15

    .line 1664
    .local v15, "filter":Landroid/content/IntentFilter;
    nop

    .line 1665
    invoke-interface {v13}, Lcom/android/server/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1664
    move-object/from16 v7, p1

    invoke-interface {v7, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 1666
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v6, :cond_d6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_d6

    .line 1667
    invoke-static {v6, v13, v9, v10, v8}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    if-nez v1, :cond_3f

    move/from16 v4, p3

    move-object/from16 v17, v6

    goto/16 :goto_da

    .line 1672
    :cond_3f
    invoke-interface {v6, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    .line 1673
    .local v16, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    move-object v2, v13

    move-wide/from16 v3, p5

    move-object/from16 v5, v16

    move-object/from16 v17, v6

    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v17, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v6, p4

    move-object/from16 v7, v17

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 1675
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    if-nez v1, :cond_59

    .line 1676
    return-object v12

    .line 1678
    :cond_59
    const-wide/32 v2, 0x1000000

    and-long/2addr v2, v9

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_67

    move v2, v3

    goto :goto_68

    :cond_67
    move v2, v6

    .line 1680
    .local v2, "matchVisibleToInstantApp":Z
    :goto_68
    const-wide/32 v18, 0x800000

    and-long v18, v9, v18

    cmp-long v7, v18, v4

    if-eqz v7, :cond_72

    goto :goto_73

    :cond_72
    move v3, v6

    .line 1682
    .local v3, "isInstantApp":Z
    :goto_73
    if-eqz v2, :cond_82

    .line 1683
    invoke-virtual {v15}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result v6

    if-nez v6, :cond_82

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v6

    if-nez v6, :cond_82

    .line 1684
    return-object v12

    .line 1687
    :cond_82
    if-nez v3, :cond_8b

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 1688
    return-object v12

    .line 1692
    :cond_8b
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->isUpdateAvailable()Z

    move-result v6

    if-eqz v6, :cond_98

    .line 1693
    return-object v12

    .line 1695
    :cond_98
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1696
    .local v6, "res":Landroid/content/pm/ResolveInfo;
    iput-object v1, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1697
    const-wide/16 v18, 0x40

    and-long v18, v9, v18

    cmp-long v4, v18, v4

    if-eqz v4, :cond_a9

    .line 1698
    iput-object v15, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1700
    :cond_a9
    invoke-virtual {v15}, Landroid/content/IntentFilter;->getPriority()I

    move-result v4

    iput v4, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1703
    move/from16 v4, p3

    iput v4, v6, Landroid/content/pm/ResolveInfo;->match:I

    .line 1704
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->isHasDefault()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1705
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getLabelRes()I

    move-result v5

    iput v5, v6, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1706
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v6, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1707
    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIcon()I

    move-result v5

    iput v5, v6, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1708
    iget-object v5, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    iput-boolean v5, v6, Landroid/content/pm/ResolveInfo;->system:Z

    .line 1709
    return-object v6

    .line 1666
    .end local v1    # "si":Landroid/content/pm/ServiceInfo;
    .end local v2    # "matchVisibleToInstantApp":Z
    .end local v3    # "isInstantApp":Z
    .end local v16    # "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_d6
    move/from16 v4, p3

    move-object/from16 v17, v6

    .line 1669
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v17    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_da
    return-object v12
.end method

.method protected bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 14

    .line 1530
    move-object v2, p2

    check-cast v2, Landroid/util/Pair;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->newResult(Lcom/android/server/pm/Computer;Landroid/util/Pair;IIJ)Landroid/content/pm/ResolveInfo;

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

    .line 1556
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 1557
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

    .line 1547
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1548
    const/4 v0, 0x0

    return-object v0

    .line 1550
    :cond_a
    if-eqz p4, :cond_10

    const-wide/32 v0, 0x10000

    goto :goto_12

    :cond_10
    const-wide/16 v0, 0x0

    :goto_12
    move-wide v8, v0

    .line 1551
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
            "Lcom/android/server/pm/pkg/component/ParsedService;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1563
    .local p6, "packageServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedService;>;"
    move-object v9, p0

    move-object/from16 v10, p6

    iget-object v0, v9, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v11, p7

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    return-object v0

    .line 1564
    :cond_f
    if-nez v10, :cond_16

    .line 1565
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1567
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

    .line 1568
    .local v4, "defaultOnly":Z
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v12

    .line 1569
    .local v12, "servicesSize":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v0

    .line 1573
    .local v13, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedService;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, v12, :cond_66

    .line 1574
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1575
    .local v1, "service":Lcom/android/server/pm/pkg/component/ParsedService;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v2

    .line 1576
    .local v2, "intentFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_63

    .line 1577
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object v3

    .line 1578
    .local v3, "array":[Landroid/util/Pair;, "[Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedService;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    const/4 v5, 0x0

    .local v5, "arrayIndex":I
    :goto_4b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_60

    .line 1579
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1578
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 1581
    .end local v5    # "arrayIndex":I
    :cond_60
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    .end local v1    # "service":Lcom/android/server/pm/pkg/component/ParsedService;
    .end local v3    # "array":[Landroid/util/Pair;, "[Landroid/util/Pair<Lcom/android/server/pm/pkg/component/ParsedService;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 1584
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

.method removeService(Lcom/android/server/pm/pkg/component/ParsedService;)V
    .registers 7
    .param p1, "s"    # Lcom/android/server/pm/pkg/component/ParsedService;

    .line 1611
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1618
    .local v0, "intentsSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_12
    if-ge v1, v0, :cond_2c

    .line 1619
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 1620
    .local v2, "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 1625
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 1618
    .end local v2    # "intent":Lcom/android/server/pm/pkg/component/ParsedIntentInfo;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1627
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

    .line 1714
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1715
    return-void
.end method

.method public bridge synthetic updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1530
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
