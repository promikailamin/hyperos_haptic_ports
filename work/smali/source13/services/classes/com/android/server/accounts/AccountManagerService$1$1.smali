.class Lcom/android/server/accounts/AccountManagerService$1$1;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accounts/AccountManagerService$1;

.field final synthetic val$removedPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService$1;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/accounts/AccountManagerService$1;

    .line 313
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->val$removedPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mpurgeOldGrantsAll(Lcom/android/server/accounts/AccountManagerService;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 321
    goto :goto_10

    .line 319
    :catch_8
    move-exception v0

    .line 320
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "AccountManagerService"

    const-string v2, "failed to get accounts user "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_10
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->val$removedPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mremoveVisibilityValuesForPackage(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;)V

    .line 325
    return-void
.end method
