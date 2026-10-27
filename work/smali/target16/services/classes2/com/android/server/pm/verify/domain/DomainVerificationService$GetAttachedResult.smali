.class public Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
.super Ljava/lang/Object;
.source "DomainVerificationService.java"


# instance fields
.field public final mErrorCode:I

.field public final mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V
    .registers 3

    .line 2162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2163
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 2164
    iput p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    return-void
.end method

.method public static error(I)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .registers 3

    .line 2169
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V

    return-object v0
.end method

.method public static success(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .registers 3

    .line 2174
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 1

    .line 2187
    iget p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    return p0
.end method

.method public getPkgState()Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .registers 1

    .line 2179
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    return-object p0
.end method

.method public isError()Z
    .registers 1

    .line 2183
    iget p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
