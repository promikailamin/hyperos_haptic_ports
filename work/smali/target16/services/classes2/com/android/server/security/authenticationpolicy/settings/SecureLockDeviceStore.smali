.class public Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;
.super Ljava/lang/Object;
.source "SecureLockDeviceStore.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mFileStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;

    invoke-direct {v0, p1, p2}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;-><init>(Landroid/os/Handler;Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;)V

    iput-object v0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->mFileStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;

    .line 43
    invoke-virtual {v0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->loadStateFromFile()V

    return-void
.end method


# virtual methods
.method public retrieveSecureLockDeviceClientId()I
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->mFileStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;

    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->retrieveSecureLockDeviceClientId()I

    move-result p0

    return p0
.end method

.method public retrieveSecureLockDeviceEnabled()Z
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->mFileStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;

    invoke-virtual {p0}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->retrieveSecureLockDeviceEnabled()Z

    move-result p0

    return p0
.end method

.method public storeSecureLockDeviceDisabled()V
    .registers 3

    .line 70
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 71
    const-string v0, "SecureLockDeviceStore"

    const-string v1, "Storing SLD disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_b
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->mFileStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;

    const/4 v0, 0x0

    const/16 v1, -0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->updateStateAndWriteToFile(ZI)V

    return-void
.end method

.method public storeSecureLockDeviceEnabled(I)V
    .registers 4

    .line 60
    sget-boolean v0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storing SLD enabled by user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureLockDeviceStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1a
    iget-object p0, p0, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceStore;->mFileStore:Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsFileStore;->updateStateAndWriteToFile(ZI)V

    return-void
.end method
