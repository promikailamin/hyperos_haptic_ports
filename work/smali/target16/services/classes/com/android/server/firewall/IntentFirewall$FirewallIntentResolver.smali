.class public Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "IntentFirewall.java"


# instance fields
.field public final mRulesByComponent:Landroid/util/ArrayMap;

.field public final mRulesByComponentClassExact:Landroid/util/ArrayMap;

.field public final mRulesWithComponentClassPattern:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$maddComponentClassExactFilter(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addComponentClassExactFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$Rule;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddComponentClassPatternFilter(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->addComponentClassPatternFilter(Lcom/android/server/firewall/IntentFirewall$Rule;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mqueryByComponentClass(Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->queryByComponentClass(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 625
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 698
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    .line 700
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponentClassExact:Landroid/util/ArrayMap;

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesWithComponentClassPattern:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/firewall/IntentFirewall-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public final addComponentClassExactFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .registers 5

    .line 689
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponentClassExact:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 690
    const-class v1, Lcom/android/server/firewall/IntentFirewall$Rule;

    invoke-static {v1, v0, p2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 691
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponentClassExact:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final addComponentClassPatternFilter(Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .registers 2

    .line 695
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesWithComponentClassPattern:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addComponentFilter(Landroid/content/ComponentName;Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .registers 5

    .line 683
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 684
    const-class v1, Lcom/android/server/firewall/IntentFirewall$Rule;

    invoke-static {v1, v0, p2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 685
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public allowFilterResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;Ljava/util/List;)Z
    .registers 3

    .line 629
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->-$$Nest$fgetrule(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3

    .line 625
    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->allowFilterResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public getIntentFilter(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Landroid/content/IntentFilter;
    .registers 2

    .line 0
    return-object p1
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 625
    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->getIntentFilter(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 625
    check-cast p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Z

    move-result p0

    return p0
.end method

.method public newArray(I)[Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .registers 2

    .line 639
    new-array p0, p1, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 625
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->newArray(I)[Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public newResult(Lcom/android/server/pm/Computer;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;IIJ)Lcom/android/server/firewall/IntentFirewall$Rule;
    .registers 7

    .line 645
    invoke-static {p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->-$$Nest$fgetrule(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 7

    .line 625
    check-cast p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->newResult(Lcom/android/server/pm/Computer;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;IIJ)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object p0

    return-object p0
.end method

.method public queryByComponent(Landroid/content/ComponentName;Ljava/util/List;)V
    .registers 3

    .line 660
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    if-eqz p0, :cond_11

    .line 662
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11
    return-void
.end method

.method public final queryByComponentClass(Ljava/lang/String;Ljava/util/List;)V
    .registers 8

    .line 667
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponentClassExact:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    if-eqz v0, :cond_11

    .line 669
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11
    const/4 v0, 0x0

    move v1, v0

    .line 672
    :goto_13
    iget-object v2, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesWithComponentClassPattern:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 673
    iget-object v2, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesWithComponentClassPattern:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/firewall/IntentFirewall$Rule;

    move v3, v0

    .line 674
    :goto_24
    invoke-virtual {v2}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentClassPatternFilterCount()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 675
    invoke-virtual {v2, v3}, Lcom/android/server/firewall/IntentFirewall$Rule;->getComponentClassPatternMatcher(I)Landroid/os/PatternMatcher;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 676
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_3d
    return-void
.end method

.method public sortResults(Ljava/util/List;)V
    .registers 2

    .line 0
    return-void
.end method
