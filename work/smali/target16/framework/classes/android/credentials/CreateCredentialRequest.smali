.class public final Landroid/credentials/CreateCredentialRequest;
.super Ljava/lang/Object;
.source "CreateCredentialRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/CreateCredentialRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/CreateCredentialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAlwaysSendAppInfoToProvider:Z

.field private final blacklist mCandidateQueryData:Landroid/os/Bundle;

.field private final blacklist mCredentialData:Landroid/os/Bundle;

.field private final blacklist mIsSystemProviderRequired:Z

.field private final blacklist mOrigin:Ljava/lang/String;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 231
    new-instance v0, Landroid/credentials/CreateCredentialRequest$1;

    invoke-direct {v0}, Landroid/credentials/CreateCredentialRequest$1;-><init>()V

    sput-object v0, Landroid/credentials/CreateCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/credentials/CreateCredentialRequest;->mOrigin:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    .line 222
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, v5, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 223
    iput-object v1, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    .line 224
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    invoke-static {p1, v5, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 225
    iput-object v2, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    .line 226
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-static {p1, v5, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 227
    iput-boolean v3, p0, Landroid/credentials/CreateCredentialRequest;->mIsSystemProviderRequired:Z

    .line 228
    iput-boolean v4, p0, Landroid/credentials/CreateCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    .line 229
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/CreateCredentialRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/CreateCredentialRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/lang/String;)V
    .registers 8

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const-string/jumbo v0, "type must not be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    .line 205
    const-string p1, "credentialData must not be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    .line 206
    const-string p1, "candidateQueryData must not be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    .line 208
    iput-boolean p4, p0, Landroid/credentials/CreateCredentialRequest;->mIsSystemProviderRequired:Z

    .line 209
    iput-boolean p5, p0, Landroid/credentials/CreateCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    .line 210
    iput-object p6, p0, Landroid/credentials/CreateCredentialRequest;->mOrigin:Ljava/lang/String;

    .line 211
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/lang/String;Landroid/credentials/CreateCredentialRequest-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/credentials/CreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist alwaysSendAppInfoToProvider()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Landroid/credentials/CreateCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCandidateQueryData()Landroid/os/Bundle;
    .registers 2

    .line 120
    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getCredentialData()Landroid/os/Bundle;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getOrigin()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isSystemProviderRequired()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Landroid/credentials/CreateCredentialRequest;->mIsSystemProviderRequired:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateCredentialRequest {type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", credentialData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", candidateQueryData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSystemProviderRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/credentials/CreateCredentialRequest;->mIsSystemProviderRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alwaysSendAppInfoToProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/credentials/CreateCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/credentials/CreateCredentialRequest;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 149
    iget-object p2, p0, Landroid/credentials/CreateCredentialRequest;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Landroid/credentials/CreateCredentialRequest;->mCredentialData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 151
    iget-object p2, p0, Landroid/credentials/CreateCredentialRequest;->mCandidateQueryData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 152
    iget-boolean p2, p0, Landroid/credentials/CreateCredentialRequest;->mIsSystemProviderRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 153
    iget-boolean p2, p0, Landroid/credentials/CreateCredentialRequest;->mAlwaysSendAppInfoToProvider:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 154
    iget-object p2, p0, Landroid/credentials/CreateCredentialRequest;->mOrigin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 155
    return-void
.end method
