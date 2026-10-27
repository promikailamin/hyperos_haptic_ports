.class public final Landroid/app/appfunctions/ExecuteAppFunctionResponse;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/ExecuteAppFunctionResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PROPERTY_RETURN_VALUE:Ljava/lang/String; = "androidAppfunctionsReturnValue"


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

.field private final blacklist mUriGrants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/appfunctions/AppFunctionUriGrant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionResponse$1;

    invoke-direct {v0}, Landroid/app/appfunctions/ExecuteAppFunctionResponse$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/GenericDocument;)V
    .registers 3

    .line 112
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;-><init>(Landroid/app/appsearch/GenericDocument;Landroid/os/Bundle;)V

    .line 113
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/appsearch/GenericDocument;Landroid/os/Bundle;)V
    .registers 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/GenericDocument;

    invoke-direct {v0, p1}, Landroid/app/appfunctions/GenericDocumentWrapper;-><init>(Landroid/app/appsearch/GenericDocument;)V

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    .line 122
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mUriGrants:Ljava/util/List;

    .line 124
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/appsearch/GenericDocument;Landroid/os/Bundle;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/appsearch/GenericDocument;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/app/appfunctions/AppFunctionUriGrant;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/GenericDocument;

    invoke-direct {v0, p1}, Landroid/app/appfunctions/GenericDocumentWrapper;-><init>(Landroid/app/appsearch/GenericDocument;)V

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    .line 140
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    .line 141
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mUriGrants:Ljava/util/List;

    .line 142
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getResponseDataSize()I
    .registers 3

    .line 190
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0}, Landroid/app/appfunctions/GenericDocumentWrapper;->getDataSize()I

    move-result v0

    iget-object v1, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getResultDocument()Landroid/app/appsearch/GenericDocument;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0}, Landroid/app/appfunctions/GenericDocumentWrapper;->getValue()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUriGrants()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/appfunctions/AppFunctionUriGrant;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mUriGrants:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 200
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mResultDocumentWrapper:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/app/appfunctions/GenericDocumentWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 201
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 202
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appFunctionAccessApiEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 203
    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionResponse;->mUriGrants:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 205
    :cond_15
    return-void
.end method
