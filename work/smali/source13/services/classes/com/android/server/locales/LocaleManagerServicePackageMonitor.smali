.class final Lcom/android/server/locales/LocaleManagerServicePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LocaleManagerServicePackageMonitor.java"


# instance fields
.field private mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

.field private mSystemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/server/locales/SystemAppUpdateTracker;)V
    .registers 3
    .param p1, "localeManagerBackupHelper"    # Lcom/android/server/locales/LocaleManagerBackupHelper;
    .param p2, "systemAppUpdateTracker"    # Lcom/android/server/locales/SystemAppUpdateTracker;

    .line 39
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 41
    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mSystemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    .line 42
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 46
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->onPackageAdded(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 51
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->onPackageDataCleared()V

    .line 52
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 56
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->onPackageRemoved()V

    .line 57
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 61
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mSystemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locales/SystemAppUpdateTracker;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 62
    return-void
.end method
