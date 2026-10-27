.class final Lcom/android/server/pm/InstallRequest;
.super Ljava/lang/Object;
.source "InstallRequest.java"


# instance fields
.field public final mArgs:Lcom/android/server/pm/InstallArgs;

.field public final mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;)V
    .registers 3
    .param p1, "args"    # Lcom/android/server/pm/InstallArgs;
    .param p2, "res"    # Lcom/android/server/pm/PackageInstalledInfo;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mArgs:Lcom/android/server/pm/InstallArgs;

    .line 25
    iput-object p2, p0, Lcom/android/server/pm/InstallRequest;->mInstallResult:Lcom/android/server/pm/PackageInstalledInfo;

    .line 26
    return-void
.end method
