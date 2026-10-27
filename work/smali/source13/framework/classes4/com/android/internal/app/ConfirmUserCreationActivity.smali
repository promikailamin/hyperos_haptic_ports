.class public Lcom/android/internal/app/ConfirmUserCreationActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ConfirmUserCreationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CreateUser"

.field private static final blacklist USER_TYPE:Ljava/lang/String; = "android.os.usertype.full.SECONDARY"


# instance fields
.field private blacklist mAccountName:Ljava/lang/String;

.field private blacklist mAccountOptions:Landroid/os/PersistableBundle;

.field private blacklist mAccountType:Ljava/lang/String;

.field private blacklist mCanProceed:Z

.field private blacklist mUserManager:Landroid/os/UserManager;

.field private blacklist mUserName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private blacklist checkUserCreationRequirements()Ljava/lang/String;
    .registers 13

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "callingPackage":Ljava/lang/String;
    if-eqz v0, :cond_d5

    .line 96
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_f} :catch_cc

    .line 100
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 103
    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v4, "no_add_user"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_27

    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    .line 104
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_27

    :cond_25
    move v3, v2

    goto :goto_28

    :cond_27
    :goto_27
    move v3, v4

    .line 106
    .local v3, "cantCreateUser":Z
    :goto_28
    iget-object v5, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    const-string v6, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->canAddMoreUsers(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 108
    .local v5, "cantCreateAnyMoreUsers":Z
    new-instance v6, Landroid/accounts/Account;

    iget-object v7, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v6, "account":Landroid/accounts/Account;
    iget-object v7, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    if-eqz v7, :cond_59

    iget-object v7, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    if-eqz v7, :cond_59

    .line 110
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 111
    invoke-virtual {v8, v9, v10}, Landroid/os/UserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v7, v8

    if-eqz v7, :cond_59

    move v7, v4

    goto :goto_5a

    :cond_59
    move v7, v2

    .line 112
    .local v7, "accountExists":Z
    :goto_5a
    iput-boolean v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "appName":Ljava/lang/String;
    const/4 v9, 0x0

    if-eqz v3, :cond_6f

    .line 115
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 116
    return-object v9

    .line 117
    :cond_6f
    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    const/16 v11, 0x64

    invoke-direct {p0, v10, v11}, Lcom/android/internal/app/ConfirmUserCreationActivity;->isUserPropertyWithinLimit(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c1

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    .line 118
    const/16 v11, 0x1f4

    invoke-direct {p0, v10, v11}, Lcom/android/internal/app/ConfirmUserCreationActivity;->isUserPropertyWithinLimit(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c1

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 119
    invoke-direct {p0, v10, v11}, Lcom/android/internal/app/ConfirmUserCreationActivity;->isUserPropertyWithinLimit(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c1

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v10, :cond_98

    const/16 v11, 0x3e8

    .line 120
    invoke-virtual {v10, v11}, Landroid/os/PersistableBundle;->isBundleContentsWithinLengthLimit(I)Z

    move-result v10

    if-nez v10, :cond_98

    goto :goto_c1

    .line 125
    :cond_98
    const/4 v10, 0x2

    if-eqz v5, :cond_9f

    .line 126
    invoke-virtual {p0, v10}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 127
    return-object v9

    .line 128
    :cond_9f
    if-eqz v7, :cond_b1

    .line 129
    const v9, 0x1040983

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v2

    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    aput-object v2, v10, v4

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "message":Ljava/lang/String;
    goto :goto_c0

    .line 131
    .end local v2    # "message":Ljava/lang/String;
    :cond_b1
    const v9, 0x1040984

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v2

    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    aput-object v2, v10, v4

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .restart local v2    # "message":Ljava/lang/String;
    :goto_c0
    return-object v2

    .line 122
    .end local v2    # "message":Ljava/lang/String;
    :cond_c1
    :goto_c1
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 123
    const-string v2, "CreateUser"

    const-string v4, "User properties must not exceed their character limits"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-object v9

    .line 97
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "cantCreateUser":Z
    .end local v5    # "cantCreateAnyMoreUsers":Z
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "accountExists":Z
    .end local v8    # "appName":Ljava/lang/String;
    :catch_cc
    move-exception v1

    .line 98
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Cannot find the calling package"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    .end local v1    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d5
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "User Creation intent must be launched with startActivityForResult"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist isUserPropertyWithinLimit(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 154
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 139
    const/4 v1, -0x1

    if-ne p2, v1, :cond_37

    iget-boolean v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz v2, :cond_37

    .line 140
    const-string v2, "CreateUser"

    const-string v3, "Ok, creating user"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    const-string v5, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 142
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_27

    .line 143
    const-string v1, "Couldn\'t create user"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 145
    return-void

    .line 147
    :cond_27
    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/UserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 150
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 151
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.os.extra.USER_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    .line 62
    const-string v1, "android.os.extra.USER_ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    .line 63
    const-string v1, "android.os.extra.USER_ACCOUNT_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 64
    nop

    .line 65
    const-string v1, "android.os.extra.USER_ACCOUNT_OPTIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    .line 67
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    .line 69
    invoke-direct {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->checkUserCreationRequirements()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_47

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 73
    return-void

    .line 75
    :cond_47
    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 76
    .local v2, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 77
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 78
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    iget-boolean v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz v3, :cond_64

    .line 82
    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 83
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 85
    :cond_64
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setupAlert()V

    .line 86
    return-void
.end method
