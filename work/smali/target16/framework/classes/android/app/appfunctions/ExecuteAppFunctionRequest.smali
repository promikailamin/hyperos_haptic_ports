.class public final Landroid/app/appfunctions/ExecuteAppFunctionRequest;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/ExecuteAppFunctionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttribution:Landroid/app/appfunctions/AppFunctionAttribution;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFunctionIdentifier:Ljava/lang/String;

.field private final blacklist mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

.field private final blacklist mTargetPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$1;

    invoke-direct {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;Landroid/app/appfunctions/AppFunctionAttribution;)V
    .registers 6

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mTargetPackageName:Ljava/lang/String;

    .line 109
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mFunctionIdentifier:Ljava/lang/String;

    .line 110
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mExtras:Landroid/os/Bundle;

    .line 111
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appfunctions/GenericDocumentWrapper;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

    .line 112
    iput-object p5, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mAttribution:Landroid/app/appfunctions/AppFunctionAttribution;

    .line 113
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;Landroid/app/appfunctions/AppFunctionAttribution;Landroid/app/appfunctions/ExecuteAppFunctionRequest-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;Landroid/app/appfunctions/AppFunctionAttribution;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAttribution()Landroid/app/appfunctions/AppFunctionAttribution;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mAttribution:Landroid/app/appfunctions/AppFunctionAttribution;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getFunctionIdentifier()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mFunctionIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParameters()Landroid/app/appsearch/GenericDocument;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0}, Landroid/app/appfunctions/GenericDocumentWrapper;->getValue()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequestDataSize()I
    .registers 3

    .line 175
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mFunctionIdentifier:Ljava/lang/String;

    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

    .line 177
    invoke-virtual {v1}, Landroid/app/appfunctions/GenericDocumentWrapper;->getDataSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mExtras:Landroid/os/Bundle;

    .line 178
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    return v0
.end method

.method public whitelist getTargetPackageName()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 183
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mFunctionIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/app/appfunctions/GenericDocumentWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 187
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appFunctionAccessApiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 188
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mAttribution:Landroid/app/appfunctions/AppFunctionAttribution;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 190
    :cond_1f
    return-void
.end method
