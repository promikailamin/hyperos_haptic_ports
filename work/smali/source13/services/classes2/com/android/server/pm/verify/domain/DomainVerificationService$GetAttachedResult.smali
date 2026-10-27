.class Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
.super Ljava/lang/Object;
.source "DomainVerificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/verify/domain/DomainVerificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetAttachedResult"
.end annotation


# instance fields
.field private mErrorCode:I

.field private mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;


# direct methods
.method constructor <init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V
    .registers 3
    .param p1, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .param p2, "errorCode"    # I

    .line 2037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2038
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 2039
    iput p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    .line 2040
    return-void
.end method

.method static error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .registers 3
    .param p0, "errorCode"    # I

    .line 2044
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V

    return-object v0
.end method

.method static success(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .registers 3
    .param p0, "pkgState"    # Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 2049
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 2062
    iget v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    return v0
.end method

.method getPkgState()Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .registers 2

    .line 2054
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    return-object v0
.end method

.method isError()Z
    .registers 2

    .line 2058
    iget v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
