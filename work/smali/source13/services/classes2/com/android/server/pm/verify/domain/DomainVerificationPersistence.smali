.class public Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;
.super Ljava/lang/Object;
.source "DomainVerificationPersistence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
    }
.end annotation


# static fields
.field public static final ATTR_ALLOW_LINK_HANDLING:Ljava/lang/String; = "allowLinkHandling"

.field private static final ATTR_HAS_AUTO_VERIFY_DOMAINS:Ljava/lang/String; = "hasAutoVerifyDomains"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final ATTR_STATE:Ljava/lang/String; = "state"

.field public static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "DomainVerificationPersistence"

.field public static final TAG_ACTIVE:Ljava/lang/String; = "active"

.field public static final TAG_DOMAIN:Ljava/lang/String; = "domain"

.field public static final TAG_DOMAIN_VERIFICATIONS:Ljava/lang/String; = "domain-verifications"

.field public static final TAG_ENABLED_HOSTS:Ljava/lang/String; = "enabled-hosts"

.field public static final TAG_HOST:Ljava/lang/String; = "host"

.field public static final TAG_PACKAGE_STATE:Ljava/lang/String; = "package-state"

.field public static final TAG_RESTORED:Ljava/lang/String; = "restored"

.field private static final TAG_STATE:Ljava/lang/String; = "state"

.field public static final TAG_USER_STATE:Ljava/lang/String; = "user-state"

