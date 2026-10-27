.class public Lcom/android/server/accounts/AccountManagerService$UserAccounts;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# instance fields
.field public final accountCache:Ljava/util/HashMap;

.field public final accountTokenCaches:Lcom/android/server/accounts/TokenCache;

.field public final accountsDb:Lcom/android/server/accounts/AccountsDb;

.field public final authTokenCache:Ljava/util/Map;

.field public final cacheLock:Ljava/lang/Object;

.field public final credentialsPermissionNotificationIds:Ljava/util/HashMap;

.field public final dbLock:Ljava/lang/Object;

.field public final mCacheSizeForAccount:Ljava/util/Map;

.field public final mReceiversForType:Ljava/util/Map;

.field public final previousNameCache:Ljava/util/HashMap;

.field public final signinRequiredNotificationIds:Ljava/util/HashMap;

.field public final userDataCache:Ljava/util/Map;

.field public final userId:I

.field public final visibilityCache:Ljava/util/Map;


# direct methods
.method public static bridge synthetic -$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCacheSizeForAccount(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mCacheSizeForAccount:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetpreviousNameCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsigninRequiredNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V
    .registers 8

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 250
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 252
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 254
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 256
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 258
    new-instance v2, Lcom/android/server/accounts/TokenCache;

    invoke-direct {v2}, Lcom/android/server/accounts/TokenCache;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    .line 260
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 262
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mCacheSizeForAccount:Ljava/util/Map;

    .line 268
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    .line 282
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    .line 286
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 287
    monitor-enter v1

    .line 288
    :try_start_5a
    monitor-enter v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_64

    .line 289
    :try_start_5b
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/accounts/AccountsDb;->create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountsDb;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 290
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_66

    .line 291
    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_64

    return-void

    :catchall_64
    move-exception p0

    goto :goto_69

    :catchall_66
    move-exception p0

    .line 290
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    throw p0

    .line 291
    :goto_69
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_68 .. :try_end_6a} :catchall_64

    throw p0
.end method
