.class Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;
.super Ljava/lang/Object;
.source "DomainVerificationLegacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LegacyState"
.end annotation


# instance fields
.field private attached:Z

.field private mInfo:Landroid/content/pm/IntentFilterVerificationInfo;

.field private mUserStates:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addUserState(II)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "state"    # I

    .line 213
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    if-nez v0, :cond_c

    .line 214
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    .line 216
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    return-void
.end method

.method public getInfo()Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    return-object v0
.end method

.method public getUserState(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 199
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getUserStates()Landroid/util/SparseIntArray;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public isAttached()Z
    .registers 2

    .line 220
    iget-boolean v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->attached:Z

    return v0
.end method

.method public markAttached()V
    .registers 2

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->attached:Z

    .line 225
    return-void
.end method

.method public setInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/content/pm/IntentFilterVerificationInfo;

    .line 209
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 210
    return-void
.end method
