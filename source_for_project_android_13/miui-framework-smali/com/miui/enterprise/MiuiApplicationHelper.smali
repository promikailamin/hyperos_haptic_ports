.class public Lcom/miui/enterprise/MiuiApplicationHelper;
.super Lcom/miui/enterprise/ApplicationHelper$Stub;
.source "MiuiApplicationHelper.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/miui/enterprise/ApplicationHelper$Stub;-><init>()V

    return-void
.end method

.method private static blacklist getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 118
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 119
    return v1

    .line 121
    :cond_6
    invoke-static {p1}, Lcom/miui/enterprise/ApplicationHelper;->buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getUserId()I

    move-result v2

    .line 121
    invoke-static {p0, v0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private static blacklist getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 110
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 111
    return v1

    .line 113
    :cond_6
    if-gez p2, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, p2

    :goto_b
    move p2, v0

    .line 114
    invoke-static {p1}, Lcom/miui/enterprise/ApplicationHelper;->buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist allowAutoStart(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 89
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 90
    return v1

    .line 92
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 93
    return v1

    .line 95
    :cond_d
    invoke-static {p1, p2}, Lcom/miui/enterprise/MiuiApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public whitelist allowAutoStart(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 100
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 101
    return v1

    .line 103
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 104
    return v1

    .line 106
    :cond_d
    invoke-static {p1, p2, p3}, Lcom/miui/enterprise/MiuiApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public whitelist checkEnterprisePackageRestriction(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 162
    const-string v0, "ep_app_restriction_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, "restrictionMode":I
    packed-switch v0, :pswitch_data_2e

    .line 176
    return v1

    .line 168
    :pswitch_b
    nop

    .line 169
    const-string v1, "ep_app_black_list"

    invoke-static {p1, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 170
    .local v1, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 172
    .end local v1    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1b
    nop

    .line 173
    const-string v1, "ep_app_white_list"

    invoke-static {p1, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 166
    .end local v1    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2d
    return v1

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_1b
        :pswitch_b
    .end packed-switch
.end method

.method public whitelist getAPNActiveMode()I
    .registers 4

    .line 194
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 195
    return v1

    .line 197
    :cond_6
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "ep_apn_switch_mode"

    invoke-static {v0, v2, v1, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public whitelist getTrustedAppStores(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_9

    .line 137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 139
    :cond_9
    nop

    .line 140
    invoke-static {}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getUserId()I

    move-result v0

    const-string v1, "ep_trusted_app_stores"

    invoke-static {p1, v1, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTrustedAppStores(Landroid/content/Context;I)Ljava/util/List;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_9

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 130
    :cond_9
    nop

    .line 131
    const-string v0, "ep_trusted_app_stores"

    invoke-static {p1, v0, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getXSpaceBlackApps(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_9

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 188
    :cond_9
    const-string v0, "ep_app_black_xsapce"

    invoke-static {p1, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isTrustedAppStoresEnabled(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 154
    return v1

    .line 156
    :cond_6
    nop

    .line 157
    invoke-static {}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getUserId()I

    move-result v0

    .line 156
    const-string v2, "ep_trusted_app_store_enabled"

    invoke-static {p1, v2, v1, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    move v1, v2

    :cond_15
    return v1
.end method

.method public whitelist isTrustedAppStoresEnabled(Landroid/content/Context;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 145
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 146
    return v1

    .line 148
    :cond_6
    const-string v0, "ep_trusted_app_store_enabled"

    invoke-static {p1, v0, v1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method

.method public whitelist protectedFromDelete(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 45
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 46
    return v1

    .line 48
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 49
    return v1

    .line 51
    :cond_d
    invoke-static {p1, p2}, Lcom/miui/enterprise/MiuiApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public whitelist protectedFromDelete(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 56
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 57
    return v1

    .line 59
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 60
    return v1

    .line 62
    :cond_d
    invoke-static {p1, p2, p3}, Lcom/miui/enterprise/MiuiApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public whitelist shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 67
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 68
    return v1

    .line 70
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 71
    return v1

    .line 73
    :cond_d
    invoke-static {p1, p2}, Lcom/miui/enterprise/MiuiApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public whitelist shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 78
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 79
    return v1

    .line 81
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 82
    return v1

    .line 84
    :cond_d
    invoke-static {p1, p2, p3}, Lcom/miui/enterprise/MiuiApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public whitelist shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/miui/enterprise/settings/EnterpriseSettings;->isBootComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 21
    return v1

    .line 23
    :cond_8
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_d

    .line 24
    return v1

    .line 26
    :cond_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27
    return v1

    .line 29
    :cond_14
    invoke-static {p1, p2}, Lcom/miui/enterprise/MiuiApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method public whitelist shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 34
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 35
    return v1

    .line 37
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    return v1

    .line 40
    :cond_d
    invoke-static {p1, p2, p3}, Lcom/miui/enterprise/MiuiApplicationHelper;->getPackageFlag(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_16

    move v1, v2

    :cond_16
    return v1
.end method
