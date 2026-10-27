.class public abstract Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;
.super Ljava/lang/Object;
.source "DomainVerificationPersistence.java"


# direct methods
.method public static createPkgStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .registers 11

    .line 180
    const-string/jumbo v0, "packageName"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v0, "id"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "hasAutoVerifyDomains"

    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 183
    const-string/jumbo v1, "signature"

    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 184
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_8d

    .line 187
    :cond_27
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 189
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 190
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 191
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 193
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 194
    :goto_3e
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 195
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v9, -0x1

    sparse-switch v1, :sswitch_data_90

    goto :goto_77

    :sswitch_54
    const-string/jumbo v1, "uri-relative-filter-groups"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_77

    :cond_5e
    const/4 v9, 0x2

    goto :goto_77

    :sswitch_60
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_77

    :cond_6a
    const/4 v9, 0x1

    goto :goto_77

    :sswitch_6c
    const-string/jumbo v1, "user-states"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_77

    :cond_76
    const/4 v9, 0x0

    :goto_77
    packed-switch v9, :pswitch_data_9e

    goto :goto_3e

    .line 203
    :pswitch_7b
    invoke-static {p0, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readUriRelativeFilterGroups(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_3e

    .line 197
    :pswitch_7f
    invoke-static {p0, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readDomainStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_3e

    .line 200
    :pswitch_83
    invoke-static {p0, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/SparseArray;)V

    goto :goto_3e

    .line 208
    :cond_87
    new-instance v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;Landroid/util/ArrayMap;)V

    return-object v1

    :cond_8d
    :goto_8d
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_90
    .sparse-switch
        -0x5df07dbc -> :sswitch_6c
        0x68ac491 -> :sswitch_60
        0x614c8a09 -> :sswitch_54
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
    .end packed-switch
.end method

.method public static createUriRelativeFilterGroupsFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Ljava/util/ArrayList;
    .registers 5

    .line 223
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    :goto_9
    const-string/jumbo v2, "uri-relative-filter-group"

    invoke-interface {v0, v2}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 226
    new-instance v2, Landroid/content/UriRelativeFilterGroup;

    const-string v3, "action"

    invoke-interface {p0, v3}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/content/UriRelativeFilterGroup;-><init>(I)V

    .line 227
    invoke-static {v0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readUriRelativeFiltersFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/content/UriRelativeFilterGroup;)V

    .line 228
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_24
    return-object v1
.end method

.method public static createUserStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .registers 5

    .line 338
    const-string/jumbo v0, "userId"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 343
    :cond_c
    const-string v1, "allowLinkHandling"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 344
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 346
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 347
    :goto_1c
    const-string v3, "enabled-hosts"

    invoke-interface {p0, v3}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 348
    invoke-static {p0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readEnabledHosts(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArraySet;)V

    goto :goto_1c

    .line 351
    :cond_28
    new-instance p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    return-object p0
.end method

.method public static readDomainStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .registers 5

    .line 258
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 259
    :goto_4
    const-string v0, "domain"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 260
    const-string/jumbo v0, "name"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_23
    return-void
.end method

.method public static readEnabledHosts(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArraySet;)V
    .registers 4

    .line 356
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 357
    :cond_4
    :goto_4
    const-string v0, "host"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 358
    const-string/jumbo v0, "name"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 360
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
    .registers 5

    .line 143
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 144
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 146
    invoke-static {p0}, Lcom/android/server/pm/SettingsXml;->parser(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/SettingsXml$ReadSection;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 147
    :goto_12
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 148
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v3, "active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string/jumbo v3, "restored"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_12

    .line 153
    :cond_31
    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_12

    .line 150
    :cond_35
    invoke-static {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_12

    .line 158
    :cond_39
    new-instance p0, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-object p0
.end method

.method public static readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .registers 4

    .line 163
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 164
    :cond_4
    :goto_4
    const-string/jumbo v0, "package-state"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 165
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createPkgStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 168
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1b
    return-void
.end method

.method public static readUriRelativeFilterGroups(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .registers 4

    .line 214
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 215
    :goto_4
    const-string v0, "domain"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 216
    const-string/jumbo v0, "name"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createUriRelativeFilterGroupsFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1b
    return-void
.end method

.method public static readUriRelativeFiltersFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/content/UriRelativeFilterGroup;)V
    .registers 6

    .line 235
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 236
    :cond_4
    :goto_4
    const-string/jumbo v0, "uri-relative-filter"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 237
    const-string v0, "filter"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 239
    new-instance v1, Landroid/content/UriRelativeFilter;

    const-string/jumbo v2, "uri-part"

    invoke-interface {p0, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "pattern-type"

    .line 240
    invoke-interface {p0, v3}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Landroid/content/UriRelativeFilter;-><init>(IILjava/lang/String;)V

    .line 239
    invoke-virtual {p1, v1}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    goto :goto_4

    :cond_2c
    return-void
.end method

.method public static readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/SparseArray;)V
    .registers 4

    .line 247
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 248
    :cond_4
    :goto_4
    const-string/jumbo v0, "user-state"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 249
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createUserStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 251
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getUserId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1b
    return-void
.end method

.method public static writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    .registers 5

    .line 131
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1b

    .line 135
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 136
    invoke-static {p0, v0, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePkgStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILjava/util/function/Function;)V

    goto :goto_b

    :cond_1b
    :goto_1b
    return-void
.end method

.method public static writePkgStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILjava/util/function/Function;)V
    .registers 7

    .line 269
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_8

    const/4 p3, 0x0

    goto :goto_e

    .line 271
    :cond_8
    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :goto_e
    if-nez p3, :cond_14

    .line 276
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getBackupSignatureHash()Ljava/lang/String;

    move-result-object p3

    .line 279
    :cond_14
    const-string/jumbo v1, "package-state"

    .line 280
    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    .line 281
    invoke-interface {v1, v2, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    .line 282
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    const-string v1, "hasAutoVerifyDomains"

    .line 284
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v2

    .line 283
    invoke-interface {v0, v1, v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    const-string/jumbo v1, "signature"

    .line 285
    invoke-interface {v0, v1, p3}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p3

    .line 286
    :try_start_41
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeStateMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V

    .line 287
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStates(Lcom/android/server/pm/SettingsXml$WriteSection;ILandroid/util/SparseArray;)V

    .line 288
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUriRelativeFilterGroupMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroupMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V
    :try_end_56
    .catchall {:try_start_41 .. :try_end_56} :catchall_5c

    if-eqz p3, :cond_5b

    .line 289
    invoke-interface {p3}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_5b
    return-void

    :catchall_5c
    move-exception p0

    if-eqz p3, :cond_67

    .line 279
    :try_start_5f
    invoke-interface {p3}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_67
    :goto_67
    throw p0
.end method

.method public static writeStateMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V
    .registers 8

    .line 316
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_43

    .line 320
    :cond_7
    const-string/jumbo v0, "state"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 321
    :try_start_e
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_3e

    .line 323
    const-string v3, "domain"

    invoke-interface {p0, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    const-string/jumbo v4, "name"

    .line 324
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    .line 325
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    .line 326
    invoke-interface {v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_3c

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :catchall_3c
    move-exception p1

    goto :goto_44

    :cond_3e
    if-eqz p0, :cond_43

    .line 328
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_43
    :goto_43
    return-void

    :goto_44
    if-eqz p0, :cond_4e

    .line 320
    :try_start_46
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_4e

    :catchall_4a
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4e
    :goto_4e
    throw p1
.end method

.method public static writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;ILjava/util/function/Function;)V
    .registers 12

    .line 96
    invoke-static {p0}, Lcom/android/server/pm/SettingsXml;->serializer(Lcom/android/modules/utils/TypedXmlSerializer;)Lcom/android/server/pm/SettingsXml$Serializer;

    move-result-object p0

    .line 97
    :try_start_4
    const-string v0, "domain-verifications"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_5e

    .line 103
    :try_start_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 105
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_25

    .line 107
    invoke-virtual {p1, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :catchall_23
    move-exception p1

    goto :goto_7c

    .line 110
    :cond_25
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_29
    if-ge v3, p1, :cond_37

    .line 112
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 115
    :cond_37
    const-string p1, "active"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p1
    :try_end_3d
    .catchall {:try_start_a .. :try_end_3d} :catchall_23

    .line 116
    :try_start_3d
    invoke-static {p1, v1, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_70

    if-eqz p1, :cond_45

    .line 117
    :try_start_42
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    .line 119
    :cond_45
    const-string/jumbo p1, "restored"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p1
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_23

    .line 121
    :try_start_4c
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p1, p2, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_64

    if-eqz p1, :cond_58

    .line 123
    :try_start_55
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_23

    :cond_58
    if-eqz v0, :cond_60

    .line 124
    :try_start_5a
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_60

    :catchall_5e
    move-exception p1

    goto :goto_87

    .line 125
    :cond_60
    :goto_60
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V

    return-void

    :catchall_64
    move-exception p2

    if-eqz p1, :cond_6f

    .line 119
    :try_start_67
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception p1

    :try_start_6c
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6f
    :goto_6f
    throw p2
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_23

    :catchall_70
    move-exception p2

    if-eqz p1, :cond_7b

    .line 115
    :try_start_73
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_77

    goto :goto_7b

    :catchall_77
    move-exception p1

    :try_start_78
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7b
    :goto_7b
    throw p2
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_23

    :goto_7c
    if-eqz v0, :cond_86

    .line 97
    :try_start_7e
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    goto :goto_86

    :catchall_82
    move-exception p2

    :try_start_83
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_86
    :goto_86
    throw p1
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_5e

    :goto_87
    if-eqz p0, :cond_91

    .line 96
    :try_start_89
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_91
    :goto_91
    throw p1
.end method

.method public static writeUriRelativeFilterGroup(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/content/UriRelativeFilterGroup;)V
    .registers 6

    .line 419
    const-string/jumbo v0, "uri-relative-filter-group"

    .line 420
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const-string v0, "action"

    .line 421
    invoke-virtual {p1}, Landroid/content/UriRelativeFilterGroup;->getAction()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 422
    :try_start_11
    invoke-virtual {p1}, Landroid/content/UriRelativeFilterGroup;->getUriRelativeFilters()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 423
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 424
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriRelativeFilter;

    .line 425
    const-string/jumbo v1, "uri-relative-filter"

    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    const-string/jumbo v2, "uri-part"

    .line 426
    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getUriPart()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    const-string/jumbo v2, "pattern-type"

    .line 427
    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getPatternType()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    const-string v2, "filter"

    .line 428
    invoke-virtual {v0}, Landroid/content/UriRelativeFilter;->getFilter()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_4f
    .catchall {:try_start_11 .. :try_end_4f} :catchall_50

    goto :goto_19

    :catchall_50
    move-exception p1

    goto :goto_58

    :cond_52
    if-eqz p0, :cond_57

    .line 430
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_57
    return-void

    :goto_58
    if-eqz p0, :cond_62

    .line 419
    :try_start_5a
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    throw p1
.end method

.method public static writeUriRelativeFilterGroupMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V
    .registers 5

    .line 390
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2e

    .line 393
    :cond_7
    const-string/jumbo v0, "uri-relative-filter-groups"

    .line 394
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const/4 v0, 0x0

    .line 395
    :goto_f
    :try_start_f
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 396
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {p0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroups(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/lang/String;Ljava/util/List;)V
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_27

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :catchall_27
    move-exception p1

    goto :goto_2f

    :cond_29
    if-eqz p0, :cond_2e

    .line 398
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_2e
    :goto_2e
    return-void

    :goto_2f
    if-eqz p0, :cond_39

    .line 393
    :try_start_31
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    throw p1
.end method

.method public static writeUriRelativeFilterGroups(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 404
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2e

    .line 407
    :cond_7
    const-string v0, "domain"

    .line 408
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const-string/jumbo v0, "name"

    .line 409
    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const/4 p1, 0x0

    .line 410
    :goto_15
    :try_start_15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_29

    .line 411
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriRelativeFilterGroup;

    invoke-static {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUriRelativeFilterGroup(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/content/UriRelativeFilterGroup;)V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_27

    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    :catchall_27
    move-exception p1

    goto :goto_2f

    :cond_29
    if-eqz p0, :cond_2e

    .line 413
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_2e
    :goto_2e
    return-void

    :goto_2f
    if-eqz p0, :cond_39

    .line 407
    :try_start_31
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    throw p1
.end method

.method public static writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    .registers 8

    .line 367
    const-string/jumbo v0, "user-state"

    .line 368
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const-string/jumbo v0, "userId"

    .line 369
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getUserId()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const-string v0, "allowLinkHandling"

    .line 371
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v1

    .line 370
    invoke-interface {p0, v0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 372
    :try_start_1c
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 374
    const-string v0, "enabled-hosts"

    .line 375
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_54

    .line 376
    :try_start_2c
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v1, :cond_4e

    .line 378
    const-string v3, "host"

    invoke-interface {v0, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    const-string/jumbo v4, "name"

    .line 379
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    .line 380
    invoke-interface {v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_49
    .catchall {:try_start_2c .. :try_end_49} :catchall_4c

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :catchall_4c
    move-exception p1

    goto :goto_56

    :cond_4e
    if-eqz v0, :cond_61

    .line 382
    :try_start_50
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_61

    :catchall_54
    move-exception p1

    goto :goto_67

    :goto_56
    if-eqz v0, :cond_60

    .line 374
    :try_start_58
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v0

    :try_start_5d
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_60
    :goto_60
    throw p1
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_54

    :cond_61
    :goto_61
    if-eqz p0, :cond_66

    .line 384
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_66
    return-void

    :goto_67
    if-eqz p0, :cond_71

    .line 367
    :try_start_69
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_71
    :goto_71
    throw p1
.end method

.method public static writeUserStates(Lcom/android/server/pm/SettingsXml$WriteSection;ILandroid/util/SparseArray;)V
    .registers 5

    .line 295
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_32

    .line 300
    :cond_7
    const-string/jumbo v1, "user-states"

    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_22

    const/4 p1, 0x0

    :goto_12
    if-ge p1, v0, :cond_2d

    .line 303
    :try_start_14
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :catchall_20
    move-exception p1

    goto :goto_33

    .line 306
    :cond_22
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-eqz p1, :cond_2d

    .line 308
    invoke-static {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_20

    :cond_2d
    if-eqz p0, :cond_32

    .line 311
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_32
    :goto_32
    return-void

    :goto_33
    if-eqz p0, :cond_3d

    .line 300
    :try_start_35
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    throw p1
.end method
