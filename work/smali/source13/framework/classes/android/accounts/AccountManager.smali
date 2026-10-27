.class public Landroid/accounts/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;,
        Landroid/accounts/AccountManager$Future2Task;,
        Landroid/accounts/AccountManager$BaseFutureTask;,
        Landroid/accounts/AccountManager$AmsTask;,
        Landroid/accounts/AccountManager$AccountKeyData;,
        Landroid/accounts/AccountManager$UserIdPackage;,
        Landroid/accounts/AccountManager$AccountVisibility;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACCOUNT_ACCESS_TOKEN_TYPE:Ljava/lang/String; = "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

.field public static final whitelist ACTION_ACCOUNT_REMOVED:Ljava/lang/String; = "android.accounts.action.ACCOUNT_REMOVED"

.field public static final whitelist ACTION_AUTHENTICATOR_INTENT:Ljava/lang/String; = "android.accounts.AccountAuthenticator"

.field public static final greylist-max-o ACTION_VISIBLE_ACCOUNTS_CHANGED:Ljava/lang/String; = "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

.field public static final whitelist AUTHENTICATOR_ATTRIBUTES_NAME:Ljava/lang/String; = "account-authenticator"

.field public static final whitelist AUTHENTICATOR_META_DATA_NAME:Ljava/lang/String; = "android.accounts.AccountAuthenticator"

.field public static final blacklist CACHE_ACCOUNTS_DATA_SIZE:I = 0x4

.field public static final blacklist CACHE_KEY_ACCOUNTS_DATA_PROPERTY:Ljava/lang/String; = "cache_key.system_server.accounts_data"

.field public static final blacklist CACHE_KEY_USER_DATA_PROPERTY:Ljava/lang/String; = "cache_key.system_server.account_user_data"

.field public static final blacklist CACHE_USER_DATA_SIZE:I = 0x4

.field public static final whitelist ERROR_CODE_BAD_ARGUMENTS:I = 0x7

.field public static final whitelist ERROR_CODE_BAD_AUTHENTICATION:I = 0x9

.field public static final whitelist ERROR_CODE_BAD_REQUEST:I = 0x8

.field public static final whitelist ERROR_CODE_CANCELED:I = 0x4

.field public static final whitelist ERROR_CODE_INVALID_RESPONSE:I = 0x5

.field public static final greylist-max-o ERROR_CODE_MANAGEMENT_DISABLED_FOR_ACCOUNT_TYPE:I = 0x65

.field public static final whitelist ERROR_CODE_NETWORK_ERROR:I = 0x3

.field public static final whitelist ERROR_CODE_REMOTE_EXCEPTION:I = 0x1

.field public static final whitelist ERROR_CODE_UNSUPPORTED_OPERATION:I = 0x6

.field public static final greylist-max-o ERROR_CODE_USER_RESTRICTED:I = 0x64

.field public static final whitelist KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field public static final greylist-max-o KEY_ACCOUNT_ACCESS_ID:Ljava/lang/String; = "accountAccessId"

.field public static final whitelist KEY_ACCOUNT_AUTHENTICATOR_RESPONSE:Ljava/lang/String; = "accountAuthenticatorResponse"

.field public static final whitelist KEY_ACCOUNT_MANAGER_RESPONSE:Ljava/lang/String; = "accountManagerResponse"

.field public static final whitelist KEY_ACCOUNT_NAME:Ljava/lang/String; = "authAccount"

.field public static final whitelist KEY_ACCOUNT_SESSION_BUNDLE:Ljava/lang/String; = "accountSessionBundle"

.field public static final whitelist KEY_ACCOUNT_STATUS_TOKEN:Ljava/lang/String; = "accountStatusToken"

.field public static final whitelist KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final whitelist KEY_ANDROID_PACKAGE_NAME:Ljava/lang/String; = "androidPackageName"

.field public static final whitelist KEY_AUTHENTICATOR_TYPES:Ljava/lang/String; = "authenticator_types"

.field public static final whitelist KEY_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field public static final whitelist KEY_AUTH_FAILED_MESSAGE:Ljava/lang/String; = "authFailedMessage"

.field public static final blacklist KEY_AUTH_FAILED_NOTIFIED:Ljava/lang/String; = "authFailedNotified"

.field public static final whitelist KEY_AUTH_TOKEN_LABEL:Ljava/lang/String; = "authTokenLabelKey"

.field public static final whitelist KEY_BOOLEAN_RESULT:Ljava/lang/String; = "booleanResult"

.field public static final whitelist KEY_CALLER_PID:Ljava/lang/String; = "callerPid"

.field public static final whitelist KEY_CALLER_UID:Ljava/lang/String; = "callerUid"

.field public static final whitelist KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final whitelist KEY_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field public static final whitelist KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final whitelist KEY_LAST_AUTHENTICATED_TIME:Ljava/lang/String; = "lastAuthenticatedTime"