.field private static final TAG_USER_STATES:Ljava/lang/String; = "user-states"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createPkgStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .registers 18
    .param p0, "section"    # Lcom/android/server/pm/SettingsXml$ReadSection;

    .line 168
    move-object/from16 v0, p0

    const-string/jumbo v1, "packageName"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "id"

    invoke-interface {v0, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "idString":Ljava/lang/String;
    const-string v2, "hasAutoVerifyDomains"

    invoke-interface {v0, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 171
    .local v10, "hasAutoVerifyDomains":Z
    const-string/jumbo v2, "signature"

    invoke-interface {v0, v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 172
    .local v11, "signature":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_80

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_80

    .line 175
    :cond_29
    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v12

    .line 177
    .local v12, "id":Ljava/util/UUID;
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v13, v2

    .line 178
    .local v13, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v14, v2

    .line 180
    .local v14, "userStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v15

    .line 181
    .local v15, "child":Lcom/android/server/pm/SettingsXml$ChildSection;
    :goto_3d
    invoke-interface {v15}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 182
    invoke-interface {v15}, Lcom/android/server/pm/SettingsXml$ChildSection;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_82

    :cond_4f
    goto :goto_65

    :sswitch_50
    const-string/jumbo v4, "state"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v3, 0x0

    goto :goto_65

    :sswitch_5b
    const-string/jumbo v4, "user-states"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v3, 0x1

    :goto_65
    packed-switch v3, :pswitch_data_8c

    goto :goto_71

    .line 187
    :pswitch_69
    invoke-static {v15, v14}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/SparseArray;)V

    goto :goto_71

    .line 184
    :pswitch_6d
    invoke-static {v15, v13}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readDomainStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    .line 185
    nop

    .line 188
    :goto_71
    goto :goto_3d

    .line 192
    :cond_72
    new-instance v16, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object/from16 v2, v16

    move-object v3, v1

    move-object v4, v12

    move v5, v10

    move-object v6, v13

    move-object v7, v14

    move-object v8, v11

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    return-object v16

    .line 173
    .end local v12    # "id":Ljava/util/UUID;
    .end local v13    # "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "userStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    .end local v15    # "child":Lcom/android/server/pm/SettingsXml$ChildSection;
    :cond_80
    :goto_80
    const/4 v2, 0x0

    return-object v2

    :sswitch_data_82
    .sparse-switch
        -0x5df07dbc -> :sswitch_5b
        0x68ac491 -> :sswitch_50
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_69
    .end packed-switch
.end method

.method private static createUserStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .registers 6
    .param p0, "section"    # Lcom/android/server/pm/SettingsXml$ReadSection;

    .line 288
    const-string/jumbo v0, "userId"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, "userId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 290
    const/4 v1, 0x0

    return-object v1

    .line 293
    :cond_c
    const/4 v1, 0x0

    const-string v2, "allowLinkHandling"

    invoke-interface {p0, v2, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 294
    .local v1, "allowLinkHandling":Z
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 296
    .local v2, "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v3

    .line 297
    .local v3, "child":Lcom/android/server/pm/SettingsXml$ChildSection;
    :goto_1c
    const-string v4, "enabled-hosts"

    invoke-interface {v3, v4}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 298
    invoke-static {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readEnabledHosts(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArraySet;)V

    goto :goto_1c

    .line 301
    :cond_28
    new-instance v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-direct {v4, v0, v2, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    return-object v4
.end method

.method private static readDomainStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .registers 6
    .param p0, "stateSection"    # Lcom/android/server/pm/SettingsXml$ReadSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p1, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v0

    .line 210
    .local v0, "child":Lcom/android/server/pm/SettingsXml$ChildSection;
    :goto_4
    const-string v1, "domain"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 211
    const-string/jumbo v1, "name"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    const-string/jumbo v3, "state"

    invoke-interface {v0, v3, v2}, Lcom/android/server/pm/SettingsXml$ChildSection;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 213
    .local v2, "state":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "state":I
    goto :goto_4

    .line 215
    :cond_23
    return-void
.end method

.method private static readEnabledHosts(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArraySet;)V
    .registers 5
    .param p0, "section"    # Lcom/android/server/pm/SettingsXml$ReadSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 306
    .local p1, "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v0

    .line 307
    .local v0, "child":Lcom/android/server/pm/SettingsXml$ChildSection;
    :goto_4
    const-string v1, "host"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 308
    const-string/jumbo v1, "name"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "hostName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 310
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v1    # "hostName":Ljava/lang/String;
    :cond_1c
    goto :goto_4

    .line 313
    :cond_1d
    return-void
.end method

.method public static readFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
    .registers 7
    .param p0, "parentParser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 131
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 132
    .local v0, "active":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 134
    .local v1, "restored":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    invoke-static {p0}, Lcom/android/server/pm/SettingsXml;->parser(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/SettingsXml$ReadSection;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v2

    .line 135
    .local v2, "child":Lcom/android/server/pm/SettingsXml$ChildSection;
    :goto_12
    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 136
    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$ChildSection;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_4c

    :cond_24
    goto :goto_39

    :sswitch_25
    const-string/jumbo v5, "restored"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v4, 0x1

    goto :goto_39

    :sswitch_30
    const-string v5, "active"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v4, 0x0

    :goto_39
    packed-switch v4, :pswitch_data_56

    goto :goto_45

    .line 141
    :pswitch_3d
    invoke-static {v2, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_45

    .line 138
    :pswitch_41
    invoke-static {v2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    .line 139
    nop

    .line 142
    :goto_45
    goto :goto_12

    .line 146
    :cond_46
    new-instance v3, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-object v3

    :sswitch_data_4c
    .sparse-switch
        -0x54d080fa -> :sswitch_30
        -0x1410806a -> :sswitch_25
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3d
    .end packed-switch
.end method

.method private static readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .registers 5
    .param p0, "section"    # Lcom/android/server/pm/SettingsXml$ReadSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v0

    .line 152
    .local v0, "child":Lcom/android/server/pm/SettingsXml$ChildSection;
    :goto_4
    const-string/jumbo v1, "package-state"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 153
    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createPkgStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v1

    .line 154
    .local v1, "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    if-eqz v1, :cond_1a

    .line 156
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .end local v1    # "pkgState":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    :cond_1a
    goto :goto_4

    .line 159
    :cond_1b
    return-void
.end method

.method private static readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/SparseArray;)V
    .registers 5
    .param p0, "section"    # Lcom/android/server/pm/SettingsXml$ReadSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p1, "userStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object v0

    .line 199
    .local v0, "child":Lcom/android/server/pm/SettingsXml$ChildSection;
    :goto_4
    const-string/jumbo v1, "user-state"

    invoke-interface {v0, v1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 200
    invoke-static {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createUserStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v1

    .line 201
    .local v1, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    if-eqz v1, :cond_1a

    .line 202
    invoke-virtual {v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getUserId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    .end local v1    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :cond_1a
    goto :goto_4

    .line 205
    :cond_1b
    return-void
.end method

.method private static writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    .registers 6
    .param p0, "section"    # Lcom/android/server/pm/SettingsXml$WriteSection;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .local p3, "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    return-void

    .line 123
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 124
    .local v1, "state":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    invoke-static {p0, v1, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePkgStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILjava/util/function/Function;)V

    .line 125
    .end local v1    # "state":Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    goto :goto_b

    .line 126
    :cond_1b
    return-void
.end method

.method private static writePkgStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILjava/util/function/Function;)V
    .registers 9
    .param p0, "parentSection"    # Lcom/android/server/pm/SettingsXml$WriteSection;
    .param p1, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    .local p3, "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "packageName":Ljava/lang/String;
    if-nez p3, :cond_8

    .line 222
    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    .local v1, "signature":Ljava/lang/String;
    :goto_e
    if-nez v1, :cond_14

    .line 227
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getBackupSignatureHash()Ljava/lang/String;

    move-result-object v1

    .line 230
    :cond_14
    nop

    .line 231
    const-string/jumbo v2, "package-state"

    invoke-interface {p0, v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2

    .line 232
    const-string/jumbo v3, "packageName"

    invoke-interface {v2, v3, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2

    .line 233
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v2, v4, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2

    .line 235
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v3

    .line 234
    const-string v4, "hasAutoVerifyDomains"

    invoke-interface {v2, v4, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2

    .line 236
    const-string/jumbo v3, "signature"

    invoke-interface {v2, v3, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2

    .line 237
    .local v2, "ignored":Lcom/android/server/pm/SettingsXml$WriteSection;
    :try_start_42
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeStateMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V

    .line 238
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {p0, p2, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStates(Lcom/android/server/pm/SettingsXml$WriteSection;ILandroid/util/SparseArray;)V
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_56

    .line 239
    if-eqz v2, :cond_55

    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    .line 240
    .end local v2    # "ignored":Lcom/android/server/pm/SettingsXml$WriteSection;
    :cond_55
    return-void

    .line 230
    .restart local v2    # "ignored":Lcom/android/server/pm/SettingsXml$WriteSection;
    :catchall_56
    move-exception v3

    if-eqz v2, :cond_61

    :try_start_59
    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_61
    :goto_61
    throw v3
.end method

.method private static writeStateMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V
    .registers 9
    .param p0, "parentSection"    # Lcom/android/server/pm/SettingsXml$WriteSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    .local p1, "stateMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    return-void

    .line 270
    :cond_7
    const-string/jumbo v0, "state"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    .line 271
    .local v1, "stateSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    :try_start_e
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 272
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_13
    if-ge v3, v2, :cond_3c

    .line 273
    const-string v4, "domain"

    invoke-interface {v1, v4}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v4

    const-string/jumbo v5, "name"

    .line 274
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v4

    .line 275
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v0, v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v4

    .line 276
    invoke-interface {v4}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_42

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 278
    .end local v2    # "size":I
    .end local v3    # "index":I
    :cond_3c
    if-eqz v1, :cond_41

    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    .line 279
    .end local v1    # "stateSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    :cond_41
    return-void

    .line 270
    .restart local v1    # "stateSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    :catchall_42
    move-exception v0

    if-eqz v1, :cond_4d

    :try_start_45
    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw v0
.end method

.method public static writeToXml(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;ILjava/util/function/Function;)V
    .registers 14
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    .local p1, "attached":Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;, "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .local p2, "pending":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .local p3, "restored":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .local p5, "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/server/pm/SettingsXml;->serializer(Landroid/util/TypedXmlSerializer;)Lcom/android/server/pm/SettingsXml$Serializer;

    move-result-object v0

    .line 85
    .local v0, "serializer":Lcom/android/server/pm/SettingsXml$Serializer;
    :try_start_4
    const-string v1, "domain-verifications"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_85

    .line 91
    .local v1, "ignored":Lcom/android/server/pm/SettingsXml$WriteSection;
    :try_start_a
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 93
    .local v2, "active":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v3

    .line 94
    .local v3, "attachedSize":I
    const/4 v4, 0x0

    .local v4, "attachedIndex":I
    :goto_14
    if-ge v4, v3, :cond_22

    .line 95
    invoke-virtual {p1, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 98
    .end local v4    # "attachedIndex":I
    :cond_22
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 99
    .local v4, "pendingSize":I
    const/4 v5, 0x0

    .local v5, "pendingIndex":I
    :goto_27
    if-ge v5, v4, :cond_35

    .line 100
    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 103
    .end local v5    # "pendingIndex":I
    :cond_35
    const-string v5, "active"

    invoke-virtual {v0, v5}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v5
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_79

    .line 104
    .local v5, "activeSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    :try_start_3b
    invoke-static {v5, v2, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_6d

    .line 105
    if-eqz v5, :cond_43

    :try_start_40
    invoke-interface {v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    .line 107
    .end local v5    # "activeSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    :cond_43
    const-string/jumbo v5, "restored"

    invoke-virtual {v0, v5}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v5
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_79

    .line 109
    .local v5, "restoredSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    :try_start_4a
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v5, v6, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_61

    .line 111
    if-eqz v5, :cond_56

    :try_start_53
    invoke-interface {v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_79

    .line 112
    .end local v2    # "active":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .end local v3    # "attachedSize":I
    .end local v4    # "pendingSize":I
    .end local v5    # "restoredSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    :cond_56
    if-eqz v1, :cond_5b

    :try_start_58
    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_85

    .line 113
    .end local v1    # "ignored":Lcom/android/server/pm/SettingsXml$WriteSection;
    :cond_5b
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V

    .line 114
    .end local v0    # "serializer":Lcom/android/server/pm/SettingsXml$Serializer;
    :cond_60
    return-void

    .line 107
    .restart local v0    # "serializer":Lcom/android/server/pm/SettingsXml$Serializer;
    .restart local v1    # "ignored":Lcom/android/server/pm/SettingsXml$WriteSection;
    .restart local v2    # "active":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .restart local v3    # "attachedSize":I
    .restart local v4    # "pendingSize":I
    .restart local v5    # "restoredSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    :catchall_61
    move-exception v6

    if-eqz v5, :cond_6c

    :try_start_64
    invoke-interface {v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception v7

    :try_start_69
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "serializer":Lcom/android/server/pm/SettingsXml$Serializer;
    .end local v1    # "ignored":Lcom/android/server/pm/SettingsXml$WriteSection;
    .end local p0    # "xmlSerializer":Landroid/util/TypedXmlSerializer;
    .end local p1    # "attached":Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;, "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .end local p2    # "pending":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .end local p3    # "restored":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .end local p4    # "userId":I
    .end local p5    # "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6c
    :goto_6c
    throw v6
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_79

    .line 103
    .restart local v0    # "serializer":Lcom/android/server/pm/SettingsXml$Serializer;
    .restart local v1    # "ignored":Lcom/android/server/pm/SettingsXml$WriteSection;
    .local v5, "activeSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    .restart local p0    # "xmlSerializer":Landroid/util/TypedXmlSerializer;
    .restart local p1    # "attached":Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;, "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .restart local p2    # "pending":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .restart local p3    # "restored":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .restart local p4    # "userId":I
    .restart local p5    # "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_6d
    move-exception v6

    if-eqz v5, :cond_78

    :try_start_70
    invoke-interface {v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception v7

    :try_start_75
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "serializer":Lcom/android/server/pm/SettingsXml$Serializer;
    .end local v1    # "ignored":Lcom/android/server/pm/SettingsXml$WriteSection;
    .end local p0    # "xmlSerializer":Landroid/util/TypedXmlSerializer;
    .end local p1    # "attached":Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;, "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .end local p2    # "pending":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .end local p3    # "restored":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .end local p4    # "userId":I
    .end local p5    # "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_78
    :goto_78
    throw v6
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_79

    .line 85
    .end local v2    # "active":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .end local v3    # "attachedSize":I
    .end local v4    # "pendingSize":I
    .end local v5    # "activeSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    .restart local v0    # "serializer":Lcom/android/server/pm/SettingsXml$Serializer;
    .restart local v1    # "ignored":Lcom/android/server/pm/SettingsXml$WriteSection;
    .restart local p0    # "xmlSerializer":Landroid/util/TypedXmlSerializer;
    .restart local p1    # "attached":Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;, "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .restart local p2    # "pending":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .restart local p3    # "restored":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .restart local p4    # "userId":I
    .restart local p5    # "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_79
    move-exception v2

    if-eqz v1, :cond_84

    :try_start_7c
    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_84

    :catchall_80
    move-exception v3

    :try_start_81
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "serializer":Lcom/android/server/pm/SettingsXml$Serializer;
    .end local p0    # "xmlSerializer":Landroid/util/TypedXmlSerializer;
    .end local p1    # "attached":Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;, "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .end local p2    # "pending":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .end local p3    # "restored":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .end local p4    # "userId":I
    .end local p5    # "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_84
    :goto_84
    throw v2
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_85

    .line 84
    .end local v1    # "ignored":Lcom/android/server/pm/SettingsXml$WriteSection;
    .restart local v0    # "serializer":Lcom/android/server/pm/SettingsXml$Serializer;
    .restart local p0    # "xmlSerializer":Landroid/util/TypedXmlSerializer;
    .restart local p1    # "attached":Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;, "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .restart local p2    # "pending":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .restart local p3    # "restored":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;>;"
    .restart local p4    # "userId":I
    .restart local p5    # "pkgNameToSignature":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_85
    move-exception v1

    if-eqz v0, :cond_90

    :try_start_88
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    throw v1
.end method

.method private static writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    .registers 10
    .param p0, "parentSection"    # Lcom/android/server/pm/SettingsXml$WriteSection;
    .param p1, "userState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    nop

    .line 318
    const-string/jumbo v0, "user-state"

    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    .line 319
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getUserId()I

    move-result v1

    const-string/jumbo v2, "userId"

    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    .line 321
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v1

    .line 320
    const-string v2, "allowLinkHandling"

    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    .line 322
    .local v0, "section":Lcom/android/server/pm/SettingsXml$WriteSection;
    :try_start_1d
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object v1

    .line 323
    .local v1, "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 324
    const-string v2, "enabled-hosts"

    .line 325
    invoke-interface {v0, v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_65

    .line 326
    .local v2, "enabledHostsSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    :try_start_2d
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 327
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_32
    if-ge v4, v3, :cond_4d

    .line 328
    const-string v5, "host"

    invoke-interface {v2, v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v5

    const-string/jumbo v6, "name"

    .line 329
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v5

    .line 330
    invoke-interface {v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_53

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 332
    .end local v3    # "size":I
    .end local v4    # "index":I
    :cond_4d
    if-eqz v2, :cond_5f

    :try_start_4f
    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_65

    goto :goto_5f

    .line 324
    :catchall_53
    move-exception v3

    if-eqz v2, :cond_5e

    :try_start_56
    invoke-interface {v2}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v4

    :try_start_5b
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "section":Lcom/android/server/pm/SettingsXml$WriteSection;
    .end local p0    # "parentSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    .end local p1    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :cond_5e
    :goto_5e
    throw v3
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_65

    .line 334
    .end local v1    # "enabledHosts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "enabledHostsSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    .restart local v0    # "section":Lcom/android/server/pm/SettingsXml$WriteSection;
    .restart local p0    # "parentSection":Lcom/android/server/pm/SettingsXml$WriteSection;
    .restart local p1    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :cond_5f
    :goto_5f
    if-eqz v0, :cond_64

    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    .line 335
    .end local v0    # "section":Lcom/android/server/pm/SettingsXml$WriteSection;
    :cond_64
    return-void

    .line 317
    .restart local v0    # "section":Lcom/android/server/pm/SettingsXml$WriteSection;
    :catchall_65
    move-exception v1

    if-eqz v0, :cond_70

    :try_start_68
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    throw v1
.end method

.method private static writeUserStates(Lcom/android/server/pm/SettingsXml$WriteSection;ILandroid/util/SparseArray;)V
    .registers 7
    .param p0, "parentSection"    # Lcom/android/server/pm/SettingsXml$WriteSection;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "I",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    .local p2, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 246
    .local v0, "size":I
    if-nez v0, :cond_7

    .line 247
    return-void

    .line 250
    :cond_7
    const-string/jumbo v1, "user-states"

    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    .line 251
    .local v1, "section":Lcom/android/server/pm/SettingsXml$WriteSection;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_21

    .line 252
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_12
    if-ge v2, v0, :cond_20

    .line 253
    :try_start_14
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-static {v1, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .end local v2    # "index":I
    :cond_20
    goto :goto_2c

    .line 256
    :cond_21
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 257
    .local v2, "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    if-eqz v2, :cond_2c

    .line 258
    invoke-static {v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_32

    .line 261
    .end local v2    # "userState":Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    :cond_2c
    :goto_2c
    if-eqz v1, :cond_31

    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    .line 262
    .end local v1    # "section":Lcom/android/server/pm/SettingsXml$WriteSection;
    :cond_31
    return-void

    .line 250
    .restart local v1    # "section":Lcom/android/server/pm/SettingsXml$WriteSection;
    :catchall_32
    move-exception v2

    if-eqz v1, :cond_3d

    :try_start_35
    invoke-interface {v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    throw v2
.end method
