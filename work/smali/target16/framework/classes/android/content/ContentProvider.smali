.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ContentInterface;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$Transport;,
        Landroid/content/ContentProvider$CallingIdentity;,
        Landroid/content/ContentProvider$PipeDataWriter;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContentProvider"


# instance fields
.field private greylist-max-r mAuthorities:[Ljava/lang/String;

.field private greylist mAuthority:Ljava/lang/String;

.field private blacklist mCallingAttributionSource:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/AttributionSource;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mContext:Landroid/content/Context;

.field private greylist-max-o mExported:Z

.field private greylist-max-o mMyUid:I

.field private greylist-max-o mNoPerms:Z

.field private greylist mPathPermissions:[Landroid/content/pm/PathPermission;

.field private greylist mReadPermission:Ljava/lang/String;

.field private greylist-max-o mSingleUser:Z

.field private blacklist mSystemUserOnly:Z

.field private greylist-max-o mTransport:Landroid/content/ContentProvider$Transport;

.field private blacklist mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

.field private greylist mWritePermission:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/content/ContentProvider;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMyUid(Landroid/content/ContentProvider;)I
    .registers 1

    iget p0, p0, Landroid/content/ContentProvider;->mMyUid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadPermission(Landroid/content/ContentProvider;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSingleUser(Landroid/content/ContentProvider;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemUserOnly(Landroid/content/ContentProvider;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/ContentProvider;->mSystemUserOnly:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWritePermission(Landroid/content/ContentProvider;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckPermission(Landroid/content/ContentProvider;Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->setCallingAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateIncomingAuthority(Landroid/content/ContentProvider;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smdeniedAccessSystemUserOnlyProvider(IZ)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/content/ContentProvider;->deniedAccessSystemUserOnlyProvider(IZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/ContentProvider;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    .line 164
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 182
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .registers 6

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    .line 164
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 203
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 206
    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 207
    return-void
.end method

.method private greylist-max-o attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V
    .registers 6

    .line 2659
    iput-boolean p3, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    .line 2660
    new-instance p3, Ljava/lang/ThreadLocal;

    invoke-direct {p3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p3, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    .line 2666
    iget-object p3, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-nez p3, :cond_71

    .line 2667
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2668
    if-eqz p1, :cond_21

    iget-object p3, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    if-eqz p3, :cond_21

    .line 2669
    iget-object p3, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p3, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2672
    :cond_21
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    iput p1, p0, Landroid/content/ContentProvider;->mMyUid:I

    .line 2673
    if-eqz p2, :cond_5a

    .line 2674
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    .line 2675
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    .line 2676
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    .line 2677
    iget-boolean p1, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    iput-boolean p1, p0, Landroid/content/ContentProvider;->mExported:Z

    .line 2678
    iget p1, p2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p1, p3

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_47

    move p1, p3

    goto :goto_48

    :cond_47
    move p1, v0

    :goto_48
    iput-boolean p1, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    .line 2679
    iget p1, p2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v1, 0x20000000

    and-int/2addr p1, v1

    if-eqz p1, :cond_52

    goto :goto_53

    :cond_52
    move p3, v0

    :goto_53
    iput-boolean p3, p0, Landroid/content/ContentProvider;->mSystemUserOnly:Z

    .line 2680
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->setAuthorities(Ljava/lang/String;)V

    .line 2682
    :cond_5a
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_6e

    .line 2683
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->setTransportLoggingEnabled(Z)V

    .line 2686
    :cond_6e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 2688
    :cond_71
    return-void
.end method

.method private blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 6

    .line 959
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 960
    const/4 p1, 0x0

    return p1

    .line 962
    :cond_c
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/AttributionSource;

    .line 963
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    .line 962
    const/4 p2, -0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryFromDataSource(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public static greylist coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .registers 2

    .line 225
    instance-of v0, p0, Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_b

    .line 226
    check-cast p0, Landroid/content/ContentProvider$Transport;

    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object p0

    return-object p0

    .line 228
    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist createContentUriForUser(Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2950
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2955
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2956
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2957
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2958
    return-object p0

    .line 2960
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2963
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2960
    const-string v0, "Given URI [%s] already has a user ID, different from given user handle [%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2966
    :cond_39
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2968
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2967
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2969
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 2951
    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given URI [%s] is not a content URI: "

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist deniedAccessSystemUserOnlyProvider(IZ)Z
    .registers 3

    .line 3003
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/multiuser/Flags;->enableSystemUserOnlyForServicesAndProviders()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static greylist-max-o getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2908
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2909
    :cond_4
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2910
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 2916
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2917
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2918
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2919
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getUserHandleFromUri(Landroid/net/Uri;)Landroid/os/UserHandle;
    .registers 2

    .line 2897
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getUserIdFromAuthority(Ljava/lang/String;)I
    .registers 2

    .line 2873
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o getUserIdFromAuthority(Ljava/lang/String;I)I
    .registers 4

    .line 2858
    if-nez p0, :cond_3

    return p1

    .line 2859
    :cond_3
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2860
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    return p1

    .line 2861
    :cond_d
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2863
    :try_start_12
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_16} :catch_17

    return p0

    .line 2864
    :catch_17
    move-exception p0

    .line 2865
    const-string p1, "ContentProvider"

    const-string v0, "Error parsing userId."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2866
    const/16 p0, -0x2710

    return p0
.end method

.method public static greylist-max-o getUserIdFromUri(Landroid/net/Uri;)I
    .registers 2

    .line 2886
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o getUserIdFromUri(Landroid/net/Uri;I)I
    .registers 2

    .line 2879
    if-nez p0, :cond_3

    return p1

    .line 2880
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static blacklist isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z
    .registers 2

    .line 161
    const-string/jumbo v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isContentRedirectionAllowedForUser(I)Z
    .registers 5

    .line 929
    const-string/jumbo v0, "media"

    iget-object v1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    .line 930
    iget-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 931
    if-ltz v0, :cond_1b

    .line 932
    iget-object p1, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    return p1

    .line 936
    :cond_1b
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 937
    if-eqz v0, :cond_50

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object v2

    .line 938
    invoke-virtual {v2}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 939
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 940
    if-eqz v0, :cond_50

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 941
    iget-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 942
    return v1

    .line 946
    :cond_50
    iget-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwnerForMedia:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 947
    return v1

    .line 949
    :cond_56
    return v1
.end method

.method public static greylist maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 5

    .line 2976
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 2977
    :cond_4
    const/4 v0, -0x2

    if-eq p1, v0, :cond_46

    .line 2978
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2979
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 2981
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2983
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 2986
    :cond_46
    return-object p0
.end method

.method private greylist-max-o maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3

    .line 2849
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v0, :cond_5

    .line 2850
    return-object p1

    .line 2852
    :cond_5
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private blacklist setCallingAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 4

    .line 1160
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1161
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1162
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCallingPackageChanged()V

    .line 1163
    return-object v0
.end method

.method private static blacklist traceBegin(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2990
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2993
    :cond_1a
    return-void
.end method

.method public static greylist-max-o uriHasUserId(Landroid/net/Uri;)Z
    .registers 1

    .line 2925
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 2926
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private blacklist validateIncomingAuthority(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2795
    invoke-static {p1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->matchesOurAuthorities(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 2796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The authority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not match the one of the contentProvider: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2798
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 2799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_52

    .line 2801
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2803
    :goto_52
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2805
    :cond_58
    return-void
.end method


# virtual methods
.method public whitelist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 2711
    invoke-virtual {p0, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    return-object p1
.end method

.method public whitelist applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 2717
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2718
    new-array v1, v0, [Landroid/content/ContentProviderResult;

    .line 2719
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_18

    .line 2720
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, p0, v1, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2719
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2722
    :cond_18
    return-object v1
.end method

.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4

    .line 2655
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 2656
    return-void
.end method

.method public greylist-max-r attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4

    .line 2644
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 2645
    return-void
.end method

.method public whitelist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6

    .line 1997
    array-length v0, p2

    .line 1998
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    .line 1999
    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1998
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2001
    :cond_c
    return v0
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 2751
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 2746
    invoke-virtual {p0, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 1842
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;II)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1920
    const/4 p1, -0x1

    return p1
.end method

.method greylist-max-o checkUser(IILandroid/content/Context;)Z
    .registers 7

    .line 896
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 898
    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSystemUserOnly:Z

    invoke-static {v0, v1}, Landroid/content/ContentProvider;->deniedAccessSystemUserOnlyProvider(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 899
    const/4 p1, 0x0

    return p1

    .line 902
    :cond_e
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_31

    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v1, :cond_1a

    goto :goto_31

    .line 905
    :cond_1a
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p3, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_30

    .line 907
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p3, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_30

    .line 913
    :cond_2b
    invoke-direct {p0, v0}, Landroid/content/ContentProvider;->isContentRedirectionAllowedForUser(I)Z

    move-result p1

    return p1

    .line 909
    :cond_30
    :goto_30
    return v2

    .line 903
    :cond_31
    :goto_31
    return v2
.end method

.method public final whitelist clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;
    .registers 5

    .line 1317
    new-instance v0, Landroid/content/ContentProvider$CallingIdentity;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1318
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/content/ContentProvider;->setCallingAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/content/ContentProvider$CallingIdentity;-><init>(Landroid/content/ContentProvider;JLandroid/content/AttributionSource;)V

    .line 1317
    return-object v0
.end method

.method public whitelist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 5

    .line 2060
    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 2061
    :goto_5
    nop

    .line 2062
    const-string v0, "android:query-arg-sql-selection"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2063
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2061
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public abstract whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 2791
    const-string/jumbo p1, "nothing to dump"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2792
    return-void
.end method

.method protected blacklist enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 971
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 972
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 973
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 974
    nop

    .line 975
    nop

    .line 977
    iget v6, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v5, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1e

    .line 978
    return v7

    .line 981
    :cond_1e
    iget-boolean v6, v0, Landroid/content/ContentProvider;->mExported:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_80

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 982
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v6

    .line 983
    if-eqz v6, :cond_3f

    .line 984
    invoke-direct {v0, v6, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v9

    .line 985
    if-nez v9, :cond_37

    .line 986
    return v7

    .line 988
    :cond_37
    nop

    .line 989
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v10, v9

    move-object v9, v6

    goto :goto_40

    .line 983
    :cond_3f
    move v10, v7

    .line 995
    :goto_40
    if-nez v6, :cond_44

    move v6, v8

    goto :goto_45

    :cond_44
    move v6, v7

    .line 997
    :goto_45
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v11

    .line 998
    if-eqz v11, :cond_7b

    .line 999
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 1000
    array-length v13, v11

    move v14, v7

    :goto_51
    if-ge v14, v13, :cond_78

    aget-object v15, v11, v14

    .line 1001
    move/from16 v16, v7

    invoke-virtual {v15}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v7

    .line 1002
    if-eqz v7, :cond_73

    invoke-virtual {v15, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_73

    .line 1003
    invoke-direct {v0, v7, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v6

    .line 1004
    if-nez v6, :cond_6a

    .line 1005
    return v16

    .line 1009
    :cond_6a
    nop

    .line 1010
    nop

    .line 1011
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object v9, v7

    move/from16 v6, v16

    .line 1000
    :cond_73
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v16

    goto :goto_51

    :cond_78
    move/from16 v16, v7

    goto :goto_7d

    .line 998
    :cond_7b
    move/from16 v16, v7

    .line 1019
    :goto_7d
    if-eqz v6, :cond_84

    return v16

    .line 981
    :cond_80
    move/from16 v16, v7

    .line 1023
    move/from16 v10, v16

    :cond_84
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1024
    iget-boolean v6, v0, Landroid/content/ContentProvider;->mSystemUserOnly:Z

    invoke-static {v2, v6}, Landroid/content/ContentProvider;->deniedAccessSystemUserOnlyProvider(IZ)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 1025
    const/4 v0, 0x2

    return v0

    .line 1027
    :cond_92
    iget-boolean v6, v0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v6, :cond_a3

    iget v6, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v6, v5}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v6

    if-nez v6, :cond_a3

    .line 1028
    invoke-static {v1, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_a4

    :cond_a3
    move-object v2, v1

    .line 1029
    :goto_a4
    invoke-virtual {v3, v2, v4, v5, v8}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    if-nez v2, :cond_ab

    .line 1031
    return v16

    .line 1036
    :cond_ab
    if-ne v10, v8, :cond_ae

    .line 1037
    return v8

    .line 1041
    :cond_ae
    const-string v2, "android.permission.MANAGE_DOCUMENTS"

    iget-object v3, v0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d9

    .line 1043
    iget-boolean v2, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v2, :cond_d6

    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or grantUriPermission()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_db

    .line 1046
    :cond_d6
    const-string v2, " requires the provider be exported, or grantUriPermission()"

    goto :goto_db

    .line 1042
    :cond_d9
    const-string v2, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    .line 1048
    :goto_db
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " uri "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected blacklist enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1057
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1058
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1059
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1060
    nop

    .line 1061
    nop

    .line 1063
    iget v6, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v5, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1e

    .line 1064
    return v7

    .line 1067
    :cond_1e
    iget-boolean v6, v0, Landroid/content/ContentProvider;->mExported:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_80

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 1068
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v6

    .line 1069
    if-eqz v6, :cond_3f

    .line 1070
    invoke-direct {v0, v6, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v9

    .line 1071
    if-nez v9, :cond_37

    .line 1072
    return v7

    .line 1074
    :cond_37
    nop

    .line 1075
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v10, v9

    move-object v9, v6

    goto :goto_40

    .line 1069
    :cond_3f
    move v10, v7

    .line 1081
    :goto_40
    if-nez v6, :cond_44

    move v6, v8

    goto :goto_45

    :cond_44
    move v6, v7

    .line 1083
    :goto_45
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v11

    .line 1084
    if-eqz v11, :cond_7b

    .line 1085
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 1086
    array-length v13, v11

    move v14, v7

    :goto_51
    if-ge v14, v13, :cond_78

    aget-object v15, v11, v14

    .line 1087
    move/from16 v16, v7

    invoke-virtual {v15}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v7

    .line 1088
    if-eqz v7, :cond_73

    invoke-virtual {v15, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_73

    .line 1089
    invoke-direct {v0, v7, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v6

    .line 1090
    if-nez v6, :cond_6a

    .line 1091
    return v16

    .line 1095
    :cond_6a
    nop

    .line 1096
    nop

    .line 1097
    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object v9, v7

    move/from16 v6, v16

    .line 1086
    :cond_73
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v16

    goto :goto_51

    :cond_78
    move/from16 v16, v7

    goto :goto_7d

    .line 1084
    :cond_7b
    move/from16 v16, v7

    .line 1105
    :goto_7d
    if-eqz v6, :cond_84

    return v16

    .line 1067
    :cond_80
    move/from16 v16, v7

    .line 1109
    move/from16 v10, v16

    :cond_84
    const/4 v2, 0x2

    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v2

    if-nez v2, :cond_8c

    .line 1111
    return v16

    .line 1116
    :cond_8c
    if-ne v10, v8, :cond_8f

    .line 1117
    return v8

    .line 1120
    :cond_8f
    iget-boolean v2, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v2, :cond_ad

    .line 1121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", or grantUriPermission()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_af

    .line 1122
    :cond_ad
    const-string v2, " requires the provider be exported, or grantUriPermission()"

    .line 1123
    :goto_af
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1124
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " uri "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public greylist-max-o getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 2

    .line 1444
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public final whitelist getCallingAttributionSource()Landroid/content/AttributionSource;
    .registers 5

    .line 1202
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1203
    if-eqz v0, :cond_19

    .line 1204
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1205
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1204
    invoke-virtual {v1, v2, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1207
    :cond_19
    return-object v0
.end method

.method public final whitelist getCallingAttributionTag()Ljava/lang/String;
    .registers 2

    .line 1224
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1225
    if-eqz v0, :cond_f

    .line 1226
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1228
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final blacklist getCallingDeviceId()I
    .registers 2

    .line 1238
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1239
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1240
    if-eqz v0, :cond_15

    .line 1241
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v0

    return v0

    .line 1244
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist getCallingFeatureId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1252
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getCallingPackage()Ljava/lang/String;
    .registers 2

    .line 1184
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_b

    .line 1186
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1185
    :goto_c
    return-object v0
.end method

.method public final whitelist getCallingPackageUnchecked()Ljava/lang/String;
    .registers 2

    .line 1271
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1272
    if-eqz v0, :cond_f

    .line 1273
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1275
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 1134
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist getIContentProvider()Landroid/content/IContentProvider;
    .registers 2

    .line 2634
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object v0
.end method

.method public final whitelist getPathPermissions()[Landroid/content/pm/PathPermission;
    .registers 2

    .line 1430
    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public final whitelist getReadPermission()Ljava/lang/String;
    .registers 2

    .line 1386
    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 2431
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public whitelist getTypeAnonymous(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 1807
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist getWritePermission()Ljava/lang/String;
    .registers 2

    .line 1408
    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 4

    .line 1977
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist isTemporary()Z
    .registers 2

    .line 2623
    const/4 v0, 0x0

    return v0
.end method

.method protected final greylist-max-o matchesOurAuthorities(Ljava/lang/String;)Z
    .registers 6

    .line 1354
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1355
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1357
    :cond_b
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 1358
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    .line 1359
    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_25

    .line 1360
    iget-object v3, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 p1, 0x1

    return p1

    .line 1359
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1363
    :cond_25
    return v1
.end method

.method public whitelist onCallingPackageChanged()V
    .registers 1

    .line 1287
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1498
    return-void
.end method

.method public abstract whitelist onCreate()Z
.end method

.method public whitelist onLowMemory()V
    .registers 1

    .line 1510
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 2

    .line 1514
    return-void
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2305
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2306
    if-eqz v1, :cond_10

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2367
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2181
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No files supported by provider at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2251
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method protected final whitelist openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2384
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2385
    if-eqz p1, :cond_16

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 2386
    :goto_17
    const/4 v3, 0x1

    if-eq v1, v3, :cond_53

    .line 2389
    if-eqz p1, :cond_1f

    .line 2390
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2392
    :cond_1f
    if-nez v1, :cond_3a

    .line 2393
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No entry for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2395
    :cond_3a
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple items at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2398
    :cond_53
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2399
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2400
    if-ltz v0, :cond_61

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    .line 2401
    :goto_62
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2402
    if-eqz v0, :cond_75

    .line 2406
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p1

    .line 2407
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 2403
    :cond_75
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Column _data not found."

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Landroid/content/ContentProvider$PipeDataWriter<",
            "TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2596
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 2598
    new-instance v0, Landroid/content/ContentProvider$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v7}, Landroid/content/ContentProvider$1;-><init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 2610
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2612
    const/4 p1, 0x0

    aget-object p1, v3, p1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p1

    .line 2613
    :catch_1c
    move-exception v0

    .line 2614
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "failure making pipe"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2481
    const-string p3, "*/*"

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string/jumbo v0, "r"

    if-eqz p3, :cond_10

    .line 2483
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1

    .line 2485
    :cond_10
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 2486
    if-eqz p3, :cond_21

    invoke-static {p3, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 2489
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1

    .line 2491
    :cond_21
    new-instance p3, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " as type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2550
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 13

    .line 1749
    if-eqz p3, :cond_3

    goto :goto_5

    :cond_3
    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 1753
    :goto_5
    const-string v0, "android:query-arg-sql-sort-order"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1754
    if-nez v0, :cond_1b

    const-string v1, "android:query-arg-sort-columns"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1755
    invoke-static {p3}, Landroid/content/ContentResolver;->createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_1c

    .line 1758
    :cond_1b
    move-object v6, v0

    :goto_1c
    nop

    .line 1761
    const-string v0, "android:query-arg-sql-selection"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1762
    const-string v0, "android:query-arg-sql-selection-args"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1758
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 7

    .line 1662
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .registers 4

    .line 1894
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 1936
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist requireContext()Landroid/content/Context;
    .registers 3

    .line 1147
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1148
    if-eqz v0, :cond_7

    .line 1151
    return-object v0

    .line 1149
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot find context from the provider."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V
    .registers 4

    .line 1329
    iget-wide v0, p1, Landroid/content/ContentProvider$CallingIdentity;->binderToken:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1330
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    iget-object p1, p1, Landroid/content/ContentProvider$CallingIdentity;->callingAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1331
    return-void
.end method

.method public final greylist setAppOps(II)V
    .registers 4

    .line 1436
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    if-nez v0, :cond_c

    .line 1437
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p1, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 1438
    iget-object p1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p2, p1, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 1440
    :cond_c
    return-void
.end method

.method protected final greylist-max-o setAuthorities(Ljava/lang/String;)V
    .registers 5

    .line 1341
    if-eqz p1, :cond_1b

    .line 1342
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 1343
    iput-object p1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 1344
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    goto :goto_1b

    .line 1346
    :cond_11
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 1347
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    .line 1350
    :cond_1b
    :goto_1b
    return-void
.end method

.method protected final whitelist setPathPermissions([Landroid/content/pm/PathPermission;)V
    .registers 2

    .line 1419
    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 1420
    return-void
.end method

.method protected final whitelist setReadPermission(Ljava/lang/String;)V
    .registers 2

    .line 1375
    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 1376
    return-void
.end method

.method public final blacklist setTransportLoggingEnabled(Z)V
    .registers 4

    .line 1449
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    if-nez v0, :cond_5

    .line 1450
    return-void

    .line 1452
    :cond_5
    if-eqz p1, :cond_19

    .line 1453
    iget-object p1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    new-instance v0, Landroid/content/LoggingContentInterface;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/content/LoggingContentInterface;-><init>(Ljava/lang/String;Landroid/content/ContentInterface;)V

    iput-object v0, p1, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    goto :goto_1d

    .line 1455
    :cond_19
    iget-object p1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput-object p0, p1, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 1457
    :goto_1d
    return-void
.end method

.method protected final whitelist setWritePermission(Ljava/lang/String;)V
    .registers 2

    .line 1397
    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 1398
    return-void
.end method

.method public whitelist shutdown()V
    .registers 3

    .line 2777
    const-string v0, "ContentProvider"

    const-string v1, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    return-void
.end method

.method public whitelist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 1861
    return-object p1
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 6

    .line 2110
    if-eqz p3, :cond_3

    goto :goto_5

    :cond_3
    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 2111
    :goto_5
    nop

    .line 2112
    const-string v0, "android:query-arg-sql-selection"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2113
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 2111
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public abstract whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public blacklist validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2810
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2811
    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-nez v1, :cond_79

    .line 2812
    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v2

    .line 2813
    iget-object v3, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    iget-boolean v4, p0, Landroid/content/ContentProvider;->mSystemUserOnly:Z

    invoke-static {v3, v4}, Landroid/content/ContentProvider;->deniedAccessSystemUserOnlyProvider(IZ)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 2818
    if-eq v2, v1, :cond_79

    const/16 v1, -0x2710

    if-eq v2, v1, :cond_79

    iget-object v1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2822
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eq v2, v1, :cond_79

    .line 2825
    invoke-direct {p0, v2}, Landroid/content/ContentProvider;->isContentRedirectionAllowedForUser(I)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_79

    .line 2826
    :cond_30
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trying to query a ContentProvider in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2827
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with a uri belonging to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2815
    :cond_5a
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to query a SYSTEM user only content provider from user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2816
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2830
    :cond_79
    :goto_79
    invoke-direct {p0, v0}, Landroid/content/ContentProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 2834
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 2835
    if-eqz v0, :cond_c8

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c8

    .line 2836
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2837
    const-string v2, "//+"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Normalized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to avoid possible security issues"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ContentProvider"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    return-object v0

    .line 2842
    :cond_c8
    return-object p1
.end method
