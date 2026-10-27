.class public Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# instance fields
.field public final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public static synthetic $r8$lambda$gdbi4zlGZGic5yYpC6rnH2b-N7A(Lcom/android/server/backup/BackupManagerService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->lambda$onUserUnlocking$0(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1751
    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V
    .registers 3

    .line 1756
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1757
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 1758
    sput-object p2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 1759
    const-class p0, Landroid/app/backup/BackupManagerInternal;

    invoke-static {p0, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onUserUnlocking$0(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 1774
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->-$$Nest$mstopServiceForSystemUserIfMainUserCreated(Lcom/android/server/backup/BackupManagerService;)V

    .line 1775
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V

    .line 1776
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->-$$Nest$fputmHasFirstUserUnlockedSinceBoot(Lcom/android/server/backup/BackupManagerService;Z)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1764
    const-string v0, "backup"

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 1782
    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 1772
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/BackupManagerService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public publishService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    .line 1787
    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
