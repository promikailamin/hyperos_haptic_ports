.class public final Landroid/credentials/selection/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/selection/RequestInfo$RequestType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_REQUEST_INFO:Ljava/lang/String; = "android.credentials.selection.extra.REQUEST_INFO"

.field public static final whitelist TYPE_CREATE:Ljava/lang/String; = "android.credentials.selection.TYPE_CREATE"

.field public static final whitelist TYPE_GET:Ljava/lang/String; = "android.credentials.selection.TYPE_GET"

.field public static final blacklist TYPE_GET_VIA_REGISTRY:Ljava/lang/String; = "android.credentials.selection.TYPE_GET_VIA_REGISTRY"

.field public static final whitelist TYPE_UNDEFINED:Ljava/lang/String; = "android.credentials.selection.TYPE_UNDEFINED"


# instance fields
.field private final blacklist mCreateCredentialRequest:Landroid/credentials/CreateCredentialRequest;

.field private final blacklist mDefaultProviderIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGetCredentialRequest:Landroid/credentials/GetCredentialRequest;

.field private final blacklist mHasPermissionToOverrideDefault:Z

.field private final blacklist mIsShowAllOptionsRequested:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRegistryProviderIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToken:Landroid/os/IBinder;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 302
    new-instance v0, Landroid/credentials/selection/RequestInfo$1;

    invoke-direct {v0}, Landroid/credentials/selection/RequestInfo$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/CreateCredentialRequest;Landroid/credentials/GetCredentialRequest;ZLjava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/credentials/CreateCredentialRequest;",
            "Landroid/credentials/GetCredentialRequest;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Landroid/credentials/selection/RequestInfo;->mToken:Landroid/os/IBinder;

    .line 250
    iput-object p2, p0, Landroid/credentials/selection/RequestInfo;->mType:Ljava/lang/String;

    .line 251
    iput-object p3, p0, Landroid/credentials/selection/RequestInfo;->mPackageName:Ljava/lang/String;

    .line 252
    iput-object p4, p0, Landroid/credentials/selection/RequestInfo;->mCreateCredentialRequest:Landroid/credentials/CreateCredentialRequest;

    .line 253
    iput-object p5, p0, Landroid/credentials/selection/RequestInfo;->mGetCredentialRequest:Landroid/credentials/GetCredentialRequest;

    .line 254
    iput-boolean p6, p0, Landroid/credentials/selection/RequestInfo;->mHasPermissionToOverrideDefault:Z

    .line 255
    if-nez p7, :cond_16

    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    :cond_16
    iput-object p7, p0, Landroid/credentials/selection/RequestInfo;->mDefaultProviderIds:Ljava/util/List;

    .line 256
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/credentials/selection/RequestInfo;->mRegistryProviderIds:Ljava/util/List;

    .line 257
    iput-boolean p8, p0, Landroid/credentials/selection/RequestInfo;->mIsShowAllOptionsRequested:Z

    .line 258
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 264
    sget-object v3, Landroid/credentials/CreateCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 265
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/credentials/CreateCredentialRequest;

    .line 266
    sget-object v4, Landroid/credentials/GetCredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 267
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/credentials/GetCredentialRequest;

    .line 269
    iput-object v0, p0, Landroid/credentials/selection/RequestInfo;->mToken:Landroid/os/IBinder;

    .line 270
    const-class v0, Landroid/annotation/NonNull;

    iget-object v5, p0, Landroid/credentials/selection/RequestInfo;->mToken:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-static {v0, v6, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 271
    iput-object v1, p0, Landroid/credentials/selection/RequestInfo;->mType:Ljava/lang/String;

    .line 272
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/credentials/selection/RequestInfo;->mType:Ljava/lang/String;

    invoke-static {v0, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 273
    iput-object v2, p0, Landroid/credentials/selection/RequestInfo;->mPackageName:Ljava/lang/String;

    .line 274
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/credentials/selection/RequestInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 275
    iput-object v3, p0, Landroid/credentials/selection/RequestInfo;->mCreateCredentialRequest:Landroid/credentials/CreateCredentialRequest;

    .line 276
    iput-object v4, p0, Landroid/credentials/selection/RequestInfo;->mGetCredentialRequest:Landroid/credentials/GetCredentialRequest;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/credentials/selection/RequestInfo;->mHasPermissionToOverrideDefault:Z

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/selection/RequestInfo;->mDefaultProviderIds:Ljava/util/List;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/credentials/selection/RequestInfo;->mRegistryProviderIds:Ljava/util/List;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/credentials/selection/RequestInfo;->mIsShowAllOptionsRequested:Z

    .line 281
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/RequestInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/selection/RequestInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist newCreateRequestInfo(Landroid/os/IBinder;Landroid/credentials/CreateCredentialRequest;Ljava/lang/String;ZLjava/util/List;Z)Landroid/credentials/selection/RequestInfo;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/credentials/CreateCredentialRequest;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/credentials/selection/RequestInfo;"
        }
    .end annotation

    .line 127
    new-instance v0, Landroid/credentials/selection/RequestInfo;

    const-string v2, "android.credentials.selection.TYPE_CREATE"

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/credentials/selection/RequestInfo;-><init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/CreateCredentialRequest;Landroid/credentials/GetCredentialRequest;ZLjava/util/List;Z)V

    return-object v0
