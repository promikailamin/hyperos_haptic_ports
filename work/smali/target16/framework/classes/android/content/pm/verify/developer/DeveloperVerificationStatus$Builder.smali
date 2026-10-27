.class public final Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;
.super Ljava/lang/Object;
.source "DeveloperVerificationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/verify/developer/DeveloperVerificationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppMetadataVerificationStatus:I

.field private blacklist mFailuresMessage:Ljava/lang/String;

.field private blacklist mIsLiteVerification:Z

.field private blacklist mIsVerified:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mIsVerified:Z

    .line 120
    iput-boolean v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mIsLiteVerification:Z

    .line 121
    iput v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mAppMetadataVerificationStatus:I

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mFailuresMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/content/pm/verify/developer/DeveloperVerificationStatus;
    .registers 7

    .line 173
    new-instance v0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus;

    iget-boolean v1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mIsVerified:Z

    iget-boolean v2, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mIsLiteVerification:Z

    iget v3, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mAppMetadataVerificationStatus:I

    iget-object v4, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mFailuresMessage:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus;-><init>(ZZILjava/lang/String;Landroid/content/pm/verify/developer/DeveloperVerificationStatus-IA;)V

    return-object v0
.end method

.method public whitelist setAppMetadataVerificationStatus(I)Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;
    .registers 2

    .line 164
    iput p1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mAppMetadataVerificationStatus:I

    .line 165
    return-object p0
.end method

.method public whitelist setFailureMessage(Ljava/lang/String;)Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;
    .registers 2

    .line 149
    iput-object p1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mFailuresMessage:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public whitelist setLiteVerification(Z)Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;
    .registers 2

    .line 140
    iput-boolean p1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mIsLiteVerification:Z

    .line 141
    return-object p0
.end method

.method public whitelist setVerified(Z)Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;
    .registers 2

    .line 130
    iput-boolean p1, p0, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->mIsVerified:Z

    .line 131
    return-object p0
.end method
