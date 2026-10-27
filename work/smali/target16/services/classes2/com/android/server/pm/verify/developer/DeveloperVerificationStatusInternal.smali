.class public Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;
.super Ljava/lang/Object;
.source "DeveloperVerificationStatusInternal.java"


# static fields
.field public static UNKNOWN:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;


# instance fields
.field public mAppMetadataVerificationStatus:I

.field public mInternalStatus:I

.field public mLiteVerification:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;-><init>(IIZ)V

    sput-object v0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->UNKNOWN:Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 12

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mAppMetadataVerificationStatus:I

    .line 63
    iput-boolean v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mLiteVerification:Z

    .line 124
    iput p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mInternalStatus:I

    if-eqz p1, :cond_80

    const/4 v1, 0x1

    if-eq p1, v1, :cond_80

    const/4 v2, 0x2

    if-eq p1, v2, :cond_80

    const/4 v3, 0x3

    if-eq p1, v3, :cond_80

    const/4 v4, 0x4

    if-eq p1, v4, :cond_80

    const/4 v5, 0x5

    if-eq p1, v5, :cond_80

    const/4 v6, 0x6

    if-eq p1, v6, :cond_80

    const/4 v7, 0x7

    if-ne p1, v7, :cond_22

    goto :goto_80

    .line 134
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "internalStatus was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mInternalStatus:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but must be one of: STATUS_UNKNOWN("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_COMPLETED_WITH_PASS("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_COMPLETED_WITH_REJECT("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_INCOMPLETE_UNKNOWN("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_INCOMPLETE_NETWORK_UNAVAILABLE("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_TIMEOUT("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_DISCONNECTED("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_INFEASIBLE("

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_80
    :goto_80
    iput p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mAppMetadataVerificationStatus:I

    .line 147
    const-class p1, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$AppMetadataVerificationStatus;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 149
    iput-boolean p3, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mLiteVerification:Z

    return-void
.end method

.method public static statusToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_20

    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :pswitch_8
    const-string p0, "STATUS_INFEASIBLE"

    return-object p0

    .line 112
    :pswitch_b
    const-string p0, "STATUS_DISCONNECTED"

    return-object p0

    .line 110
    :pswitch_e
    const-string p0, "STATUS_TIMEOUT"

    return-object p0

    .line 108
    :pswitch_11
    const-string p0, "STATUS_INCOMPLETE_NETWORK_UNAVAILABLE"

    return-object p0

    .line 106
    :pswitch_14
    const-string p0, "STATUS_INCOMPLETE_UNKNOWN"

    return-object p0

    .line 104
    :pswitch_17
    const-string p0, "STATUS_COMPLETED_WITH_REJECT"

    return-object p0

    .line 102
    :pswitch_1a
    const-string p0, "STATUS_COMPLETED_WITH_PASS"

    return-object p0

    .line 100
    :pswitch_1d
    const-string p0, "STATUS_UNKNOWN"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public getAppMetadataVerificationStatus()I
    .registers 1

    .line 161
    iget p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mAppMetadataVerificationStatus:I

    return p0
.end method

.method public getInternalStatus()I
    .registers 1

    .line 156
    iget p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mInternalStatus:I

    return p0
.end method

.method public isAppMetadataVerified()Z
    .registers 2

    .line 66
    iget p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mAppMetadataVerificationStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isLiteVerification()Z
    .registers 1

    .line 166
    iget-boolean p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mLiteVerification:Z

    return p0
.end method

.method public setAppMetadataVerificationStatus(I)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;
    .registers 4

    .line 198
    iput p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mAppMetadataVerificationStatus:I

    .line 199
    const-class v0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$AppMetadataVerificationStatus;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-object p0
.end method

.method public setInternalStatus(I)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;
    .registers 11

    .line 171
    iput p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mInternalStatus:I

    if-eqz p1, :cond_79

    const/4 v0, 0x1

    if-eq p1, v0, :cond_79

    const/4 v1, 0x2

    if-eq p1, v1, :cond_79

    const/4 v2, 0x3

    if-eq p1, v2, :cond_79

    const/4 v3, 0x4

    if-eq p1, v3, :cond_79

    const/4 v4, 0x5

    if-eq p1, v4, :cond_79

    const/4 v5, 0x6

    if-eq p1, v5, :cond_79

    const/4 v6, 0x7

    if-ne p1, v6, :cond_1a

    goto :goto_79

    .line 181
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "internalStatus was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mInternalStatus:I

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but must be one of: STATUS_UNKNOWN("

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_COMPLETED_WITH_PASS("

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_COMPLETED_WITH_REJECT("

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_INCOMPLETE_UNKNOWN("

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_INCOMPLETE_NETWORK_UNAVAILABLE("

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_TIMEOUT("

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_DISCONNECTED("

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), STATUS_INFEASIBLE("

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_79
    :goto_79
    return-object p0
.end method

.method public setLiteVerification(Z)Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;
    .registers 2

    .line 206
    iput-boolean p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mLiteVerification:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeveloperVerificationStatusInternal { internalStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mInternalStatus:I

    .line 217
    invoke-static {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appMetadataVerificationStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mAppMetadataVerificationStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", liteVerification = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->mLiteVerification:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
