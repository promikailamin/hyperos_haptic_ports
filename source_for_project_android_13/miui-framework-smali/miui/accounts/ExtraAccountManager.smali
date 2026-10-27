.class public Lmiui/accounts/ExtraAccountManager;
.super Ljava/lang/Object;
.source "ExtraAccountManager.java"


# static fields
.field public static final whitelist ACTION_VIEW_XIAOMI_ACCOUNT:Ljava/lang/String; = "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

.field public static final whitelist BIND_SNS_TYPE_SINA:I = 0x1

.field public static final whitelist EXTRA_ACCOUNT:Ljava/lang/String; = "extra_account"

.field public static final whitelist EXTRA_ADD_ACCOUNT_FROM_PROVISION:Ljava/lang/String; = "extra_add_account_from_provision"

.field public static final whitelist EXTRA_BIND_SNS_TYPE:Ljava/lang/String; = "extra_bind_sns_type"

.field public static final whitelist EXTRA_BUNDLE:Ljava/lang/String; = "extra_bundle"

.field public static final whitelist EXTRA_CLEAR_WHEN_RESET:Ljava/lang/String; = "extra_clear_when_reset"

.field public static final whitelist EXTRA_DISABLE_BACK_KEY:Ljava/lang/String; = "extra_disable_back_key"

.field public static final whitelist EXTRA_ENTER_ACCOUNT_FORWORD_IN_PROVISION:Ljava/lang/String; = "is_to_next_in_provision"

.field public static final whitelist EXTRA_FIND_PASSWORD_ON_PC:Ljava/lang/String; = "extra_find_pwd_on_pc"

.field public static final whitelist EXTRA_SHOW_ACCOUNT_SETTINGS:Ljava/lang/String; = "show_account_settings"

.field public static final whitelist EXTRA_SHOW_FIND_DEVICE:Ljava/lang/String; = "extra_show_find_device"

.field public static final whitelist EXTRA_SHOW_SKIP_LOGIN:Ljava/lang/String; = "extra_show_skip_login"

.field public static final whitelist EXTRA_SHOW_SYNC_SETTINGS:Ljava/lang/String; = "show_sync_settings"

.field public static final whitelist EXTRA_UPDATE_TYPE:Ljava/lang/String; = "extra_update_type"

.field public static final whitelist EXTRA_WIPE_DATA:Ljava/lang/String; = "extra_wipe_data"

.field public static final whitelist EXTRA_WIPE_SYNCED_DATA:Ljava/lang/String; = "extra_wipe_synced_data"

.field private static final blacklist INSTANCE:Lmiui/util/SoftReferenceSingletonUtil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingletonUtil<",
            "Lmiui/accounts/ExtraAccountManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist KEY_CAPTCHA_CODE:Ljava/lang/String; = "captcha_code"

.field public static final whitelist KEY_CAPTCHA_ICK:Ljava/lang/String; = "captcha_ick"

.field public static final whitelist KEY_CAPTCHA_URL:Ljava/lang/String; = "captcha_url"

.field public static final whitelist KEY_ENCRYPTED_USER_ID:Ljava/lang/String; = "encrypted_user_id"

.field public static final whitelist KEY_SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final whitelist KEY_TITLE:Ljava/lang/String; = "title"

.field public static final whitelist LOGIN_ACCOUNTS_POST_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

.field public static final whitelist LOGIN_ACCOUNTS_PRE_CHANGED_ACTION:Ljava/lang/String; = "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

.field private static final blacklist TAG:Ljava/lang/String; = "ExtraAccountManager"

.field public static final whitelist TYPE_ADD:I = 0x2

.field public static final whitelist TYPE_REMOVE:I = 0x1

.field public static final whitelist XIAOMI_ACCOUNT_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.account"


# instance fields
.field private blacklist mAccountManager:Landroid/accounts/AccountManager;

.field private final blacklist mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private blacklist mMainHandler:Landroid/os/Handler;

