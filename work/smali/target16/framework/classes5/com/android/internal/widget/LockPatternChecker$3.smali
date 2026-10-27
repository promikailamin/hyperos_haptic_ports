.class Lcom/android/internal/widget/LockPatternChecker$3;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/internal/widget/VerifyCredentialResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

.field final synthetic blacklist val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic blacklist val$flags:I

.field final synthetic blacklist val$userId:I

.field final synthetic blacklist val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;IILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V
    .registers 6

    .line 181
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    iput p3, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$userId:I

    iput p4, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$flags:I

    iput-object p5, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    .line 184
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    iget v1, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$userId:I

    iget v2, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$flags:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 181
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$3;->doInBackground([Ljava/lang/Void;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist onCancelled()V
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 196
    return-void
.end method

.method protected blacklist onPostExecute(Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;->onVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    .line 190
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$3;->val$credentialCopy:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 191
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 181
    check-cast p1, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$3;->onPostExecute(Lcom/android/internal/widget/VerifyCredentialResponse;)V

    return-void
.end method
