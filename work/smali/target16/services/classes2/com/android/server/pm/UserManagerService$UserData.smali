.class Lcom/android/server/pm/UserManagerService$UserData;
.super Ljava/lang/Object;
.source "UserManagerService.java"


# instance fields
.field public account:Ljava/lang/String;

.field public info:Landroid/content/pm/UserInfo;

.field public mIgnorePrepareStorageErrors:Z

.field public mLastEnteredForegroundTimeMillis:J

.field public mLastRequestQuietModeEnabledMillis:J

.field public persistSeedData:Z

.field public seedAccountName:Ljava/lang/String;

.field public seedAccountOptions:Landroid/os/PersistableBundle;

.field public seedAccountType:Ljava/lang/String;

.field public startRealtime:J

.field public unlockRealtime:J

.field public userProperties:Landroid/content/pm/UserProperties;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSeedAccountData()V
    .registers 2

    const/4 v0, 0x0

    .line 511
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 512
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 513
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    const/4 v0, 0x0

    .line 514
    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    return-void
.end method

.method public getIgnorePrepareStorageErrors()Z
    .registers 1

    .line 492
    iget-boolean p0, p0, Lcom/android/server/pm/UserManagerService$UserData;->mIgnorePrepareStorageErrors:Z

    return p0
.end method

.method public getLastRequestQuietModeEnabledMillis()J
    .registers 3

    .line 488
    iget-wide v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    return-wide v0
.end method

.method public setIgnorePrepareStorageErrors()V
    .registers 3

    .line 502
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lcom/android/server/pm/UserManagerService$UserData;->mIgnorePrepareStorageErrors:Z

    return-void

    .line 506
    :cond_a
    const-string p0, "UserManagerService"

    const-string v0, "Not setting mIgnorePrepareStorageErrors to true since this is a new device"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLastRequestQuietModeEnabledMillis(J)V
    .registers 3

    .line 484
    iput-wide p1, p0, Lcom/android/server/pm/UserManagerService$UserData;->mLastRequestQuietModeEnabledMillis:J

    return-void
.end method
