.class Lcom/android/server/textclassifier/TextClassificationManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;->startTrackingPackageChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 198
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private notifyPackageInstallStatusChange(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installed"    # Z

    .line 223
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->getChangingUserId()I

    move-result v0

    .line 224
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 225
    :try_start_b
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v2

    .line 226
    .local v2, "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    invoke-static {v2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    move-result-object v3

    .line 227
    .local v3, "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    if-eqz v3, :cond_1a

    .line 228
    invoke-static {v3, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->-$$Nest$monPackageInstallStatusChangeLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;Z)V

    .line 230
    .end local v2    # "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .end local v3    # "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    :cond_1a
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v2
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->notifyPackageInstallStatusChange(Ljava/lang/String;Z)V

    .line 203
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->getChangingUserId()I

    move-result v0

    .line 213
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 214
    :try_start_b
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$mgetUserStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v2

    .line 215
    .local v2, "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    invoke-static {v2, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Ljava/lang/String;)Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;

    move-result-object v3

    .line 216
    .local v3, "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    if-eqz v3, :cond_1a

    .line 217
    invoke-static {v3}, Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;->-$$Nest$monPackageModifiedLocked(Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;)V

    .line 219
    .end local v2    # "userState":Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .end local v3    # "serviceState":Lcom/android/server/textclassifier/TextClassificationManagerService$ServiceState;
    :cond_1a
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$2;->notifyPackageInstallStatusChange(Ljava/lang/String;Z)V

    .line 208
    return-void
.end method
