.class public Lmiui/accounts/MiuiChooseAccountTypeActivity;
.super Landroid/preference/PreferenceActivity;
.source "MiuiChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;,
        Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiChooseAccountType"


# instance fields
.field private blacklist mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTypeToAuthenticatorInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    return-void
.end method

.method private blacklist hasXiaomiAccount()Z
    .registers 5

    .line 121
    const-string v0, "account"

    invoke-virtual {p0, v0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 122
    .local v0, "am":Landroid/accounts/AccountManager;
    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 124
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v2, v1

    const/4 v3, 0x1

    if-lez v2, :cond_13

    .line 126
    return v3

    .line 129
    :cond_13
    const-string v2, "com.xiaomi.unactivated"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 131
    array-length v2, v1

    if-lez v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    return v3
.end method

.method private blacklist setResultAndFinish(Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "accountType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    .line 138
    const-string v1, "MiuiChooseAccountType"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooseAccountTypeActivity.setResultAndFinish: selected account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_36
    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->finish()V

    .line 143
    return-void
.end method


# virtual methods
.method protected blacklist buildTypeToAuthDescriptionMap()V
    .registers 14

    .line 146
    const-string v0, "MiuiChooseAccountType"

    invoke-direct {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->hasXiaomiAccount()Z

    move-result v1

    .line 147
    .local v1, "hasXiaomiAccount":Z
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 147
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    if-ge v5, v3, :cond_a5

    aget-object v6, v2, v5

    .line 149
    .local v6, "desc":Landroid/accounts/AuthenticatorDescription;
    const/4 v7, 0x0

    .line 150
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 152
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x5

    :try_start_18
    iget-object v10, v6, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v10, v4}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .line 153
    .local v10, "authContext":Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v6, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v11

    move-object v8, v11

    .line 154
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v6, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 155
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 156
    .local v11, "sequence":Ljava/lang/CharSequence;
    if-eqz v11, :cond_7e

    .line 157
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_3d} :catch_5f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_3d} :catch_3f

    move-object v7, v9

    goto :goto_7e

    .line 164
    .end local v10    # "authContext":Landroid/content/Context;
    .end local v11    # "sequence":Ljava/lang/CharSequence;
    :catch_3f
    move-exception v10

    .line 166
    .local v10, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No icon resource for account type "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 159
    .end local v10    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_5f
    move-exception v10

    .line 161
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 162
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No icon name for account type "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7e
    :goto_7e
    nop

    .line 175
    :cond_7f
    :goto_7f
    iget-object v9, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v10, "com.xiaomi.unactivated"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a1

    iget-object v9, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 176
    const-string v10, "com.xiaomi"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_95

    if-nez v1, :cond_a1

    .line 178
    :cond_95
    new-instance v9, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    invoke-direct {v9, v6, v7, v8}, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;-><init>(Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 179
    .local v9, "authInfo":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    iget-object v10, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    iget-object v11, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v6    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "authInfo":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    :cond_a1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11

    .line 182
    :cond_a5
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/high16 v0, 0x11120000

    invoke-virtual {p0, v0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->addPreferencesFromResource(I)V

    .line 47
    nop

    .line 48
    const-string v0, "pref_add_account"

    invoke-virtual {p0, v0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 51
    .local v0, "prefAddAccount":Landroid/preference/PreferenceCategory;
    const/4 v1, 0x0

    .line 52
    .local v1, "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "allowableAccountTypes"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "validAccountTypes":[Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_32

    .line 54
    new-instance v4, Ljava/util/HashSet;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    move-object v1, v4

    .line 56
    array-length v4, v2

    move v5, v3

    :goto_28
    if-ge v5, v4, :cond_32

    aget-object v6, v2, v5

    .line 57
    .local v6, "type":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v6    # "type":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 62
    :cond_32
    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->buildTypeToAuthDescriptionMap()V

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    .line 67
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    .line 68
    iget-object v4, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    .line 69
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 68
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 70
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 71
    .restart local v6    # "type":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    .line 72
    .local v7, "info":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    if-eqz v1, :cond_6d

    .line 73
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6d

    .line 74
    goto :goto_4c

    .line 76
    :cond_6d
    iget-object v8, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;>;"
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "info":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    goto :goto_4c

    .line 79
    :cond_73
    iget-object v4, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 80
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "errorMessage"

    const-string v5, "no allowable account types"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->finish()V

    .line 85
    return-void

    .line 88
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_98
    iget-object v4, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b1

    .line 89
    iget-object v4, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    iget-object v3, v3, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-direct {p0, v3}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    .line 90
    return-void

    .line 93
    :cond_b1
    iget-object v4, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    .line 94
    .local v5, "authInfo":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    new-instance v6, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    iget-object v7, v5, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v8, v5, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, v5, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->name:Ljava/lang/String;

    invoke-direct {v6, p0, v7, v8, v9}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 96
    .local v6, "preference":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    invoke-virtual {v6, v3}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->setPersistent(Z)V

    .line 97
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 98
    .end local v5    # "authInfo":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    .end local v6    # "preference":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    goto :goto_b7

    .line 99
    :cond_d7
    return-void
.end method

.method public whitelist onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .line 104
    instance-of v0, p2, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    if-eqz v0, :cond_36

    .line 105
    move-object v0, p2

    check-cast v0, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    .line 106
    .local v0, "pref":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    const/4 v1, 0x2

    const-string v2, "MiuiChooseAccountType"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add account of type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2a
    move-object v1, p2

    check-cast v1, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    .line 111
    .local v1, "provider":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    invoke-virtual {v1}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    .line 112
    const/4 v2, 0x1

    return v2

    .line 114
    .end local v0    # "pref":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    .end local v1    # "provider":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    :cond_36
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
