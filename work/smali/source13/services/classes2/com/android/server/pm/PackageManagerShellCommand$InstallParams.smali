.class Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallParams"
.end annotation


# instance fields
.field installerPackageName:Ljava/lang/String;

.field sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field stagedReadyTimeoutMs:J

.field userId:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 3050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3056
    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getDefaultUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 3058
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>()V

    return-void
.end method