.field private final blacklist mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lmiui/accounts/MiuiOnAccountsUpdateListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccountManager(Lmiui/accounts/ExtraAccountManager;)Landroid/accounts/AccountManager;
    .registers 1

    iget-object p0, p0, Lmiui/accounts/ExtraAccountManager;->mAccountManager:Landroid/accounts/AccountManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutorService(Lmiui/accounts/ExtraAccountManager;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lmiui/accounts/ExtraAccountManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMiuiAccountsUpdatedListeners(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostToHandler(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostToHandler(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 106
    new-instance v0, Lmiui/accounts/ExtraAccountManager$1;

    invoke-direct {v0}, Lmiui/accounts/ExtraAccountManager$1;-><init>()V

    sput-object v0, Lmiui/accounts/ExtraAccountManager;->INSTANCE:Lmiui/util/SoftReferenceSingletonUtil;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    .line 239
    new-instance v0, Lmiui/accounts/ExtraAccountManager$4;

    invoke-direct {v0, p0}, Lmiui/accounts/ExtraAccountManager$4;-><init>(Lmiui/accounts/ExtraAccountManager;)V

    iput-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iput-object p1, p0, Lmiui/accounts/ExtraAccountManager;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mAccountManager:Landroid/accounts/AccountManager;

    .line 117
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mMainHandler:Landroid/os/Handler;

    .line 118
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 119
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Lmiui/accounts/ExtraAccountManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/accounts/ExtraAccountManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lmiui/accounts/ExtraAccountManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    sget-object v0, Lmiui/accounts/ExtraAccountManager;->INSTANCE:Lmiui/util/SoftReferenceSingletonUtil;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingletonUtil;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/accounts/ExtraAccountManager;

    return-object v0
.end method

.method public static whitelist getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 318
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 319
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v3, v2

    if-lez v3, :cond_11

    .line 320
    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 322
    :cond_11
    return-object v0
.end method

.method private blacklist postToHandler(Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V
    .registers 15
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lmiui/accounts/MiuiOnAccountsUpdateListener;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "type"    # I
    .param p5, "extra"    # Landroid/os/Bundle;
    .param p6, "preAdd"    # Z

    .line 221
    if-nez p1, :cond_5

    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mMainHandler:Landroid/os/Handler;

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    move-object p1, v0

    .line 222
    new-instance v7, Lmiui/accounts/ExtraAccountManager$3;

    move-object v0, v7

    move-object v1, p0

    move v2, p6

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/accounts/ExtraAccountManager$3;-><init>(Lmiui/accounts/ExtraAccountManager;ZLmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method private blacklist postToHandler(Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V
    .registers 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lmiui/accounts/MiuiOnAccountsUpdateListener;
    .param p3, "accounts"    # [Landroid/accounts/Account;

    .line 199
    array-length v0, p3

    new-array v0, v0, [Landroid/accounts/Account;

    .line 202
    .local v0, "accountsCopy":[Landroid/accounts/Account;
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    if-nez p1, :cond_d

    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager;->mMainHandler:Landroid/os/Handler;

    goto :goto_e

    :cond_d
    move-object v1, p1

    :goto_e
    move-object p1, v1

    .line 204
    new-instance v1, Lmiui/accounts/ExtraAccountManager$2;

    invoke-direct {v1, p0, p2, v0}, Lmiui/accounts/ExtraAccountManager$2;-><init>(Lmiui/accounts/ExtraAccountManager;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method


# virtual methods
.method public whitelist addOnAccountsUpdatedListener(Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/os/Handler;Z)V
    .registers 10
    .param p1, "listener"    # Lmiui/accounts/MiuiOnAccountsUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "updateImmediately"    # Z

    .line 138
    if-eqz p1, :cond_61

    .line 141
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 142
    :try_start_5
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 146
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    .line 148
    .local v1, "wasEmpty":Z
    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    if-eqz v1, :cond_49

    .line 152
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v3, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v3, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_42

    .line 160
    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/accounts/ExtraAccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_49

    .line 163
    :cond_42
    iget-object v3, p0, Lmiui/accounts/ExtraAccountManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/accounts/ExtraAccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    .end local v1    # "wasEmpty":Z
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_49
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_5e

    .line 170
    if-eqz p3, :cond_55

    .line 171
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lmiui/accounts/ExtraAccountManager;->postToHandler(Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V

    .line 173
    :cond_55
    return-void

    .line 143
    :cond_56
    :try_start_56
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this listener is already added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lmiui/accounts/ExtraAccountManager;
    .end local p1    # "listener":Lmiui/accounts/MiuiOnAccountsUpdateListener;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "updateImmediately":Z
    throw v1

    .line 168
    .restart local p0    # "this":Lmiui/accounts/ExtraAccountManager;
    .restart local p1    # "listener":Lmiui/accounts/MiuiOnAccountsUpdateListener;
    .restart local p2    # "handler":Landroid/os/Handler;
    .restart local p3    # "updateImmediately":Z
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_5e

    throw v1

    .line 139
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeOnAccountsUpdatedListener(Lmiui/accounts/MiuiOnAccountsUpdateListener;)V
    .registers 5
    .param p1, "listener"    # Lmiui/accounts/MiuiOnAccountsUpdateListener;

    .line 181
    if-eqz p1, :cond_2f

    .line 184
    iget-object v0, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 185
    :try_start_5
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 186
    const-string v1, "ExtraAccountManager"

    const-string v2, "Listener was not previously added"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    monitor-exit v0

    return-void

    .line 189
    :cond_16
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager;->mMiuiAccountsUpdatedListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 191
    iget-object v1, p0, Lmiui/accounts/ExtraAccountManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/accounts/ExtraAccountManager;->mAccountsChangedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    :cond_2a
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v1

    .line 182
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