.field public static final greylist-max-o KEY_NOTIFY_ON_FAILURE:Ljava/lang/String; = "notifyOnAuthFailure"

.field public static final whitelist KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final whitelist KEY_USERDATA:Ljava/lang/String; = "userdata"

.field public static final whitelist LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_CHANGED"

.field public static final whitelist PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE:Ljava/lang/String; = "android:accounts:key_legacy_not_visible"

.field public static final whitelist PACKAGE_NAME_KEY_LEGACY_VISIBLE:Ljava/lang/String; = "android:accounts:key_legacy_visible"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AccountManager"

.field public static final whitelist VISIBILITY_NOT_VISIBLE:I = 0x3

.field public static final whitelist VISIBILITY_UNDEFINED:I = 0x0

.field public static final whitelist VISIBILITY_USER_MANAGED_NOT_VISIBLE:I = 0x4

.field public static final whitelist VISIBILITY_USER_MANAGED_VISIBLE:I = 0x2

.field public static final whitelist VISIBILITY_VISIBLE:I = 0x1


# instance fields
.field private final greylist-max-o mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field blacklist mAccountsForUserCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/accounts/AccountManager$UserIdPackage;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mAccountsUpdatedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/OnAccountsUpdateListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mAccountsUpdatedListenersTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/OnAccountsUpdateListener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist mContext:Landroid/content/Context;

.field private final greylist-max-o mMainHandler:Landroid/os/Handler;

.field private final greylist-max-o mService:Landroid/accounts/IAccountManager;

