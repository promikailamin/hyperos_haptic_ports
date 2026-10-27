.class public Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "AccountManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 2

    .line 422
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    return-void
.end method


# virtual methods
.method public onOpChanged(ILjava/lang/String;)V
    .registers 7

    .line 426
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 429
    :try_start_4
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_e} :catch_3f

    .line 435
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v2}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_3f

    .line 440
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 442
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p1

    const/4 v0, 0x1

    .line 442
    invoke-static {p0, p2, v1, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mcancelAccountAccessRequestNotificationIfNeeded(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1f .. :try_end_29} :catch_2f
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    .line 447
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2d
    move-exception p0

    goto :goto_3b

    :catch_2f
    move-exception p0

    .line 445
    :try_start_30
    const-string p1, "AccountManagerService"

    const-string p2, "Can\'t read accounts database"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_2d

    .line 447
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    throw p0

    :catch_3f
    :goto_3f
    return-void
.end method
