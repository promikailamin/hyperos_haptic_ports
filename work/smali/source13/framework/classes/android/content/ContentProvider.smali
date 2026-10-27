.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ContentInterface;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$PipeDataWriter;,
        Landroid/content/ContentProvider$CallingIdentity;,
        Landroid/content/ContentProvider$Transport;
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

.field private blacklist mContentProviderMonitor:Landroid/os/perfdebug/ContentProviderMonitor;

.field private greylist mContext:Landroid/content/Context;

.field private greylist-max-o mExported:Z

.field private greylist-max-o mMyUid:I

.field private greylist-max-o mNoPerms:Z

.field private greylist mPathPermissions:[Landroid/content/pm/PathPermission;

.field private greylist mReadPermission:Ljava/lang/String;

.field private greylist-max-o mSingleUser:Z

.field private greylist-max-o mTransport:Landroid/content/ContentProvider$Transport;

.field private blacklist mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

.field private greylist mWritePermission:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmReadPermission(Landroid/content/ContentProvider;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object p0
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

.method static bridge synthetic blacklist -$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/ContentProvider;->traceBegin(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    .line 156
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 158
    invoke-static {}, Landroid/os/perfdebug/ContentProviderMonitor;->newContentProviderMonitor()Landroid/os/perfdebug/ContentProviderMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContentProviderMonitor:Landroid/os/perfdebug/ContentProviderMonitor;

    .line 176
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pathPermissions"    # [Landroid/content/pm/PathPermission;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    .line 156
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 158
    invoke-static {}, Landroid/os/perfdebug/ContentProviderMonitor;->newContentProviderMonitor()Landroid/os/perfdebug/ContentProviderMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContentProviderMonitor:Landroid/os/perfdebug/ContentProviderMonitor;

    .line 197
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 200
    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 201
    return-void
.end method

.method private greylist-max-o attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;
    .param p3, "testing"    # Z

    .line 2437
    iput-boolean p3, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    .line 2438
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    .line 2444
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_70

    .line 2445
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2446
    if-eqz p1, :cond_1f

    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_1f

    .line 2447
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2450
    :cond_1f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    .line 2451
    if-eqz p2, :cond_4b

    .line 2452
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    .line 2453
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    .line 2454
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    .line 2455
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    .line 2456
    iget v0, p2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    iput-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    .line 2457
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setAuthorities(Ljava/lang/String;)V

    .line 2459
    :cond_4b
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_5f

    .line 2460
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setTransportLoggingEnabled(Z)V

    .line 2464
    :cond_5f
    iget-object v0, p0, Landroid/content/ContentProvider;->mContentProviderMonitor:Landroid/os/perfdebug/ContentProviderMonitor;

    if-eqz v0, :cond_66

    .line 2465
    invoke-virtual {v0}, Landroid/os/perfdebug/ContentProviderMonitor;->monitorCreateBegin()V

    .line 2468
    :cond_66
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 2470
    iget-object v0, p0, Landroid/content/ContentProvider;->mContentProviderMonitor:Landroid/os/perfdebug/ContentProviderMonitor;

    if-eqz v0, :cond_70

    .line 2471
    invoke-virtual {v0, p2}, Landroid/os/perfdebug/ContentProviderMonitor;->monitorCreateEnd(Landroid/content/pm/ProviderInfo;)V

    .line 2475
    :cond_70
    return-void
.end method

.method private blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I
    .registers 7
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;

    .line 804
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 805
    const/4 v0, 0x0

    return v0

    .line 807
    :cond_c
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Landroid/content/AttributionSource;

    .line 808
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    const/4 v3, 0x0

    .line 807
    invoke-static {v0, p1, v1, v2, v3}, Landroid/content/PermissionChecker;->checkPermissionForDataDeliveryFromDataSource(Landroid/content/Context;Ljava/lang/String;ILandroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static greylist coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .registers 2
    .param p0, "abstractInterface"    # Landroid/content/IContentProvider;

    .line 219
    instance-of v0, p0, Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_c

    .line 220
    move-object v0, p0

    check-cast v0, Landroid/content/ContentProvider$Transport;

    invoke-virtual {v0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0

    .line 222
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist createContentUriForUser(Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;
    .registers 7
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2720
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6f

    .line 2725
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 2726
    .local v0, "userId":I
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2727
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2728
    return-object p0

    .line 2730
    :cond_27
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    .line 2733
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    .line 2730
    const-string v1, "Given URI [%s] already has a user ID, different from given user handle [%s]"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2736
    :cond_3e
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 2737
    .local v1, "builder":Landroid/net/Uri$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2738
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2737
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2739
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 2721
    .end local v0    # "userId":I
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string v1, "Given URI [%s] is not a content URI: "

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "auth"    # Ljava/lang/String;

    .line 2681
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2682
    :cond_4
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2683
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2688
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2689
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2690
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2691
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getUserHandleFromUri(Landroid/net/Uri;)Landroid/os/UserHandle;
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2671
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getUserIdFromAuthority(Ljava/lang/String;)I
    .registers 2
    .param p0, "auth"    # Ljava/lang/String;

    .line 2650
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getUserIdFromAuthority(Ljava/lang/String;I)I
    .registers 7
    .param p0, "auth"    # Ljava/lang/String;
    .param p1, "defaultUserId"    # I

    .line 2636
    if-nez p0, :cond_3

    return p1

    .line 2637
    :cond_3
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2638
    .local v0, "end":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    return p1

    .line 2639
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2641
    .local v1, "userIdString":Ljava/lang/String;
    :try_start_12
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_16} :catch_17

    return v2

    .line 2642
    :catch_17
    move-exception v2

    .line 2643
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ContentProvider"

    const-string v4, "Error parsing userId."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2644
    const/16 v3, -0x2710

    return v3
.end method

.method public static greylist-max-o getUserIdFromUri(Landroid/net/Uri;)I
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2661
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getUserIdFromUri(Landroid/net/Uri;I)I
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "defaultUserId"    # I

    .line 2655
    if-nez p0, :cond_3

    return p1

    .line 2656
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "authority"    # Ljava/lang/String;

    .line 153
    const-string/jumbo v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static greylist maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .line 2745
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 2746
    :cond_4
    const/4 v0, -0x2

    if-eq p1, v0, :cond_46

    .line 2747
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2748
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 2750
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2751
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2752
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 2755
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_46
    return-object p0
.end method

.method private greylist-max-o maybeGetUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 2628
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v0, :cond_5

    .line 2629
    return-object p1

    .line 2631
    :cond_5
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setCallingAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 1002
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1003
    .local v0, "original":Landroid/content/AttributionSource;
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1004
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCallingPackageChanged()V

    .line 1005
    return-object v0
.end method

.method private static blacklist traceBegin(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "subInfo"    # Ljava/lang/String;

    .line 2759
    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2762
    :cond_1a
    return-void
.end method

.method public static greylist-max-o uriHasUserId(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 2696
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return v0

    .line 2697
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist validateIncomingAuthority(Ljava/lang/String;)V
    .registers 5
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2582
    invoke-static {p1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->matchesOurAuthorities(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 2583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The authority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not match the one of the contentProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2585
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v1, :cond_3b

    .line 2586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    .line 2588
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2590
    :goto_52
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2592
    .end local v0    # "message":Ljava/lang/String;
    :cond_58
    return-void
.end method


# virtual methods
.method public whitelist applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 4
    .param p1, "authority"    # Ljava/lang/String;
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

    .line 2498
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
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

    .line 2504
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2505
    .local v0, "numOperations":I
    new-array v1, v0, [Landroid/content/ContentProviderResult;

    .line 2506
    .local v1, "results":[Landroid/content/ContentProviderResult;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 2507
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, p0, v1, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2506
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2509
    .end local v2    # "i":I
    :cond_18
    return-object v1
.end method

.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 2433
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 2434
    return-void
.end method

.method public greylist-max-r attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 2422
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 2423
    return-void
.end method

.method public whitelist bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 1780
    array-length v0, p2

    .line 1781
    .local v0, "numValues":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_c

    .line 1782
    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1781
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1784
    .end local v1    # "i":I
    :cond_c
    return v0
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2538
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 2533
    invoke-virtual {p0, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .param p1, "url"    # Landroid/net/Uri;

    .line 1625
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist checkUriPermission(Landroid/net/Uri;II)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1703
    const/4 v0, -0x1

    return v0
.end method

.method greylist-max-o checkUser(IILandroid/content/Context;)Z
    .registers 12
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 747
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 749
    .local v0, "callingUserId":I
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_88

    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v1, :cond_11

    goto/16 :goto_88

    .line 754
    :cond_11
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/xspace/XSpaceManagerStub;->isUidBelongtoXSpace(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 755
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-nez v1, :cond_22

    .line 756
    return v2

    .line 759
    :cond_22
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p3, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_87

    .line 761
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p3, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_33

    goto :goto_87

    .line 766
    :cond_33
    iget-object v1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_86

    .line 767
    iget-object v1, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_4b

    .line 768
    iget-object v1, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1

    .line 773
    :cond_4b
    :try_start_4b
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 774
    .local v1, "callingUser":Landroid/os/UserHandle;
    iget-object v4, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "system"

    invoke-virtual {v4, v5, v3, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 776
    .local v4, "callingUserContext":Landroid/content/Context;
    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 778
    .local v5, "um":Landroid/os/UserManager;
    if-eqz v5, :cond_7e

    invoke-virtual {v5}, Landroid/os/UserManager;->isCloneProfile()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 779
    invoke-virtual {v5, v1}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v6

    .line 781
    .local v6, "parent":Landroid/os/UserHandle;
    if-eqz v6, :cond_7e

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 782
    iget-object v7, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_7d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_7d} :catch_7f

    .line 783
    return v2

    .line 788
    .end local v1    # "callingUser":Landroid/os/UserHandle;
    .end local v4    # "callingUserContext":Landroid/content/Context;
    .end local v5    # "um":Landroid/os/UserManager;
    .end local v6    # "parent":Landroid/os/UserHandle;
    :cond_7e
    goto :goto_80

    .line 786
    :catch_7f
    move-exception v1

    .line 790
    :goto_80
    iget-object v1, p0, Landroid/content/ContentProvider;->mUsersRedirectedToOwner:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 791
    return v3

    .line 794
    :cond_86
    return v3

    .line 763
    :cond_87
    :goto_87
    return v2

    .line 750
    :cond_88
    :goto_88
    return v2
.end method

.method public final whitelist clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;
    .registers 5

    .line 1134
    new-instance v0, Landroid/content/ContentProvider$CallingIdentity;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1135
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/content/ContentProvider;->setCallingAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/content/ContentProvider$CallingIdentity;-><init>(Landroid/content/ContentProvider;JLandroid/content/AttributionSource;)V

    .line 1134
    return-object v0
.end method

.method public whitelist delete(Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1843
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_6
    move-object p2, v0

    .line 1844
    nop

    .line 1845
    const-string v0, "android:query-arg-sql-selection"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1846
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1844
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2578
    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2579
    return-void
.end method

.method protected blacklist enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I
    .registers 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 816
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 817
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 818
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 819
    .local v5, "uid":I
    const/4 v6, 0x0

    .line 820
    .local v6, "missingPerm":Ljava/lang/String;
    const/4 v7, 0x0

    .line 822
    .local v7, "strongestResult":I
    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v5, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1e

    .line 823
    return v9

    .line 826
    :cond_1e
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_7d

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 827
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v8

    .line 828
    .local v8, "componentPerm":Ljava/lang/String;
    if-eqz v8, :cond_3a

    .line 829
    invoke-direct {v0, v8, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v11

    .line 830
    .local v11, "result":I
    if-nez v11, :cond_35

    .line 831
    return v9

    .line 833
    :cond_35
    move-object v6, v8

    .line 834
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 840
    .end local v11    # "result":I
    :cond_3a
    if-nez v8, :cond_3e

    const/4 v11, 0x1

    goto :goto_3f

    :cond_3e
    move v11, v9

    .line 842
    .local v11, "allowDefaultRead":Z
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v12

    .line 843
    .local v12, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v12, :cond_79

    .line 844
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 845
    .local v13, "path":Ljava/lang/String;
    array-length v14, v12

    move v15, v9

    :goto_4b
    if-ge v15, v14, :cond_77

    aget-object v10, v12, v15

    .line 846
    .local v10, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v10}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v9

    .line 847
    .local v9, "pathPerm":Ljava/lang/String;
    if-eqz v9, :cond_6f

    invoke-virtual {v10, v13}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6f

    .line 848
    move-object/from16 v16, v6

    .end local v6    # "missingPerm":Ljava/lang/String;
    .local v16, "missingPerm":Ljava/lang/String;
    invoke-direct {v0, v9, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v6

    .line 849
    .local v6, "result":I
    if-nez v6, :cond_65

    .line 850
    const/4 v14, 0x0

    return v14

    .line 854
    :cond_65
    const/4 v11, 0x0

    .line 855
    move-object/from16 v16, v9

    .line 856
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v6, v16

    goto :goto_73

    .line 847
    .end local v16    # "missingPerm":Ljava/lang/String;
    .local v6, "missingPerm":Ljava/lang/String;
    :cond_6f
    move-object/from16 v16, v6

    .line 845
    .end local v6    # "missingPerm":Ljava/lang/String;
    .end local v9    # "pathPerm":Ljava/lang/String;
    .end local v10    # "pp":Landroid/content/pm/PathPermission;
    .restart local v16    # "missingPerm":Ljava/lang/String;
    move-object/from16 v6, v16

    .end local v16    # "missingPerm":Ljava/lang/String;
    .restart local v6    # "missingPerm":Ljava/lang/String;
    :goto_73
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_4b

    :cond_77
    move-object/from16 v16, v6

    .line 864
    .end local v13    # "path":Ljava/lang/String;
    :cond_79
    if-eqz v11, :cond_7d

    const/4 v9, 0x0

    return v9

    .line 868
    .end local v8    # "componentPerm":Ljava/lang/String;
    .end local v11    # "allowDefaultRead":Z
    .end local v12    # "pps":[Landroid/content/pm/PathPermission;
    :cond_7d
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 869
    .local v8, "callingUserId":I
    iget-boolean v9, v0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v9, :cond_92

    iget v9, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v9, v5}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v9

    if-nez v9, :cond_92

    .line 870
    invoke-static {v1, v8}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v9

    goto :goto_93

    :cond_92
    move-object v9, v1

    .line 871
    .local v9, "userUri":Landroid/net/Uri;
    :goto_93
    const/4 v10, 0x1

    invoke-virtual {v3, v9, v4, v5, v10}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v11

    if-nez v11, :cond_9c

    .line 873
    const/4 v10, 0x0

    return v10

    .line 878
    :cond_9c
    if-ne v7, v10, :cond_9f

    .line 879
    return v10

    .line 883
    :cond_9f
    iget-object v10, v0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    const-string v11, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ca

    .line 885
    iget-boolean v10, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v10, :cond_c7

    .line 886
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " requires "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", or grantUriPermission()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "suffix":Ljava/lang/String;
    goto :goto_cc

    .line 888
    .end local v10    # "suffix":Ljava/lang/String;
    :cond_c7
    const-string v10, " requires the provider be exported, or grantUriPermission()"

    .restart local v10    # "suffix":Ljava/lang/String;
    goto :goto_cc

    .line 884
    .end local v10    # "suffix":Ljava/lang/String;
    :cond_ca
    const-string v10, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    .line 890
    .restart local v10    # "suffix":Ljava/lang/String;
    :goto_cc
    new-instance v11, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Permission Denial: reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 891
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " uri "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method protected blacklist enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I
    .registers 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 899
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 900
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 901
    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 902
    .local v5, "uid":I
    const/4 v6, 0x0

    .line 903
    .local v6, "missingPerm":Ljava/lang/String;
    const/4 v7, 0x0

    .line 905
    .local v7, "strongestResult":I
    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v5, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1e

    .line 906
    return v9

    .line 909
    :cond_1e
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_7d

    invoke-virtual {v0, v4, v5, v3}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 910
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v8

    .line 911
    .local v8, "componentPerm":Ljava/lang/String;
    if-eqz v8, :cond_3a

    .line 912
    invoke-direct {v0, v8, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v11

    .line 913
    .local v11, "mode":I
    if-nez v11, :cond_35

    .line 914
    return v9

    .line 916
    :cond_35
    move-object v6, v8

    .line 917
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 923
    .end local v11    # "mode":I
    :cond_3a
    if-nez v8, :cond_3e

    const/4 v11, 0x1

    goto :goto_3f

    :cond_3e
    move v11, v9

    .line 925
    .local v11, "allowDefaultWrite":Z
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v12

    .line 926
    .local v12, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v12, :cond_79

    .line 927
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 928
    .local v13, "path":Ljava/lang/String;
    array-length v14, v12

    move v15, v9

    :goto_4b
    if-ge v15, v14, :cond_77

    aget-object v10, v12, v15

    .line 929
    .local v10, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual {v10}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v9

    .line 930
    .local v9, "pathPerm":Ljava/lang/String;
    if-eqz v9, :cond_6f

    invoke-virtual {v10, v13}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6f

    .line 931
    move-object/from16 v16, v6

    .end local v6    # "missingPerm":Ljava/lang/String;
    .local v16, "missingPerm":Ljava/lang/String;
    invoke-direct {v0, v9, v2}, Landroid/content/ContentProvider;->checkPermission(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v6

    .line 932
    .local v6, "mode":I
    if-nez v6, :cond_65

    .line 933
    const/4 v14, 0x0

    return v14

    .line 937
    :cond_65
    const/4 v11, 0x0

    .line 938
    move-object/from16 v16, v9

    .line 939
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    move-object/from16 v6, v16

    goto :goto_73

    .line 930
    .end local v16    # "missingPerm":Ljava/lang/String;
    .local v6, "missingPerm":Ljava/lang/String;
    :cond_6f
    move-object/from16 v16, v6

    .line 928
    .end local v6    # "missingPerm":Ljava/lang/String;
    .end local v9    # "pathPerm":Ljava/lang/String;
    .end local v10    # "pp":Landroid/content/pm/PathPermission;
    .restart local v16    # "missingPerm":Ljava/lang/String;
    move-object/from16 v6, v16

    .end local v16    # "missingPerm":Ljava/lang/String;
    .restart local v6    # "missingPerm":Ljava/lang/String;
    :goto_73
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_4b

    :cond_77
    move-object/from16 v16, v6

    .line 947
    .end local v13    # "path":Ljava/lang/String;
    :cond_79
    if-eqz v11, :cond_7d

    const/4 v9, 0x0

    return v9

    .line 951
    .end local v8    # "componentPerm":Ljava/lang/String;
    .end local v11    # "allowDefaultWrite":Z
    .end local v12    # "pps":[Landroid/content/pm/PathPermission;
    :cond_7d
    const/4 v8, 0x2

    invoke-virtual {v3, v1, v4, v5, v8}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v8

    if-nez v8, :cond_86

    .line 953
    const/4 v8, 0x0

    return v8

    .line 958
    :cond_86
    const/4 v8, 0x1

    if-ne v7, v8, :cond_8a

    .line 959
    return v8

    .line 962
    :cond_8a
    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_a8

    .line 963
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " requires "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", or grantUriPermission()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_aa

    .line 964
    :cond_a8
    const-string v8, " requires the provider be exported, or grantUriPermission()"

    :goto_aa
    nop

    .line 965
    .local v8, "failReason":Ljava/lang/String;
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: writing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 966
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uri "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public greylist-max-o getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 2

    .line 1261
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public final whitelist getCallingAttributionSource()Landroid/content/AttributionSource;
    .registers 5

    .line 1041
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1042
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_19

    .line 1043
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1044
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1043
    invoke-virtual {v1, v2, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1046
    :cond_19
    return-object v0
.end method

.method public final whitelist getCallingAttributionTag()Ljava/lang/String;
    .registers 3

    .line 1060
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1061
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_f

    .line 1062
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1064
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public final greylist getCallingFeatureId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1072
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getCallingPackage()Ljava/lang/String;
    .registers 3

    .line 1023
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 1024
    .local v0, "callingAttributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_b

    .line 1025
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 1024
    :goto_c
    return-object v1
.end method

.method public final whitelist getCallingPackageUnchecked()Ljava/lang/String;
    .registers 3

    .line 1088
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1089
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_f

    .line 1090
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1092
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 976
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public greylist getIContentProvider()Landroid/content/IContentProvider;
    .registers 2

    .line 2412
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object v0
.end method

.method public final whitelist getPathPermissions()[Landroid/content/pm/PathPermission;
    .registers 2

    .line 1247
    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public final whitelist getReadPermission()Ljava/lang/String;
    .registers 2

    .line 1203
    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 2209
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public final whitelist getWritePermission()Ljava/lang/String;
    .registers 2

    .line 1225
    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1760
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist isTemporary()Z
    .registers 2

    .line 2401
    const/4 v0, 0x0

    return v0
.end method

.method protected final greylist-max-o matchesOurAuthorities(Ljava/lang/String;)Z
    .registers 5
    .param p1, "authority"    # Ljava/lang/String;

    .line 1171
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1172
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1174
    :cond_9
    iget-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 1175
    array-length v0, v0

    .line 1176
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_20

    .line 1177
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    return v2

    .line 1176
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1180
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onCallingPackageChanged()V
    .registers 1

    .line 1104
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1315
    return-void
.end method

.method public abstract whitelist onCreate()Z
.end method

.method public whitelist onLowMemory()V
    .registers 1

    .line 1327
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .registers 2
    .param p1, "level"    # I

    .line 1331
    return-void
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2085
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 2086
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_12

    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_13

    :cond_12
    const/4 v7, 0x0

    :goto_13
    return-object v7
.end method

.method public whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2146
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1963
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files supported by provider at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2032
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final whitelist openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2162
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2163
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 2164
    .local v2, "count":I
    :goto_17
    const/4 v3, 0x1

    if-eq v2, v3, :cond_53

    .line 2167
    if-eqz v1, :cond_1f

    .line 2168
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2170
    :cond_1f
    if-nez v2, :cond_3a

    .line 2171
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2173
    :cond_3a
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple items at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2176
    :cond_53
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2177
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2178
    .local v0, "i":I
    if-ltz v0, :cond_61

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_62

    :cond_61
    const/4 v3, 0x0

    .line 2179
    .local v3, "path":Ljava/lang/String;
    :goto_62
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2180
    if-eqz v3, :cond_75

    .line 2184
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v4

    .line 2185
    .local v4, "modeBits":I
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    return-object v5

    .line 2181
    .end local v4    # "modeBits":I
    :cond_75
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "Column _data not found."

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
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

    .line 2374
    .local p4, "args":Ljava/lang/Object;, "TT;"
    .local p5, "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 2376
    .local v0, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v9, Landroid/content/ContentProvider$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p5

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/content/ContentProvider$1;-><init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    move-object v1, v9

    .line 2388
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2390
    const/4 v2, 0x0

    aget-object v2, v0, v2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v2

    .line 2391
    .end local v0    # "fds":[Landroid/os/ParcelFileDescriptor;
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_1f
    move-exception v0

    .line 2392
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "failure making pipe"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2259
    const-string v0, "*/*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "r"

    if-eqz v0, :cond_10

    .line 2261
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 2263
    :cond_10
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2264
    .local v0, "baseType":Ljava/lang/String;
    if-eqz v0, :cond_21

    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2267
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1

    .line 2269
    :cond_21
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2328
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1554
    if-eqz p3, :cond_4

    move-object v0, p3

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_6
    move-object p3, v0

    .line 1558
    const-string v0, "android:query-arg-sql-sort-order"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1559
    .local v0, "sortClause":Ljava/lang/String;
    if-nez v0, :cond_1b

    const-string v1, "android:query-arg-sort-columns"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1560
    invoke-static {p3}, Landroid/content/ContentResolver;->createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 1563
    :cond_1b
    nop

    .line 1566
    const-string v1, "android:query-arg-sql-selection"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1567
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1563
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v0

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public abstract whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1467
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1677
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1719
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist requireContext()Landroid/content/Context;
    .registers 4

    .line 989
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 990
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_7

    .line 993
    return-object v0

    .line 991
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find context from the provider."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V
    .registers 4
    .param p1, "identity"    # Landroid/content/ContentProvider$CallingIdentity;

    .line 1146
    iget-wide v0, p1, Landroid/content/ContentProvider$CallingIdentity;->binderToken:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1147
    iget-object v0, p0, Landroid/content/ContentProvider;->mCallingAttributionSource:Ljava/lang/ThreadLocal;

    iget-object v1, p1, Landroid/content/ContentProvider$CallingIdentity;->callingAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1148
    return-void
.end method

.method public final greylist setAppOps(II)V
    .registers 4
    .param p1, "readOp"    # I
    .param p2, "writeOp"    # I

    .line 1253
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    if-nez v0, :cond_c

    .line 1254
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p1, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 1255
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p2, v0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 1257
    :cond_c
    return-void
.end method

.method protected final greylist-max-o setAuthorities(Ljava/lang/String;)V
    .registers 5
    .param p1, "authorities"    # Ljava/lang/String;

    .line 1158
    if-eqz p1, :cond_1b

    .line 1159
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_11

    .line 1160
    iput-object p1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 1161
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    goto :goto_1b

    .line 1163
    :cond_11
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 1164
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    .line 1167
    :cond_1b
    :goto_1b
    return-void
.end method

.method protected final whitelist setPathPermissions([Landroid/content/pm/PathPermission;)V
    .registers 2
    .param p1, "permissions"    # [Landroid/content/pm/PathPermission;

    .line 1236
    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 1237
    return-void
.end method

.method protected final whitelist setReadPermission(Ljava/lang/String;)V
    .registers 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 1192
    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 1193
    return-void
.end method

.method public final blacklist setTransportLoggingEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 1266
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    if-nez v0, :cond_5

    .line 1267
    return-void

    .line 1269
    :cond_5
    if-eqz p1, :cond_17

    .line 1270
    new-instance v1, Landroid/content/LoggingContentInterface;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/content/LoggingContentInterface;-><init>(Ljava/lang/String;Landroid/content/ContentInterface;)V

    iput-object v1, v0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    goto :goto_19

    .line 1272
    :cond_17
    iput-object p0, v0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 1274
    :goto_19
    return-void
.end method

.method protected final whitelist setWritePermission(Ljava/lang/String;)V
    .registers 2
    .param p1, "permission"    # Ljava/lang/String;

    .line 1214
    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 1215
    return-void
.end method

.method public whitelist shutdown()V
    .registers 3

    .line 2564
    const-string v0, "ContentProvider"

    const-string v1, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    return-void
.end method

.method public whitelist uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .param p1, "url"    # Landroid/net/Uri;

    .line 1644
    return-object p1
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1893
    if-eqz p3, :cond_4

    move-object v0, p3

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_6
    move-object p3, v0

    .line 1894
    nop

    .line 1895
    const-string v0, "android:query-arg-sql-selection"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1896
    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1894
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public blacklist validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 2597
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 2598
    .local v0, "auth":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-nez v1, :cond_4e

    .line 2599
    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v2

    .line 2603
    .local v2, "userId":I
    if-eq v2, v1, :cond_4e

    iget-object v1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eq v2, v1, :cond_4e

    .line 2604
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Lcom/miui/xspace/XSpaceManagerStub;->isCrossUserIncomingUri(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_4e

    .line 2606
    :cond_24
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to query a ContentProvider in user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 2607
    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with a uri belonging to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2610
    .end local v2    # "userId":I
    :cond_4e
    :goto_4e
    invoke-direct {p0, v0}, Landroid/content/ContentProvider;->validateIncomingAuthority(Ljava/lang/String;)V

    .line 2614
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 2615
    .local v1, "encodedPath":Ljava/lang/String;
    if-eqz v1, :cond_9d

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9d

    .line 2616
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 2617
    const-string v3, "//+"

    const-string v4, "/"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2618
    .local v2, "normalized":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Normalized "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to avoid possible security issues"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContentProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    return-object v2

    .line 2622
    .end local v2    # "normalized":Landroid/net/Uri;
    :cond_9d
    return-object p1
.end method
