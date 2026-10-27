.class public Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1613
    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V

    .line 1614
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;

    .line 1618
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1619
    sput-object p2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 1620
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 1624
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "backup"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1625
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1634
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->onStopUser(I)V

    .line 1635
    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1629
    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->onUnlockUser(I)V

    .line 1630
    return-void
.end method

.method publishService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1639
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1640
    return-void
.end method
