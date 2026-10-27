.class Landroid/app/appfunctions/ExecuteAppFunctionResponse$1;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/ExecuteAppFunctionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appfunctions/ExecuteAppFunctionResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/ExecuteAppFunctionResponse;
    .registers 5

    .line 50
    sget-object v0, Landroid/app/appfunctions/GenericDocumentWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appfunctions/GenericDocumentWrapper;

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appfunctions/GenericDocumentWrapper;

    .line 53
    const-class v1, Landroid/os/Bundle;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 56
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->appFunctionAccessApiEnabled()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 57
    sget-object v2, Landroid/app/appfunctions/AppFunctionUriGrant;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 60
    new-instance v2, Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    .line 61
    invoke-virtual {v0}, Landroid/app/appfunctions/GenericDocumentWrapper;->getValue()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    invoke-direct {v2, v0, v1, p1}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;-><init>(Landroid/app/appsearch/GenericDocument;Landroid/os/Bundle;Ljava/util/List;)V

    .line 60
    return-object v2

    .line 63
    :cond_3a
    new-instance p1, Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    invoke-virtual {v0}, Landroid/app/appfunctions/GenericDocumentWrapper;->getValue()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/app/appfunctions/ExecuteAppFunctionResponse;-><init>(Landroid/app/appsearch/GenericDocument;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/ExecuteAppFunctionResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/appfunctions/ExecuteAppFunctionResponse;
    .registers 2

    .line 69
    new-array p1, p1, [Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/ExecuteAppFunctionResponse$1;->newArray(I)[Landroid/app/appfunctions/ExecuteAppFunctionResponse;

    move-result-object p1

    return-object p1
.end method
