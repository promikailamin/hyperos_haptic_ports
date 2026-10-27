.class public Lcom/android/server/pm/Settings$VersionInfo;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field public buildFingerprint:Ljava/lang/String;

.field public databaseVersion:I

.field public fingerprint:Ljava/lang/String;

.field public sdkVersion:I

.field public sdkVersionFull:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceCurrent()V
    .registers 4

    .line 507
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 509
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersionFull:I

    .line 510
    invoke-static {v0}, Landroid/os/Build;->getMajorSdkVersion(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x3

    .line 516
    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 517
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 518
    sget-object v0, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    return-void

    .line 511
    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build.VERSION.SDK_INT_FULL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersionFull:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and Build.VERSION.SDK_INT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " don\'t match. Please check your build configurations!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