.field blacklist mUserDataCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/accounts/AccountManager$AccountKeyData;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccountsUpdatedListeners(Landroid/accounts/AccountManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAccountsUpdatedListenersTypes(Landroid/accounts/AccountManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/accounts/AccountManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/accounts/AccountManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;
    .registers 1

    iget-object p0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mconvertErrorToException(Landroid/accounts/AccountManager;ILjava/lang/String;)Ljava/lang/Exception;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManager;->convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mensureNotOnMainThread(Landroid/accounts/AccountManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/accounts/AccountManager;->ensureNotOnMainThread()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAccountByTypeAndFeatures(Landroid/accounts/AccountManager;Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManager;->getAccountByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostToHandler(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostToHandler(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/accounts/IAccountManager;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/accounts/IAccountManager;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Landroid/accounts/AccountManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.system_server.accounts_data"

    invoke-direct {v0, p0, v1, v2}, Landroid/accounts/AccountManager$1;-><init>(Landroid/accounts/AccountManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsForUserCache:Landroid/app/PropertyInvalidatedCache;

    .line 458
    new-instance v0, Landroid/accounts/AccountManager$2;

    const-string v2, "cache_key.system_server.account_user_data"

    invoke-direct {v0, p0, v1, v2}, Landroid/accounts/AccountManager$2;-><init>(Landroid/accounts/AccountManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mUserDataCache:Landroid/app/PropertyInvalidatedCache;

    .line 2994
    nop

    .line 2995
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    .line 2997
    nop

    .line 2998
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    .line 3005
    new-instance v0, Landroid/accounts/AccountManager$20;

    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$20;-><init>(Landroid/accounts/AccountManager;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    iput-object p1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 553
    iput-object p2, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    .line 554
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    .line 555
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/accounts/IAccountManager;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/accounts/IAccountManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Landroid/accounts/AccountManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.system_server.accounts_data"

    invoke-direct {v0, p0, v1, v2}, Landroid/accounts/AccountManager$1;-><init>(Landroid/accounts/AccountManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsForUserCache:Landroid/app/PropertyInvalidatedCache;

    .line 458
    new-instance v0, Landroid/accounts/AccountManager$2;

    const-string v2, "cache_key.system_server.account_user_data"

    invoke-direct {v0, p0, v1, v2}, Landroid/accounts/AccountManager$2;-><init>(Landroid/accounts/AccountManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mUserDataCache:Landroid/app/PropertyInvalidatedCache;

    .line 2994
    nop

    .line 2995
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    .line 2997
    nop

    .line 2998
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    .line 3005
    new-instance v0, Landroid/accounts/AccountManager$20;

    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$20;-><init>(Landroid/accounts/AccountManager;)V

    iput-object v0, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 562
    iput-object p1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 563
    iput-object p2, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    .line 564
    iput-object p3, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    .line 565
    return-void
.end method

.method private greylist-max-o convertErrorToException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 2659
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 2660
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2663
    :cond_9
    const/4 v0, 0x6

    if-ne p1, v0, :cond_12

    .line 2664
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2667
    :cond_12
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1b

    .line 2668
    new-instance v0, Landroid/accounts/AuthenticatorException;

    invoke-direct {v0, p2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2671
    :cond_1b
    const/4 v0, 0x7

    if-ne p1, v0, :cond_24

    .line 2672
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 2675
    :cond_24
    new-instance v0, Landroid/accounts/AuthenticatorException;

    invoke-direct {v0, p2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist-max-o ensureNotOnMainThread()V
    .registers 5

    .line 2310
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2311
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_2a

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2a

    .line 2312
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2314
    .local v1, "exception":Ljava/lang/IllegalStateException;
    const-string v2, "AccountManager"

    const-string v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2316
    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_29

    goto :goto_2a

    .line 2317
    :cond_29
    throw v1

    .line 2320
    .end local v1    # "exception":Ljava/lang/IllegalStateException;
    :cond_2a
    :goto_2a
    return-void
.end method

.method public static whitelist get(Landroid/content/Context;)Landroid/accounts/AccountManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 597
    if-eqz p0, :cond_b

    .line 598
    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    return-object v0

    .line 597
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getAccountByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .registers 13
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "features"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 2680
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    new-instance v7, Landroid/accounts/AccountManager$19;

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$19;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2687
    invoke-virtual {v7}, Landroid/accounts/AccountManager$19;->start()Landroid/accounts/AccountManagerFuture;

    .line 2688
    return-void
.end method

.method public static blacklist invalidateLocalAccountUserDataCaches()V
    .registers 1

    .line 3520
    const-string v0, "cache_key.system_server.account_user_data"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3521
    return-void
.end method

.method public static blacklist invalidateLocalAccountsDataCaches()V
    .registers 1

    .line 3503
    const-string v0, "cache_key.system_server.accounts_data"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3504
    return-void
.end method

.method public static whitelist newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 15
    .param p0, "selectedAccount"    # Landroid/accounts/Account;
    .param p2, "allowableAccountTypes"    # [Ljava/lang/String;
    .param p3, "alwaysPromptForAccount"    # Z
    .param p4, "descriptionOverrideText"    # Ljava/lang/String;
    .param p5, "addAccountAuthTokenType"    # Ljava/lang/String;
    .param p6, "addAccountRequiredFeatures"    # [Ljava/lang/String;
    .param p7, "addAccountOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2920
    .local p1, "allowableAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 11
    .param p0, "selectedAccount"    # Landroid/accounts/Account;
    .param p2, "allowableAccountTypes"    # [Ljava/lang/String;
    .param p3, "descriptionOverrideText"    # Ljava/lang/String;
    .param p4, "addAccountAuthTokenType"    # Ljava/lang/String;
    .param p5, "addAccountRequiredFeatures"    # [Ljava/lang/String;
    .param p6, "addAccountOptions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 2972
    .local p1, "allowableAccounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2974
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040234

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2973
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 2975
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2976
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2975
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2977
    nop

    .line 2978
    if-nez p1, :cond_24

    const/4 v2, 0x0

    goto :goto_29

    :cond_24
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2977
    :goto_29
    const-string v3, "allowableAccounts"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2979
    const-string v2, "allowableAccountTypes"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2981
    const-string v2, "addAccountOptions"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2983
    const-string/jumbo v2, "selectedAccount"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2984
    const-string v2, "descriptionTextOverride"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2986
    const-string v2, "authTokenType"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2988
    const-string v2, "addAccountRequiredFeatures"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2991
    return-object v0
.end method

.method private greylist-max-o postToHandler(Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 2324
    .local p2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local p3, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    if-nez p1, :cond_5

    iget-object v0, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    move-object p1, v0

    .line 2325
    new-instance v0, Landroid/accounts/AccountManager$17;

    invoke-direct {v0, p0, p2, p3}, Landroid/accounts/AccountManager$17;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2331
    return-void
.end method

.method private greylist-max-o postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p3, "accounts"    # [Landroid/accounts/Account;

    .line 2335
    array-length v0, p3

    new-array v0, v0, [Landroid/accounts/Account;

    .line 2338
    .local v0, "accountsCopy":[Landroid/accounts/Account;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2339
    if-nez p1, :cond_d

    iget-object v1, p0, Landroid/accounts/AccountManager;->mMainHandler:Landroid/os/Handler;

    goto :goto_e

    :cond_d
    move-object v1, p1

    :goto_e
    move-object p1, v1

    .line 2340
    new-instance v1, Landroid/accounts/AccountManager$18;

    invoke-direct {v1, p0, p2, v0}, Landroid/accounts/AccountManager$18;-><init>(Landroid/accounts/AccountManager;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2369
    return-void
.end method

.method public static greylist-max-o sanitizeResult(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p0, "result"    # Landroid/os/Bundle;

    .line 571
    if-eqz p0, :cond_1f

    .line 572
    const-string v0, "authtoken"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 573
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 574
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 575
    .local v1, "newResult":Landroid/os/Bundle;
    const-string v2, "<omitted for logging purposes>"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-object v1

    .line 579
    .end local v1    # "newResult":Landroid/os/Bundle;
    :cond_1f
    return-object p0
.end method


# virtual methods
.method public whitelist addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 22
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "requiredFeatures"    # [Ljava/lang/String;
    .param p4, "addAccountOptions"    # Landroid/os/Bundle;
    .param p5, "activity"    # Landroid/app/Activity;
    .param p7, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1976
    .local p6, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    move-object v10, p0

    move-object/from16 v11, p4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, v10, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1977
    const/16 v0, 0x1d

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1978
    if-eqz p1, :cond_4a

    .line 1979
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    .line 1980
    .local v12, "optionsIn":Landroid/os/Bundle;
    if-eqz v11, :cond_25

    .line 1981
    invoke-virtual {v12, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1983
    :cond_25
    iget-object v0, v10, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidPackageName"

    invoke-virtual {v12, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    new-instance v13, Landroid/accounts/AccountManager$11;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Landroid/accounts/AccountManager$11;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1992
    invoke-virtual {v13}, Landroid/accounts/AccountManager$11;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 1985
    return-object v0

    .line 1978
    .end local v12    # "optionsIn":Landroid/os/Bundle;
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1994
    :cond_52
    iget-object v0, v10, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 1995
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    .line 1994
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .registers 24
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "requiredFeatures"    # [Ljava/lang/String;
    .param p4, "addAccountOptions"    # Landroid/os/Bundle;
    .param p5, "activity"    # Landroid/app/Activity;
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2007
    .local p6, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    move-object/from16 v0, p4

    if-eqz p1, :cond_44

    .line 2008
    if-eqz p8, :cond_3a

    .line 2009
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v12, v1

    .line 2010
    .local v12, "optionsIn":Landroid/os/Bundle;
    if-eqz v0, :cond_11

    .line 2011
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2013
    :cond_11
    move-object v13, p0

    iget-object v1, v13, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidPackageName"

    invoke-virtual {v12, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    new-instance v14, Landroid/accounts/AccountManager$12;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object v10, v12

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Landroid/accounts/AccountManager$12;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 2022
    invoke-virtual {v14}, Landroid/accounts/AccountManager$12;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 2015
    return-object v1

    .line 2008
    .end local v12    # "optionsIn":Landroid/os/Bundle;
    :cond_3a
    move-object v13, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "userHandle is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2007
    :cond_44
    move-object v13, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userdata"    # Landroid/os/Bundle;

    .line 1044
    const/16 v0, 0x18

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1045
    if-eqz p1, :cond_1a

    .line 1047
    :try_start_7
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 1048
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1047
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/accounts/IAccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    return v0

    .line 1049
    :catch_14
    move-exception v0

    .line 1050
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1045
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1081
    .local p4, "visibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_19

    .line 1084
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 1085
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1084
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountManager;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_13

    return v0

    .line 1086
    :catch_13
    move-exception v0

    .line 1087
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1082
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    .registers 5
    .param p1, "listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "updateImmediately"    # Z

    .line 3030
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    .line 3031
    return-void
.end method

.method public whitelist addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V
    .registers 10
    .param p1, "listener"    # Landroid/accounts/OnAccountsUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "updateImmediately"    # Z
    .param p4, "accountTypes"    # [Ljava/lang/String;

    .line 3059
    if-eqz p1, :cond_70

    .line 3062
    iget-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 3063
    :try_start_5
    iget-object v1, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 3066
    iget-object v1, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    .line 3068
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    if-eqz p4, :cond_29

    .line 3070
    iget-object v2, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    .line 3071
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3070
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    .line 3073
    :cond_29
    iget-object v2, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3076
    :goto_2f
    if-eqz v1, :cond_47

    .line 3078
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 3079
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3081
    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3082
    iget-object v3, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_6d

    .line 3088
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_47
    :try_start_47
    iget-object v2, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v3, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p4, v3}, Landroid/accounts/IAccountManager;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_52} :catch_5e
    .catchall {:try_start_47 .. :try_end_52} :catchall_6d

    .line 3091
    nop

    .line 3092
    .end local v1    # "wasEmpty":Z
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_6d

    .line 3093
    if-eqz p3, :cond_5d

    .line 3094
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/OnAccountsUpdateListener;[Landroid/accounts/Account;)V

    .line 3096
    :cond_5d
    return-void

    .line 3089
    .restart local v1    # "wasEmpty":Z
    :catch_5e
    move-exception v2

    .line 3090
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5f
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/accounts/AccountManager;
    .end local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "updateImmediately":Z
    .end local p4    # "accountTypes":[Ljava/lang/String;
    throw v3

    .line 3064
    .end local v1    # "wasEmpty":Z
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/accounts/AccountManager;
    .restart local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    .restart local p2    # "handler":Landroid/os/Handler;
    .restart local p3    # "updateImmediately":Z
    .restart local p4    # "accountTypes":[Ljava/lang/String;
    :cond_64
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "this listener is already added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/accounts/AccountManager;
    .end local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "updateImmediately":Z
    .end local p4    # "accountTypes":[Ljava/lang/String;
    throw v1

    .line 3092
    .restart local p0    # "this":Landroid/accounts/AccountManager;
    .restart local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    .restart local p2    # "handler":Landroid/os/Handler;
    .restart local p3    # "updateImmediately":Z
    .restart local p4    # "accountTypes":[Ljava/lang/String;
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_6d

    throw v1

    .line 3060
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o addSharedAccountsFromParentUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "parentUser"    # Landroid/os/UserHandle;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2037
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2038
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2037
    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    .line 2041
    nop

    .line 2042
    return-void

    .line 2039
    :catch_15
    move-exception v0

    .line 2040
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "notifyAuthFailure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 1657
    if-eqz p1, :cond_49

    .line 1658
    if-eqz p2, :cond_41

    .line 1659
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 1660
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1661
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_3a

    .line 1666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockingGetAuthToken: null was returned from getResult() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const/4 v1, 0x0

    return-object v1

    .line 1670
    :cond_3a
    const-string v1, "authtoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1658
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1657
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearPassword(Landroid/accounts/Account;)V
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1563
    const/16 v0, 0x1b

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1564
    if-eqz p1, :cond_14

    .line 1566
    :try_start_7
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->clearPassword(Landroid/accounts/Account;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1569
    nop

    .line 1570
    return-void

    .line 1567
    :catch_e
    move-exception v0

    .line 1568
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1564
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2148
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 2149
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    .line 2148
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .registers 18
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2163
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_1a

    .line 2164
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 2165
    .local v9, "userId":I
    new-instance v10, Landroid/accounts/AccountManager$14;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p5

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, v9

    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManager$14;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;I)V

    .line 2172
    invoke-virtual {v10}, Landroid/accounts/AccountManager$14;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 2165
    return-object v0

    .line 2163
    .end local v9    # "userId":I
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o copyAccountToUser(Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "fromUser"    # Landroid/os/UserHandle;
    .param p3, "toUser"    # Landroid/os/UserHandle;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/os/UserHandle;",
            "Landroid/os/UserHandle;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2060
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_1f

    .line 2061
    if-eqz p3, :cond_17

    if-eqz p2, :cond_17

    .line 2065
    new-instance v7, Landroid/accounts/AccountManager$13;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManager$13;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/UserHandle;Landroid/os/UserHandle;)V

    .line 2079
    invoke-virtual {v7}, Landroid/accounts/AccountManager$13;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object v0

    .line 2065
    return-object v0

    .line 2062
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromUser and toUser cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2060
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 3490
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/accounts/IAccountManager;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 3492
    :catch_7
    move-exception v0

    .line 3493
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist disableLocalAccountCaches()V
    .registers 2

    .line 3511
    iget-object v0, p0, Landroid/accounts/AccountManager;->mAccountsForUserCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 3512
    return-void
.end method

.method public blacklist disableLocalUserInfoCaches()V
    .registers 2

    .line 3528
    iget-object v0, p0, Landroid/accounts/AccountManager;->mUserDataCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    .line 3529
    return-void
.end method

.method public whitelist editProperties(Ljava/lang/String;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 13
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2282
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/16 v0, 0x1e

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2283
    if-eqz p1, :cond_18

    .line 2284
    new-instance v0, Landroid/accounts/AccountManager$16;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/accounts/AccountManager$16;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Landroid/app/Activity;)V

    .line 2290
    invoke-virtual {v0}, Landroid/accounts/AccountManager$16;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 2284
    return-object v0

    .line 2283
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist finishSession(Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "sessionBundle"    # Landroid/os/Bundle;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3365
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 3368
    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 3365
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->finishSessionAsUser(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist finishSessionAsUser(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/UserHandle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 18
    .param p1, "sessionBundle"    # Landroid/os/Bundle;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/os/UserHandle;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3385
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_29

    .line 3390
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 3391
    .local v9, "appInfo":Landroid/os/Bundle;
    move-object v10, p0

    iget-object v0, v10, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidPackageName"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3393
    new-instance v11, Landroid/accounts/AccountManager$23;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, v9

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManager$23;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3403
    invoke-virtual {v11}, Landroid/accounts/AccountManager$23;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 3393
    return-object v0

    .line 3386
    .end local v9    # "appInfo":Landroid/os/Bundle;
    :cond_29
    move-object v10, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sessionBundle is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1193
    if-eqz p1, :cond_f

    .line 1196
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManager;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return v0

    .line 1197
    :catch_9
    move-exception v0

    .line 1198
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1194
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAccounts()[Landroid/accounts/Account;
    .registers 2

    .line 724
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1132
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    .line 1133
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManager;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1134
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    return-object v0

    .line 1135
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    :catch_7
    move-exception v0

    .line 1136
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getAccountsAsUser(I)[Landroid/accounts/Account;
    .registers 4
    .param p1, "userId"    # I

    .line 740
    new-instance v0, Landroid/accounts/AccountManager$UserIdPackage;

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/accounts/AccountManager$UserIdPackage;-><init>(ILjava/lang/String;)V

    .line 741
    .local v0, "userAndPackage":Landroid/accounts/AccountManager$UserIdPackage;
    iget-object v1, p0, Landroid/accounts/AccountManager;->mAccountsForUserCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v1, v0}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    return-object v1
.end method

.method public whitelist getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 842
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "features"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "[",
            "Landroid/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 995
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    if-eqz p1, :cond_12

    .line 996
    new-instance v6, Landroid/accounts/AccountManager$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManager$5;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v6}, Landroid/accounts/AccountManager$5;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object v0

    .line 996
    return-object v0

    .line 995
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 850
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object v2, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 851
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 850
    invoke-interface {v0, p1, v1, v2}, Landroid/accounts/IAccountManager;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 852
    :catch_11
    move-exception v0

    .line 853
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 777
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    .line 778
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-interface {v0, p1, p2, v1}, Landroid/accounts/IAccountManager;->getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 779
    :catch_d
    move-exception v0

    .line 780
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 755
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/accounts/IAccountManager;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 756
    :catch_d
    move-exception v0

    .line 757
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 19
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "activity"    # Landroid/app/Activity;
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1732
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    move-object v0, p3

    if-eqz p1, :cond_3a

    .line 1733
    if-eqz p2, :cond_31

    .line 1734
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v9, v1

    .line 1735
    .local v9, "optionsIn":Landroid/os/Bundle;
    if-eqz v0, :cond_10

    .line 1736
    invoke-virtual {v9, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1738
    :cond_10
    move-object v10, p0

    iget-object v1, v10, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidPackageName"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    new-instance v11, Landroid/accounts/AccountManager$9;

    move-object v1, v11

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    move-object v6, p1

    move-object v7, p2

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Landroid/accounts/AccountManager$9;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1747
    invoke-virtual {v11}, Landroid/accounts/AccountManager$9;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 1739
    return-object v1

    .line 1733
    .end local v9    # "optionsIn":Landroid/os/Bundle;
    :cond_31
    move-object v10, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "authTokenType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1732
    :cond_3a
    move-object v10, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 20
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "notifyAuthFailure"    # Z
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Z",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1904
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    move-object/from16 v0, p3

    if-eqz p1, :cond_3c

    .line 1905
    if-eqz p2, :cond_33

    .line 1906
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v10, v1

    .line 1907
    .local v10, "optionsIn":Landroid/os/Bundle;
    if-eqz v0, :cond_11

    .line 1908
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1910
    :cond_11
    move-object v11, p0

    iget-object v1, v11, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidPackageName"

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    new-instance v12, Landroid/accounts/AccountManager$10;

    const/4 v3, 0x0

    move-object v1, v12

    move-object v2, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    move-object v6, p1

    move-object v7, p2

    move/from16 v8, p4

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Landroid/accounts/AccountManager$10;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 1918
    invoke-virtual {v12}, Landroid/accounts/AccountManager$10;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 1911
    return-object v1

    .line 1905
    .end local v10    # "optionsIn":Landroid/os/Bundle;
    :cond_33
    move-object v11, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "authTokenType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1904
    :cond_3c
    move-object v11, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 13
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "notifyAuthFailure"    # Z
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1823
    .local p4, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 20
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "activity"    # Landroid/app/Activity;
    .param p5, "addAccountOptions"    # Landroid/os/Bundle;
    .param p6, "getAuthTokenOptions"    # Landroid/os/Bundle;
    .param p8, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2863
    .local p7, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_23

    .line 2864
    if-eqz p2, :cond_1b

    .line 2865
    new-instance v10, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;-><init>(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V

    .line 2868
    .local v0, "task":Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
    invoke-virtual {v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->start()Landroid/accounts/AccountManagerFuture;

    .line 2869
    return-object v0

    .line 2864
    .end local v0    # "task":Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2863
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account type is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getAuthTokenLabel(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 888
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/String;>;"
    if-eqz p1, :cond_1c

    .line 889
    if-eqz p2, :cond_14

    .line 890
    new-instance v6, Landroid/accounts/AccountManager$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManager$3;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-virtual {v6}, Landroid/accounts/AccountManager$3;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object v0

    .line 890
    return-object v0

    .line 889
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .registers 2

    .line 670
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 4
    .param p1, "userId"    # I

    .line 688
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 689
    :catch_7
    move-exception v0

    .line 690
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1103
    if-eqz p1, :cond_b

    .line 1106
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    .line 1107
    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v0

    .line 1108
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-object v0

    .line 1109
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_9
    move-exception v0

    goto :goto_13

    .line 1104
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/accounts/AccountManager;
    .end local p1    # "account":Landroid/accounts/Account;
    throw v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_9

    .line 1110
    .local v0, "re":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/accounts/AccountManager;
    .restart local p1    # "account":Landroid/accounts/Account;
    :goto_13
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 622
    const/16 v0, 0x16

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 623
    if-eqz p1, :cond_14

    .line 625
    :try_start_7
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 626
    :catch_e
    move-exception v0

    .line 627
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 623
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1289
    if-eqz p1, :cond_f

    .line 1291
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 1292
    :catch_9
    move-exception v0

    .line 1293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1289
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    .line 653
    const/16 v0, 0x17

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 654
    iget-object v0, p0, Landroid/accounts/AccountManager;->mUserDataCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/accounts/AccountManager$AccountKeyData;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountManager$AccountKeyData;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 3466
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/accounts/IAccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3467
    :catch_7
    move-exception v0

    .line 3468
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "features"    # [Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "[",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 933
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_1c

    .line 934
    if-eqz p2, :cond_14

    .line 935
    new-instance v6, Landroid/accounts/AccountManager$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManager$4;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 948
    invoke-virtual {v6}, Landroid/accounts/AccountManager$4;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object v0

    .line 935
    return-object v0

    .line 934
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .line 1472
    if-eqz p1, :cond_12

    .line 1474
    if-eqz p2, :cond_10

    .line 1475
    :try_start_4
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_10

    .line 1477
    :catch_a
    move-exception v0

    .line 1478
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1479
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    nop

    .line 1480
    return-void

    .line 1472
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isCredentialsUpdateSuggested(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "statusToken"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 3426
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_21

    .line 3430
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3434
    new-instance v0, Landroid/accounts/AccountManager$24;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/accounts/AccountManager$24;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 3449
    invoke-virtual {v0}, Landroid/accounts/AccountManager$24;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object v0

    .line 3434
    return-object v0

    .line 3431
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "status token is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3427
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist notifyAccountAuthenticated(Landroid/accounts/Account;)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1218
    if-eqz p1, :cond_f

    .line 1221
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->accountAuthenticated(Landroid/accounts/Account;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return v0

    .line 1222
    :catch_9
    move-exception v0

    .line 1223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1219
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;

    .line 1504
    if-eqz p1, :cond_19

    .line 1505
    if-eqz p2, :cond_11

    .line 1507
    :try_start_4
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 1508
    :catch_b
    move-exception v0

    .line 1509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1505
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1504
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1325
    .local p2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    const/16 v0, 0x19

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1326
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public whitelist removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1373
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/16 v0, 0x1c

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1374
    iget-object v0, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o removeAccountAsUser(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1388
    .local p2, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_1d

    .line 1389
    if-eqz p4, :cond_14

    .line 1390
    new-instance v6, Landroid/accounts/AccountManager$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManager$7;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/os/UserHandle;)V

    .line 1403
    invoke-virtual {v6}, Landroid/accounts/AccountManager$7;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object v0

    .line 1390
    return-object v0

    .line 1389
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userHandle is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1413
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_1f

    .line 1415
    if-eqz p5, :cond_16

    .line 1417
    new-instance v8, Landroid/accounts/AccountManager$8;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AccountManager$8;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/app/Activity;Landroid/os/UserHandle;)V

    .line 1424
    invoke-virtual {v8}, Landroid/accounts/AccountManager$8;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 1417
    return-object v0

    .line 1416
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userHandle is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeAccountExplicitly(Landroid/accounts/Account;)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1447
    if-eqz p1, :cond_f

    .line 1449
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return v0

    .line 1450
    :catch_9
    move-exception v0

    .line 1451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1447
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/accounts/OnAccountsUpdateListener;

    .line 3112
    if-eqz p1, :cond_5e

    .line 3113
    iget-object v0, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 3114
    :try_start_5
    iget-object v1, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 3115
    const-string v1, "AccountManager"

    const-string v2, "Listener was not previously added"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    monitor-exit v0

    return-void

    .line 3118
    :cond_16
    iget-object v1, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 3120
    .local v1, "accountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2d

    .line 3121
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .local v2, "accountsArray":[Ljava/lang/String;
    goto :goto_2e

    .line 3123
    .end local v2    # "accountsArray":[Ljava/lang/String;
    :cond_2d
    const/4 v2, 0x0

    .line 3125
    .restart local v2    # "accountsArray":[Ljava/lang/String;
    :goto_2e
    iget-object v3, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3126
    iget-object v3, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListenersTypes:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3127
    iget-object v3, p0, Landroid/accounts/AccountManager;->mAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 3128
    iget-object v3, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/accounts/AccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_5b

    .line 3131
    :cond_47
    :try_start_47
    iget-object v3, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    iget-object v4, p0, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/accounts/IAccountManager;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_52} :catch_55
    .catchall {:try_start_47 .. :try_end_52} :catchall_5b

    .line 3134
    nop

    .line 3135
    .end local v1    # "accountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "accountsArray":[Ljava/lang/String;
    :try_start_53
    monitor-exit v0

    .line 3136
    return-void

    .line 3132
    .restart local v1    # "accountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "accountsArray":[Ljava/lang/String;
    :catch_55
    move-exception v3

    .line 3133
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/accounts/AccountManager;
    .end local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    throw v4

    .line 3135
    .end local v1    # "accountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "accountsArray":[Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/accounts/AccountManager;
    .restart local p1    # "listener":Landroid/accounts/OnAccountsUpdateListener;
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5b

    throw v1

    .line 3112
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist renameAccount(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/accounts/Account;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 1256
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/accounts/Account;>;"
    if-eqz p1, :cond_21

    .line 1257
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1260
    new-instance v0, Landroid/accounts/AccountManager$6;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/accounts/AccountManager$6;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v0}, Landroid/accounts/AccountManager$6;->start()Landroid/accounts/AccountManager$Future2Task;

    move-result-object v0

    .line 1260
    return-object v0

    .line 1258
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newName is empty or null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "visibility"    # I

    .line 1165
    if-eqz p1, :cond_f

    .line 1168
    :try_start_2
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/accounts/IAccountManager;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    return v0

    .line 1169
    :catch_9
    move-exception v0

    .line 1170
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1166
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .line 1621
    if-eqz p1, :cond_19

    .line 1622
    if-eqz p2, :cond_11

    .line 1624
    :try_start_4
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/accounts/IAccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 1627
    nop

    .line 1628
    return-void

    .line 1625
    :catch_b
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1622
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1621
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;

    .line 1534
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1535
    if-eqz p1, :cond_14

    .line 1537
    :try_start_7
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    .line 1540
    nop

    .line 1541
    return-void

    .line 1538
    :catch_e
    move-exception v0

    .line 1539
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1535
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1591
    const/16 v0, 0x1c

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1592
    if-eqz p1, :cond_1e

    .line 1593
    if-eqz p2, :cond_16

    .line 1595
    :try_start_9
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/accounts/IAccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    .line 1598
    nop

    .line 1599
    return-void

    .line 1596
    :catch_10
    move-exception v0

    .line 1597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1593
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1592
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o someUserHasAccount(Landroid/accounts/Account;)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 2303
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1}, Landroid/accounts/IAccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2304
    :catch_7
    move-exception v0

    .line 2305
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startAddAccountSession(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 22
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "requiredFeatures"    # [Ljava/lang/String;
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "activity"    # Landroid/app/Activity;
    .param p7, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3207
    .local p6, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    move-object/from16 v0, p4

    if-eqz p1, :cond_35

    .line 3208
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v11, v1

    .line 3209
    .local v11, "optionsIn":Landroid/os/Bundle;
    if-eqz v0, :cond_f

    .line 3210
    invoke-virtual {v11, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3212
    :cond_f
    move-object v12, p0

    iget-object v1, v12, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidPackageName"

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    new-instance v13, Landroid/accounts/AccountManager$21;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object v10, v11

    invoke-direct/range {v1 .. v10}, Landroid/accounts/AccountManager$21;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3225
    invoke-virtual {v13}, Landroid/accounts/AccountManager$21;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 3214
    return-object v1

    .line 3207
    .end local v11    # "optionsIn":Landroid/os/Bundle;
    :cond_35
    move-object v12, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "accountType is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist startUpdateCredentialsSession(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 20
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "activity"    # Landroid/app/Activity;
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 3286
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    move-object/from16 v0, p3

    if-eqz p1, :cond_32

    .line 3292
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v10, v1

    .line 3293
    .local v10, "optionsIn":Landroid/os/Bundle;
    if-eqz v0, :cond_f

    .line 3294
    invoke-virtual {v10, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3296
    :cond_f
    move-object v11, p0

    iget-object v1, v11, Landroid/accounts/AccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidPackageName"

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    new-instance v12, Landroid/accounts/AccountManager$22;

    move-object v1, v12

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p4

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Landroid/accounts/AccountManager$22;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3308
    invoke-virtual {v12}, Landroid/accounts/AccountManager$22;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 3298
    return-object v1

    .line 3287
    .end local v10    # "optionsIn":Landroid/os/Bundle;
    :cond_32
    move-object v11, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "value"    # Z

    .line 870
    :try_start_0
    iget-object v0, p0, Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 873
    nop

    .line 874
    return-void

    .line 871
    :catch_7
    move-exception v0

    .line 872
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .registers 17
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "activity"    # Landroid/app/Activity;
    .param p6, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 2228
    .local p5, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p1, :cond_16

    .line 2229
    new-instance v9, Landroid/accounts/AccountManager$15;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p4

    move-object/from16 v3, p6

    move-object v4, p5

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManager$15;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2235
    invoke-virtual {v9}, Landroid/accounts/AccountManager$15;->start()Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 2229
    return-object v0

    .line 2228
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
