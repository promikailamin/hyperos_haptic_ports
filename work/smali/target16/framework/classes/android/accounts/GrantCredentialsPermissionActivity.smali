.class public Landroid/accounts/GrantCredentialsPermissionActivity;
.super Landroid/app/Activity;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final greylist-max-o EXTRAS_ACCOUNT:Ljava/lang/String; = "account"

.field public static final greylist-max-o EXTRAS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "authTokenType"

.field public static final greylist-max-o EXTRAS_REQUESTING_UID:Ljava/lang/String; = "uid"

.field public static final greylist-max-o EXTRAS_RESPONSE:Ljava/lang/String; = "response"


# instance fields
.field private greylist-max-o mAccount:Landroid/accounts/Account;

.field private greylist-max-o mAuthTokenType:Ljava/lang/String;

.field private blacklist mCallingUid:I

.field protected greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mResultBundle:Landroid/os/Bundle;

.field private greylist-max-o mUid:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    return-void
.end method

.method private greylist-max-o getAccountLabel(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 9

    .line 151
    nop

    .line 152
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 153
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_32

    .line 154
    aget-object v4, v0, v3

    .line 155
    iget-object v5, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 157
    :try_start_1a
    iget-object v0, v4, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/accounts/GrantCredentialsPermissionActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iget v1, v4, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_26} :catch_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_26} :catch_27

    return-object p1

    .line 160
    :catch_27
    move-exception v0

    .line 161
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object p1

    .line 158
    :catch_2b
    move-exception v0

    .line 159
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object p1

    .line 153
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 165
    :cond_32
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    return-object p1
.end method

.method private greylist-max-o newPackageView(Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 169
    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 170
    const v1, 0x1020466

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object v0
.end method


# virtual methods
.method public whitelist finish()V
    .registers 4

    .line 201
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "response"

    const-class v2, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 203
    if-eqz v0, :cond_21

    .line 205
    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1b

    .line 206
    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    goto :goto_21

    .line 208
    :cond_1b
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 211
    :cond_21
    :goto_21
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 212
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 6

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_44

    goto :goto_3f

    .line 185
    :sswitch_8
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 186
    invoke-virtual {p0, v3}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    goto :goto_3f

    .line 177
    :sswitch_1a
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    iget v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 178
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 179
    const-string/jumbo v0, "retry"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 180
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 181
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 182
    nop

    .line 189
    :goto_3f
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 190
    return-void

    nop

    :sswitch_data_44
    .sparse-switch
        0x1020206 -> :sswitch_1a
        0x10202d3 -> :sswitch_8
    .end sparse-switch
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addSystemFlags(I)V

    .line 57
    const p1, 0x109008a

    invoke-virtual {p0, p1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setContentView(I)V

    .line 58
    const p1, 0x10404b5

    invoke-virtual {p0, p1}, Landroid/accounts/GrantCredentialsPermissionActivity;->setTitle(I)V

    .line 60
    const-string/jumbo p1, "layout_inflater"

    invoke-virtual {p0, p1}, Landroid/accounts/GrantCredentialsPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 63
    const/4 v0, 0x0

    if-nez p1, :cond_35

    .line 65
    invoke-virtual {p0, v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 66
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 67
    return-void

    .line 71
    :cond_35
    const-string v1, "account"

    const-class v2, Landroid/accounts/Account;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    .line 72
    const-string v1, "authTokenType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    .line 73
    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    .line 74
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 75
    iget v1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_118

    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    if-eqz v2, :cond_118

    if-nez v1, :cond_68

    goto/16 :goto_118

    .line 84
    :cond_68
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->getLaunchedFromUid()I

    move-result v2

    iput v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mCallingUid:I

    .line 86
    iget v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mCallingUid:I

    const/16 v3, 0x3e8

    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_85

    iget v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mCallingUid:I

    iget v3, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mUid:I

    if-eq v2, v3, :cond_85

    .line 87
    invoke-virtual {p0, v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 89
    return-void

    .line 94
    :cond_85
    :try_start_85
    iget-object v2, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v2}, Landroid/accounts/GrantCredentialsPermissionActivity;->getAccountLabel(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_85 .. :try_end_8b} :catch_110

    .line 100
    nop

    .line 102
    const v3, 0x1020223

    invoke-virtual {p0, v3}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 103
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    new-instance v4, Landroid/accounts/GrantCredentialsPermissionActivity$1;

    invoke-direct {v4, p0, v3}, Landroid/accounts/GrantCredentialsPermissionActivity$1;-><init>(Landroid/accounts/GrantCredentialsPermissionActivity;Landroid/widget/TextView;)V

    .line 126
    const-string v3, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget-object v5, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    .line 127
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget-object v5, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAuthTokenType:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/accounts/AccountManager;->getAuthTokenLabel(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 131
    :cond_b7
    const v3, 0x1020206

    invoke-virtual {p0, v3}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v3, 0x10202d3

    invoke-virtual {p0, v3}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v3, 0x1020467

    invoke-virtual {p0, v3}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 136
    array-length v4, v1

    move v5, v0

    :goto_d6
    if-ge v5, v4, :cond_f3

    aget-object v6, v1, v5

    .line 139
    :try_start_da
    invoke-virtual {p1, v6, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_e6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_da .. :try_end_e6} :catch_e7

    .line 142
    goto :goto_e9

    .line 140
    :catch_e7
    move-exception v7

    .line 141
    nop

    .line 143
    :goto_e9
    invoke-direct {p0, v6}, Landroid/accounts/GrantCredentialsPermissionActivity;->newPackageView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_d6

    .line 146
    :cond_f3
    const p1, 0x10201ce

    invoke-virtual {p0, p1}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const p1, 0x10201d1

    invoke-virtual {p0, p1}, Landroid/accounts/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void

    .line 95
    :catch_110
    move-exception p1

    .line 97
    invoke-virtual {p0, v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 98
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 99
    return-void

    .line 79
    :cond_118
    :goto_118
    invoke-virtual {p0, v0}, Landroid/accounts/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 80
    invoke-virtual {p0}, Landroid/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 81
    return-void
.end method

.method public final greylist-max-o setAccountAuthenticatorResult(Landroid/os/Bundle;)V
    .registers 2

    .line 193
    iput-object p1, p0, Landroid/accounts/GrantCredentialsPermissionActivity;->mResultBundle:Landroid/os/Bundle;

    .line 194
    return-void
.end method
