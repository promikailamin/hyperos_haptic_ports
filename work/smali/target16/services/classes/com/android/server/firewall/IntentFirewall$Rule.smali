.class Lcom/android/server/firewall/IntentFirewall$Rule;
.super Lcom/android/server/firewall/AndFilter;
.source "IntentFirewall.java"


# instance fields
.field public block:Z

.field public log:Z

.field public final mComponentClassExactFilters:Ljava/util/ArrayList;

.field public final mComponentClassPatternMatchers:Ljava/util/ArrayList;

.field public final mComponentFilters:Ljava/util/ArrayList;

.field public final mIntentFilters:Ljava/util/ArrayList;

.field public mRuleType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 489
    invoke-direct {p0}, Lcom/android/server/firewall/AndFilter;-><init>()V

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    .line 504
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentClassExactFilters:Ljava/util/ArrayList;

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentClassPatternMatchers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBlock()Z
    .registers 1

    .line 605
    iget-boolean p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    return p0
.end method

.method public getComponentClassExactFilter(I)Ljava/lang/String;
    .registers 2

    .line 593
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentClassExactFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getComponentClassExactFilterCount()I
    .registers 1

    .line 589
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentClassExactFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getComponentClassPatternFilterCount()I
    .registers 1

    .line 597
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentClassPatternMatchers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getComponentClassPatternMatcher(I)Landroid/os/PatternMatcher;
    .registers 2

    .line 601
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentClassPatternMatchers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PatternMatcher;

    return-object p0
.end method

.method public getComponentFilter(I)Landroid/content/ComponentName;
    .registers 2

    .line 585
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0
.end method

.method public getComponentFilterCount()I
    .registers 1

    .line 581
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .registers 2

    .line 577
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    return-object p0
.end method

.method public getIntentFilterCount()I
    .registers 1

    .line 573
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getLog()Z
    .registers 1

    .line 609
    iget-boolean p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    return p0
.end method

.method public readChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10

    .line 522
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 524
    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 525
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-direct {v0, p0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;-><init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V

    .line 526
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 527
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 528
    :cond_1a
    const-string v1, "component-filter"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 529
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 535
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 540
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 537
    :cond_38
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid component name: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 531
    :cond_4f
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Component name must be specified."

    invoke-direct {p0, v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p0

    .line 541
    :cond_57
    iget v1, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mRuleType:I

    if-nez v1, :cond_10d

    const-string v1, "component-class-filter"

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 543
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_105

    const/4 v0, 0x0

    .line 547
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    .line 549
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_fd

    .line 553
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    sparse-switch v3, :sswitch_data_112

    :goto_87
    move v0, v7

    goto :goto_c0

    :sswitch_89
    const-string v0, "endsWith"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto :goto_87

    :cond_92
    move v0, v4

    goto :goto_c0

    :sswitch_94
    const-string v0, "advancedPattern"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto :goto_87

    :cond_9d
    move v0, v5

    goto :goto_c0

    :sswitch_9f
    const-string/jumbo v0, "pattern"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    goto :goto_87

    :cond_a9
    move v0, v6

    goto :goto_c0

    :sswitch_ab
    const-string v0, "equals"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    goto :goto_87

    :cond_b4
    move v0, v1

    goto :goto_c0

    :sswitch_b6
    const-string/jumbo v3, "startsWith"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c0

    goto :goto_87

    :cond_c0
    :goto_c0
    packed-switch v0, :pswitch_data_128

    .line 563
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "component-class-filter only supports \'equals\', \'startsWith\' and \'endsWith\' attribute."

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 557
    :pswitch_cb
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentClassPatternMatchers:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/PatternMatcher;

    invoke-direct {v0, p1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 561
    :pswitch_d6
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentClassPatternMatchers:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/PatternMatcher;

    invoke-direct {v0, p1, v5}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 559
    :pswitch_e1
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentClassPatternMatchers:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/PatternMatcher;

    invoke-direct {v0, p1, v6}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 554
    :pswitch_ec
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentClassExactFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 555
    :pswitch_f2
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentClassPatternMatchers:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/PatternMatcher;

    invoke-direct {v0, p1, v1}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 550
    :cond_fd
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Attribute value cannot be empty in component-class-filter"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 544
    :cond_105
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "component-class-filter must have one and only one attributes."

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 568
    :cond_10d
    invoke-super {p0, p1}, Lcom/android/server/firewall/FilterList;->readChild(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    nop

    :sswitch_data_112
    .sparse-switch
        -0x5cb7a349 -> :sswitch_b6
        -0x4d378041 -> :sswitch_ab
        -0x2f271470 -> :sswitch_9f
        -0x24d2eef2 -> :sswitch_94
        0x67e67bde -> :sswitch_89
    .end sparse-switch

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_f2
        :pswitch_ec
        :pswitch_e1
        :pswitch_d6
        :pswitch_cb
    .end packed-switch
.end method

.method public bridge synthetic readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;
    .registers 2

    .line 488
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object p0

    return-object p0
.end method

.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    .registers 4

    .line 513
    const-string v0, "block"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    .line 514
    const-string/jumbo v0, "log"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    .line 516
    invoke-super {p0, p1}, Lcom/android/server/firewall/FilterList;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;

    return-object p0
.end method

.method public setRuleType(I)V
    .registers 2

    .line 613
    iput p1, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mRuleType:I

    return-void
.end method
