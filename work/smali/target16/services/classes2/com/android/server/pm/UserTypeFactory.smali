.class public abstract Lcom/android/server/pm/UserTypeFactory;
.super Ljava/lang/Object;
.source "UserTypeFactory.java"


# direct methods
.method public static customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            ")V"
        }
    .end annotation

    .line 611
    const-string v0, "UserTypeFactory"

    :try_start_2
    const-string/jumbo v1, "user-types"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 612
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 613
    :goto_b
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_231

    .line 616
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 617
    const-string/jumbo v3, "profile-type"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_1d} :catch_73
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_73

    const-string v4, " in "

    if-eqz v3, :cond_23

    move v1, v2

    goto :goto_2c

    .line 619
    :cond_23
    :try_start_23
    const-string v3, "full-type"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ff

    const/4 v1, 0x0

    .line 632
    :goto_2c
    const-string/jumbo v3, "name"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e3

    .line 633
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    goto/16 :goto_1e3

    .line 639
    :cond_40
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 642
    const-string v5, "android."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x1000

    if-eqz v5, :cond_c4

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Customizing user type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails$Builder;

    if-eqz v2, :cond_a8

    if-eqz v1, :cond_76

    .line 651
    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v5

    if-eq v5, v6, :cond_ec

    goto :goto_76

    :catch_73
    move-exception p0

    goto/16 :goto_232

    :cond_76
    :goto_76
    if-nez v1, :cond_81

    .line 652
    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v5

    const/16 v6, 0x400

    if-ne v5, v6, :cond_81

    goto :goto_ec

    .line 654
    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong base type to customize user type ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), which is type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 647
    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal custom user type name "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Non-AOSP user types cannot start with \'android.\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c4
    if-eqz v1, :cond_1c7

    .line 660
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating custom user type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v5, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v5}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 662
    invoke-virtual {v5, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 663
    invoke-virtual {v5, v6}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 665
    invoke-virtual {v5, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 666
    invoke-virtual {p0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v5

    :cond_ec
    :goto_ec
    if-eqz v1, :cond_122

    .line 674
    const-string/jumbo v3, "max-allowed-per-parent"

    .line 675
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    .line 674
    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 676
    const-string v3, "icon-badge"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 677
    const-string v3, "badge-plain"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 678
    const-string v3, "badge-no-background"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 679
    const-string/jumbo v3, "status-bar-icon"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda4;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 682
    :cond_122
    const-string v3, "enabled"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda5;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 683
    const-string/jumbo v3, "max-allowed"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda6;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 686
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 687
    :goto_13b
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_22c

    .line 688
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 689
    const-string v6, "default-restrictions"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_159

    .line 691
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v5

    .line 692
    invoke-virtual {v2, v5}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    goto :goto_13b

    :cond_159
    if-eqz v1, :cond_16c

    .line 693
    const-string v6, "badge-labels"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 694
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda7;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_13b

    :cond_16c
    if-eqz v1, :cond_17f

    .line 695
    const-string v6, "badge-colors"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17f

    .line 696
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda8;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_13b

    :cond_17f
    if-eqz v1, :cond_192

    .line 697
    const-string v6, "badge-colors-dark"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_192

    .line 698
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda9;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_13b

    .line 699
    :cond_192
    const-string/jumbo v6, "user-properties"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a7

    .line 700
    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->getDefaultUserProperties()Landroid/content/pm/UserProperties;

    move-result-object v5

    .line 701
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/UserProperties;->updateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_13b

    .line 703
    :cond_1a7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 703
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13b

    .line 668
    :cond_1c7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creation of non-profile user type ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is not currently supported."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 634
    :cond_1e3
    :goto_1e3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping user type with no name in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_22c

    .line 621
    :cond_1ff
    const-string v2, "change-user-type"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20b

    .line 623
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_22c

    .line 626
    :cond_20b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unknown element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 614
    :cond_22c
    :goto_22c
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_22f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_22f} :catch_73
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_22f} :catch_73

    goto/16 :goto_b

    :cond_231
    return-void

    .line 709
    :goto_232
    const-string p1, "Cannot read user type configuration file."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static getDefaultBuilders()Landroid/util/ArrayMap;
    .registers 3

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 105
    const-string v1, "android.os.usertype.profile.MANAGED"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileManaged()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "android.os.usertype.full.SYSTEM"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullSystem()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "android.os.usertype.full.SECONDARY"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullSecondary()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "android.os.usertype.full.GUEST"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullGuest()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "android.os.usertype.full.DEMO"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullDemo()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "android.os.usertype.full.RESTRICTED"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullRestricted()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "android.os.usertype.system.HEADLESS"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeSystemHeadless()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "android.os.usertype.profile.CLONE"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileClone()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "android.os.usertype.profile.COMMUNAL"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileCommunal()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "android.os.usertype.profile.PRIVATE"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfilePrivate()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "android.os.usertype.profile.SUPERVISING"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileSupervising()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_75

    .line 117
    const-string v1, "android.os.usertype.profile.TEST"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileTest()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_75
    return-object v0
.end method

.method public static getDefaultCloneCrossProfileIntentFilter()Ljava/util/List;
    .registers 1

    .line 541
    invoke-static {}, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->getDefaultCloneProfileFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultGuestUserRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 495
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "no_config_wifi"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 501
    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 502
    const-string/jumbo v1, "no_config_credentials"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultHeadlessSystemUserRestrictions()Landroid/os/Bundle;
    .registers 1

    .line 482
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSystemUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultManagedCrossProfileIntentFilter()Ljava/util/List;
    .registers 1

    .line 537
    invoke-static {}, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->getDefaultManagedProfileFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultManagedProfileSecureSettings()Landroid/os/Bundle;
    .registers 3

    .line 527
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 528
    const-string v1, "managed_profile_contact_remote_search"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v1, "cross_profile_calendar_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultMaxAllowedSwitchableUsers()I
    .registers 1

    .line 572
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getMaxSwitchableUsers()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;
    .registers 3

    .line 551
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 554
    const-string/jumbo v1, "user_setup_complete"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultPrivateCrossProfileIntentFilter()Ljava/util/List;
    .registers 1

    .line 546
    invoke-static {}, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->getDefaultPrivateProfileFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPrivateProfileRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 514
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 515
    const-string/jumbo v1, "no_bluetooth_sharing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultProfileRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 507
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 508
    const-string/jumbo v1, "no_wallpaper"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 487
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 488
    const-string/jumbo v1, "no_outgoing_calls"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 489
    const-string/jumbo v1, "no_sms"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultSupervisingProfileRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 520
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 521
    const-string/jumbo v1, "no_install_apps"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultSystemUserRestrictions()Landroid/os/Bundle;
    .registers 6

    .line 466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 468
    :try_start_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 470
    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_26

    aget-object v4, v1, v3

    .line 471
    invoke-static {v4}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x1

    .line 472
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_23

    :catch_21
    move-exception v1

    goto :goto_27

    :cond_23
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_26
    return-object v0

    .line 476
    :goto_27
    const-string v2, "UserTypeFactory"

    const-string v3, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getDefaultTypeFullDemo()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 409
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.DEMO"

    .line 410
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x400

    .line 411
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x200

    .line 412
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 413
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 416
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullGuest()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 4

    .line 392
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101d3

    .line 393
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/16 v0, 0x100

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    or-int/lit8 v0, v0, 0x4

    .line 396
    new-instance v2, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v3, "android.os.usertype.full.GUEST"

    .line 397
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    const/16 v3, 0x400

    .line 398
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    .line 399
    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 400
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getMaxSwitchableUsers()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_31

    move v1, v3

    :cond_31
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setEnabled(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 401
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 402
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultGuestUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullRestricted()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 426
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.RESTRICTED"

    .line 427
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x400

    .line 428
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x8

    .line 429
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 430
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultMaxAllowedSwitchableUsers()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 431
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullSecondary()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 381
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.SECONDARY"

    .line 382
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x400

    .line 383
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 384
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultMaxAllowedSwitchableUsers()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 385
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullSystem()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 440
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.SYSTEM"

    .line 441
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0xc00

    .line 442
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x4003

    .line 443
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 444
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 445
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSystemUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileClone()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 5

    .line 129
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.CLONE"

    .line 130
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultMaxAllowedSwitchableUsers()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x1040936

    filled-new-array {v2}, [I

    move-result-object v2

    .line 135
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10803ff

    .line 136
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10803fe

    .line 137
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 140
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x104020d

    filled-new-array {v3}, [I

    move-result-object v3

    .line 141
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x1060034

    filled-new-array {v3}, [I

    move-result-object v3

    .line 143
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x1060035

    filled-new-array {v3}, [I

    move-result-object v3

    .line 145
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x10400f8

    .line 147
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setAccessibilityString(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v3, 0x0

    .line 149
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultCloneCrossProfileIntentFilter()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v3}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 153
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 155
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setInheritDevicePolicy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 157
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setUseParentsContacts(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 158
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setUpdateCrossProfileIntentFiltersOnOTA(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    const/16 v4, 0xa

    .line 159
    invoke-virtual {v3, v4}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentFilterAccessControl(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 161
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentResolutionStrategy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    const/4 v4, 0x2

    .line 163
    invoke-virtual {v3, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 165
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 167
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setMediaSharedWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 168
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setDeleteAppWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 170
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileContentSharingStrategy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileCommunal()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 6

    .line 268
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.COMMUNAL"

    .line 269
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 270
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 271
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 272
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 273
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setEnabled(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x1040937

    filled-new-array {v3}, [I

    move-result-object v3

    .line 274
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x108060f

    .line 275
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x108060d

    .line 276
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v4, 0x108060e

    .line 277
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x1040612

    const v4, 0x1040613

    const v5, 0x1040611

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    .line 279
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x106033c

    const v4, 0x106033e

    const v5, 0x106033a

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    .line 283
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x106033d

    const v4, 0x106033f

    const v5, 0x106033b

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    .line 287
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 291
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 292
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v3}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 294
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 295
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 296
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 297
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 298
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setAlwaysVisible(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileManaged()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 5

    .line 179
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.MANAGED"

    .line 180
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 181
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 182
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 185
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getMaxManagedProfiles()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getMaxManagedProfiles()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 187
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x104093c

    const v3, 0x104093d

    const v4, 0x104093b

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 188
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x1080418

    .line 192
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x1080413

    .line 193
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x1080415

    .line 194
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10809f2

    .line 195
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x1040612

    const v3, 0x1040613

    const v4, 0x1040611

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 196
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x106033c

    const v3, 0x106033e

    const v4, 0x106033a

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 200
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x106033d

    const v3, 0x106033f

    const v4, 0x106033b

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 204
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10400fa

    .line 208
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setAccessibilityString(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 210
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 211
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultManagedCrossProfileIntentFilter()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-instance v2, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v2}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 214
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 215
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 216
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 217
    invoke-virtual {v2, v3}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 219
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 221
    invoke-virtual {v2, v3}, Landroid/content/pm/UserProperties$Builder;->setAuthAlwaysRequiredToDisableQuietMode(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 222
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfilePrivate()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 4

    .line 306
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.PRIVATE"

    .line 307
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 308
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 312
    invoke-static {}, Landroid/os/UserManager;->isPrivateProfileEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setEnabled(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x1040938

    filled-new-array {v2}, [I

    move-result-object v2

    .line 313
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10805cf

    .line 314
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10805ce

    .line 315
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10809f3

    .line 319
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x104092d

    filled-new-array {v2}, [I

    move-result-object v2

    .line 320
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x106000c

    filled-new-array {v2}, [I

    move-result-object v2

    .line 322
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x106000b

    filled-new-array {v2}, [I

    move-result-object v2

    .line 324
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10400fb

    .line 326
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setAccessibilityString(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 328
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultPrivateProfileRestrictions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultPrivateCrossProfileIntentFilter()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-instance v2, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v2}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 331
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 332
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 333
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setAuthAlwaysRequiredToDisableQuietMode(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 334
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setAllowStoppingUserWithDelayedLocking(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 335
    invoke-virtual {v2, v3}, Landroid/content/pm/UserProperties$Builder;->setMediaSharedWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 336
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 337
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 338
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 340
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    const/16 v3, 0xa

    .line 342
    invoke-virtual {v2, v3}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentFilterAccessControl(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 344
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setInheritDevicePolicy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 345
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileContentSharingStrategy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 347
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setProfileApiVisibility(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 349
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setItemsRestrictedOnHomeScreen(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 350
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setUpdateCrossProfileIntentFiltersOnOTA(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileSupervising()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 5

    .line 358
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.SUPERVISING"

    .line 359
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 360
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 361
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 362
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 363
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setEnabled(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x1040939

    filled-new-array {v3}, [I

    move-result-object v3

    .line 364
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 365
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSupervisingProfileRestrictions()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 366
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v3}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 368
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    const/4 v4, 0x2

    .line 369
    invoke-virtual {v3, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 370
    invoke-virtual {v3, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 371
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 372
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 373
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setAlwaysVisible(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileTest()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 5

    .line 230
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 231
    const-string/jumbo v1, "no_fun"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v3, "android.os.usertype.profile.TEST"

    .line 234
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/16 v3, 0x1000

    .line 235
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/4 v3, 0x4

    .line 236
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/4 v3, 0x2

    .line 237
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x104093a

    filled-new-array {v2, v2, v2}, [I

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x108060f

    .line 243
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x108060d

    .line 244
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v3, 0x108060e

    .line 245
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x1040612

    const v3, 0x1040613

    const v4, 0x1040611

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x106033c

    const v3, 0x106033e

    const v4, 0x106033a

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 251
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x106033d

    const v3, 0x106033f

    const v4, 0x106033b

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 255
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 259
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 260
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeSystemHeadless()Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 453
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.system.HEADLESS"

    .line 454
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x800

    .line 455
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 456
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 458
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 459
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultHeadlessSystemUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxManagedProfiles()I
    .registers 2

    .line 592
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 595
    :cond_6
    const-string/jumbo v0, "persist.sys.max_profiles"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxSwitchableUsers()I
    .registers 1

    .line 583
    invoke-static {}, Landroid/os/UserManager;->getMaxSwitchableUsers()I

    move-result v0

    return v0
.end method

.method public static getUserTypeUpgrades()Ljava/util/List;
    .registers 2

    .line 832
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 833
    :try_start_b
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultBuilders()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/pm/UserTypeFactory;->parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_19

    if-eqz v0, :cond_18

    .line 834
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_18
    return-object v1

    :catchall_19
    move-exception v1

    if-eqz v0, :cond_24

    .line 831
    :try_start_1c
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v1
.end method

.method public static getUserTypeVersion()I
    .registers 2

    .line 797
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 798
    :try_start_b
    invoke-static {v0}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I

    move-result v1
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_15

    if-eqz v0, :cond_14

    .line 799
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_14
    return v1

    :catchall_15
    move-exception v1

    if-eqz v0, :cond_20

    .line 796
    :try_start_18
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw v1
.end method

.method public static getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I
    .registers 7

    .line 804
    const-string v0, "UserTypeFactory"

    const/4 v1, 0x0

    .line 807
    :try_start_3
    const-string/jumbo v2, "user-types"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 808
    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_11} :catch_18
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_18

    if-eqz v2, :cond_3c

    .line 811
    :try_start_13
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_17} :catch_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_18

    return p0

    :catch_18
    move-exception p0

    goto :goto_3d

    :catch_1a
    move-exception v3

    .line 813
    :try_start_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse value of \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for version in "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 813
    invoke-static {v0, p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    throw v3
    :try_end_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_3c} :catch_18
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3c} :catch_18

    :cond_3c
    return v1

    .line 819
    :goto_3d
    const-string v2, "Cannot read user type configuration file."

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static getUserTypes()Landroid/util/ArrayMap;
    .registers 5

    .line 88
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultBuilders()Landroid/util/ArrayMap;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 92
    :try_start_f
    invoke-static {v0, v1}, Lcom/android/server/pm/UserTypeFactory;->customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_3e

    if-eqz v1, :cond_17

    .line 93
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 95
    :cond_17
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    .line 96
    :goto_21
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 97
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-virtual {v4}, Lcom/android/server/pm/UserTypeDetails$Builder;->createUserTypeDetails()Lcom/android/server/pm/UserTypeDetails;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3d
    return-object v1

    :catchall_3e
    move-exception v0

    if-eqz v1, :cond_49

    .line 90
    :try_start_41
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    throw v0
.end method

.method public static parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;",
            ">;"
        }
    .end annotation

    .line 841
    const-string v0, "UserTypeFactory"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 844
    :try_start_7
    const-string/jumbo v2, "user-types"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 845
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 846
    :goto_10
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6e

    .line 848
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 849
    const-string v3, "change-user-type"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 850
    const-string v2, "from"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 851
    const-string/jumbo v4, "to"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 854
    invoke-static {v2, p0}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 855
    invoke-static {v4, p0}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V
    :try_end_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_37} :catch_4b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_37} :catch_4b

    .line 859
    :try_start_37
    const-string/jumbo v5, "whenVersionLeq"

    .line 860
    invoke-interface {p1, v3, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 859
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_42} :catch_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_37 .. :try_end_42} :catch_4b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_42} :catch_4b

    .line 867
    :try_start_42
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    invoke-direct {v5, v2, v4, v3}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 869
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    :catch_4b
    move-exception p0

    goto :goto_6f

    :catch_4d
    move-exception p0

    .line 862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse value of whenVersionLeq in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 862
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    throw p0

    .line 872
    :cond_67
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 847
    :goto_6a
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_6d} :catch_4b
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_6d} :catch_4b

    goto :goto_10

    :cond_6e
    return-object v1

    .line 877
    :goto_6f
    const-string p1, "Cannot read user type configuration file."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 6

    const/4 v0, 0x0

    .line 724
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 729
    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p2

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse value of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 731
    const-string p1, "UserTypeFactory"

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    throw p2
.end method

.method public static setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .registers 5

    const/4 v0, 0x0

    .line 747
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x0

    .line 751
    invoke-interface {p0, v0, p1, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    .line 752
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V
    .registers 7

    .line 767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 768
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 769
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 770
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 771
    const-string v3, "item"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unknown child element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 772
    const-string v3, "UserTypeFactory"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    :cond_41
    const/4 v2, 0x0

    .line 777
    const-string/jumbo v3, "res"

    const/4 v4, -0x1

    invoke-interface {p0, v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4d

    goto :goto_9

    .line 781
    :cond_4d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 784
    :cond_55
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    .line 785
    :goto_5c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_71

    .line 786
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 788
    :cond_71
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 4

    .line 885
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails$Builder;

    if-eqz p1, :cond_2d

    .line 886
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_11

    goto :goto_2d

    .line 887
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal upgrade of user type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : Can only upgrade profiles user types"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    :goto_2d
    return-void
.end method