.end method

.method public static blacklist newGetRequestInfo(Landroid/os/IBinder;Landroid/credentials/GetCredentialRequest;Ljava/lang/String;ZZ)Landroid/credentials/selection/RequestInfo;
    .registers 14

    .line 144
    new-instance v0, Landroid/credentials/selection/RequestInfo;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "android.credentials.selection.TYPE_GET"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/credentials/selection/RequestInfo;-><init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/CreateCredentialRequest;Landroid/credentials/GetCredentialRequest;ZLjava/util/List;Z)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCreateCredentialRequest()Landroid/credentials/CreateCredentialRequest;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mCreateCredentialRequest:Landroid/credentials/CreateCredentialRequest;

    return-object v0
.end method

.method public whitelist getDefaultProviderIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mDefaultProviderIds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getGetCredentialRequest()Landroid/credentials/GetCredentialRequest;
    .registers 2

    .line 221
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mGetCredentialRequest:Landroid/credentials/GetCredentialRequest;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRegistryProviderIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mRegistryProviderIds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRequestToken()Landroid/credentials/selection/RequestToken;
    .registers 3

    .line 191
    new-instance v0, Landroid/credentials/selection/RequestToken;

    iget-object v1, p0, Landroid/credentials/selection/RequestInfo;->mToken:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/credentials/selection/RequestToken;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist hasPermissionToOverrideDefault()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Landroid/credentials/selection/RequestInfo;->mHasPermissionToOverrideDefault:Z

    return v0
.end method

.method public whitelist isShowAllOptionsRequested()Z
    .registers 2

    .line 239
    iget-boolean v0, p0, Landroid/credentials/selection/RequestInfo;->mIsShowAllOptionsRequested:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 285
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 286
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mCreateCredentialRequest:Landroid/credentials/CreateCredentialRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 289
    iget-object v0, p0, Landroid/credentials/selection/RequestInfo;->mGetCredentialRequest:Landroid/credentials/GetCredentialRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 290
    iget-boolean p2, p0, Landroid/credentials/selection/RequestInfo;->mHasPermissionToOverrideDefault:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 291
    iget-object p2, p0, Landroid/credentials/selection/RequestInfo;->mDefaultProviderIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 292
    iget-object p2, p0, Landroid/credentials/selection/RequestInfo;->mRegistryProviderIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 293
    iget-boolean p2, p0, Landroid/credentials/selection/RequestInfo;->mIsShowAllOptionsRequested:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    return-void
.end method
