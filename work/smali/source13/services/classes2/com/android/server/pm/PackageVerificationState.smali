.class Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field private mExtendedTimeout:Z

.field private mHasOptionalVerifier:Z

.field private mIntegrityVerificationComplete:Z

.field private mOptionalVerificationComplete:Z

.field private mOptionalVerificationPassed:Z

.field private mOptionalVerifierUid:I

.field private final mParams:Lcom/android/server/pm/VerificationParams;

.field private mRequiredVerificationComplete:Z

.field private mRequiredVerificationPassed:Z

.field private mRequiredVerifierUid:I

.field private mSufficientVerificationComplete:Z

.field private mSufficientVerificationPassed:Z

.field private final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;


# direct methods
.method constructor <init>(Lcom/android/server/pm/VerificationParams;)V
    .registers 3
    .param p1, "params"    # Lcom/android/server/pm/VerificationParams;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mParams:Lcom/android/server/pm/VerificationParams;

    .line 61
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 63
    return-void
.end method


# virtual methods
.method public addOptionalVerifier(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 84
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerifierUid:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    .line 86
    return-void
.end method

.method addSufficientVerifier(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 80
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 81
    return-void
.end method

.method areAllVerificationsComplete()Z
    .registers 2

    .line 207
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method extendTimeout()V
    .registers 2

    .line 184
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    if-nez v0, :cond_7

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    .line 187
    :cond_7
    return-void
.end method

.method getVerificationParams()Lcom/android/server/pm/VerificationParams;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mParams:Lcom/android/server/pm/VerificationParams;

    return-object v0
.end method

.method isInstallAllowed()Z
    .registers 4

    .line 167
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez v0, :cond_b

    .line 168
    return v1

    .line 171
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    if-nez v0, :cond_14

    .line 172
    return v1

    .line 175
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v0, :cond_1b

    .line 176
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    return v0

    .line 179
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method isIntegrityVerificationComplete()Z
    .registers 2

    .line 203
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    return v0
.end method

.method isVerificationComplete()Z
    .registers 4

    .line 145
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-nez v0, :cond_b

    .line 146
    return v1

    .line 149
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationComplete:Z

    if-nez v0, :cond_14

    .line 150
    return v1

    .line 153
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 154
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    return v0
.end method

.method setIntegrityVerificationResult(I)V
    .registers 3
    .param p1, "code"    # I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mIntegrityVerificationComplete:Z

    .line 200
    return-void
.end method

.method setRequiredVerifierUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 71
    iput p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    .line 72
    return-void
.end method

.method setVerifierResponse(II)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "code"    # I

    .line 96
    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUid:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_17

    .line 97
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    .line 98
    packed-switch p2, :pswitch_data_4a

    .line 106
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    goto :goto_16

    .line 100
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 103
    :pswitch_13
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 104
    nop

    .line 108
    :goto_16
    return v2

    .line 109
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mHasOptionalVerifier:Z

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerifierUid:I

    if-ne p1, v0, :cond_2b

    .line 110
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationComplete:Z

    .line 111
    packed-switch p2, :pswitch_data_52

    .line 116
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    goto :goto_2a

    .line 113
    :pswitch_27
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mOptionalVerificationPassed:Z

    .line 114
    nop

    .line 118
    :goto_2a
    return v2

    .line 120
    :cond_2b
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 121
    if-ne p2, v2, :cond_39

    .line 122
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    .line 126
    :cond_39
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 127
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_48

    .line 128
    iput-boolean v2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 131
    :cond_48
    return v2

    .line 135
    :cond_49
    return v1

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_e
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_27
    .end packed-switch
.end method

.method timeoutExtended()Z
    .registers 2

    .line 195
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeout:Z

    return v0
.end method
