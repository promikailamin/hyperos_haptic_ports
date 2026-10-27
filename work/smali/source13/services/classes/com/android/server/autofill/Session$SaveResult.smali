.class final Lcom/android/server/autofill/Session$SaveResult;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SaveResult"
.end annotation


# instance fields
.field private mLogSaveShown:Z

.field private mRemoveSession:Z

.field private mSaveDialogNotShowReason:I


# direct methods
.method constructor <init>(ZZI)V
    .registers 4
    .param p1, "logSaveShown"    # Z
    .param p2, "removeSession"    # Z
    .param p3, "saveDialogNotShowReason"    # I

    .line 4075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4076
    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    .line 4077
    iput-boolean p2, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    .line 4078
    iput p3, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    .line 4079
    return-void
.end method


# virtual methods
.method public getNoSaveUiReason()I
    .registers 2

    .line 4124
    iget v0, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    return v0
.end method

.method public isLogSaveShown()Z
    .registers 2

    .line 4087
    iget-boolean v0, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    return v0
.end method

.method public isRemoveSession()Z
    .registers 2

    .line 4105
    iget-boolean v0, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    return v0
.end method

.method public setLogSaveShown(Z)V
    .registers 2
    .param p1, "logSaveShown"    # Z

    .line 4096
    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    .line 4097
    return-void
.end method

.method public setRemoveSession(Z)V
    .registers 2
    .param p1, "removeSession"    # Z

    .line 4114
    iput-boolean p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    .line 4115
    return-void
.end method

.method public setSaveDialogNotShowReason(I)V
    .registers 2
    .param p1, "saveDialogNotShowReason"    # I

    .line 4133
    iput p1, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    .line 4134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SaveResult: [logSaveShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/autofill/Session$SaveResult;->mLogSaveShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removeSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/autofill/Session$SaveResult;->mRemoveSession:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", saveDialogNotShowReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/autofill/Session$SaveResult;->mSaveDialogNotShowReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
