.class public final Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller$InstallConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppNotForegroundRequired:Z

.field private blacklist mAppNotInteractingRequired:Z

.field private blacklist mAppNotTopVisibleRequired:Z

.field private blacklist mDeviceIdleRequired:Z

.field private blacklist mNotInCallRequired:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 5614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/content/pm/PackageInstaller$InstallConstraints;
    .registers 7

    .line 5691
    new-instance v0, Landroid/content/pm/PackageInstaller$InstallConstraints;

    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mDeviceIdleRequired:Z

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotForegroundRequired:Z

    iget-boolean v3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotInteractingRequired:Z

    iget-boolean v4, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotTopVisibleRequired:Z

    iget-boolean v5, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mNotInCallRequired:Z

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$InstallConstraints;-><init>(ZZZZZ)V

    return-object v0
.end method

.method public whitelist setAppNotForegroundRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .registers 2

    .line 5637
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotForegroundRequired:Z

    .line 5638
    return-object p0
.end method

.method public whitelist setAppNotInteractingRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .registers 2

    .line 5653
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotInteractingRequired:Z

    .line 5654
    return-object p0
.end method

.method public whitelist setAppNotTopVisibleRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .registers 2

    .line 5672
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotTopVisibleRequired:Z

    .line 5673
    return-object p0
.end method

.method public whitelist setDeviceIdleRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .registers 2

    .line 5627
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mDeviceIdleRequired:Z

    .line 5628
    return-object p0
.end method

.method public whitelist setNotInCallRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .registers 2

    .line 5682
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mNotInCallRequired:Z

    .line 5683
    return-object p0
.end method
