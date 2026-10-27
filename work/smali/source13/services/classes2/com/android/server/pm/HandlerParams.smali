.class abstract Lcom/android/server/pm/HandlerParams;
.super Ljava/lang/Object;
.source "HandlerParams.java"


# instance fields
.field final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field final mPm:Lcom/android/server/pm/PackageManagerService;

.field mTraceCookie:I

.field mTraceMethod:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V
    .registers 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/pm/HandlerParams;->mUser:Landroid/os/UserHandle;

    .line 38
    iput-object p2, p0, Lcom/android/server/pm/HandlerParams;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 39
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper;

    invoke-direct {v0, p2}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/HandlerParams;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 40
    return-void
.end method


# virtual methods
.method getUser()Landroid/os/UserHandle;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/server/pm/HandlerParams;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method abstract handleReturnCode()V
.end method

.method abstract handleStartCopy()V
.end method

.method setTraceCookie(I)Lcom/android/server/pm/HandlerParams;
    .registers 2
    .param p1, "traceCookie"    # I

    .line 52
    iput p1, p0, Lcom/android/server/pm/HandlerParams;->mTraceCookie:I

    .line 53
    return-object p0
.end method

.method setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/HandlerParams;
    .registers 2
    .param p1, "traceMethod"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/server/pm/HandlerParams;->mTraceMethod:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method final startCopy()V
    .registers 3

    .line 57
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCopy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/HandlerParams;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/pm/HandlerParams;->handleStartCopy()V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/pm/HandlerParams;->handleReturnCode()V

    .line 60
    return-void
.end method
