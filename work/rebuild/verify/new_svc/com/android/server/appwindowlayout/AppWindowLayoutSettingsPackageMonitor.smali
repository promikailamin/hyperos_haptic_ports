.class public Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AppWindowLayoutSettingsPackageMonitor.java"


# instance fields
.field public mPackageAddedCallback:Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor$PackageAddedCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 3

    .line 39
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    .line 41
    iget-object p0, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;->mPackageAddedCallback:Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor$PackageAddedCallback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor$PackageAddedCallback;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public setCallback(Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor$PackageAddedCallback;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor;->mPackageAddedCallback:Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsPackageMonitor$PackageAddedCallback;

    return-void
.end method
