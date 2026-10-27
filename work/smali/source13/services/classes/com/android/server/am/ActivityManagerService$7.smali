.class Lcom/android/server/am/ActivityManagerService$7;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->handleProcessStartOrKillTimeoutLocked(Lcom/android/server/am/ProcessRecord;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 4891
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$7;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$7;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 4895
    :try_start_0
    const-string v0, "backup"

    .line 4896
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4895
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 4897
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$7;->val$userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$7;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/app/backup/IBackupManager;->agentDisconnectedForUser(ILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 4900
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    goto :goto_13

    .line 4898
    :catch_12
    move-exception v0

    .line 4901
    :goto_13
    return-void
.end method
