.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;
.super Landroid/os/AsyncTask;
.source "DevicePolicyManagerService.java"


# static fields
.field public static final FEATURE_ALLOW:[Ljava/lang/String;

.field public static final FEATURE_DISALLOW:[Ljava/lang/String;


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19392
    const-string v0, "android.account.DEVICE_OR_PROFILE_OWNER_ALLOWED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_ALLOW:[Ljava/lang/String;

    .line 19394
    const-string v0, "android.account.DEVICE_OR_PROFILE_OWNER_DISALLOWED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_DISALLOW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2

    .line 19390
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static hasAccountFeatures(ILandroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 19435
    :try_start_1
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/accounts/AccountManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    .line 19436
    invoke-interface {p1, v0, v1, p2}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p1

    .line 19438
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "DevicePolicyManager"

    const-string p3, "Failed to get account feature for user %d"

    invoke-static {p2, p1, p3, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 19390
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .registers 5

    .line 19399
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 19400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19401
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 19402
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->userHasIncompatibleAccounts(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_32
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 19390
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/Map;)V
    .registers 2

    .line 19427
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$fputmHasIncompatibleAccounts(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/Map;)V

    .line 19429
    const-string p0, "DevicePolicyManager"

    const-string p1, "Finished calculating hasIncompatibleAccountsTask"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final userHasIncompatibleAccounts(I)Z
    .registers 9

    .line 19409
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/accounts/AccountManager;

    .line 19410
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    .line 19411
    invoke-virtual {p0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 19413
    array-length v2, v0

    move v3, v1

    :goto_1b
    if-ge v3, v2, :cond_35

    aget-object v4, v0, v3

    .line 19414
    sget-object v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_DISALLOW:[Ljava/lang/String;

    invoke-static {p1, p0, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->hasAccountFeatures(ILandroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_29

    return v6

    .line 19417
    :cond_29
    sget-object v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_ALLOW:[Ljava/lang/String;

    invoke-static {p1, p0, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->hasAccountFeatures(ILandroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    return v6

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_35
    return v1
.end method
