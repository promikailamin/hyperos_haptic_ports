.class final Landroid/app/ContextImpl$ApplicationContentResolver;
.super Landroid/content/ContentResolver;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplicationContentResolver"
.end annotation


# instance fields
.field private final greylist mMainThread:Landroid/app/ActivityThread;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/ActivityThread;)V
    .registers 3

    .line 3985
    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    .line 3986
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityThread;

    iput-object p1, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    .line 3987
    return-void
.end method


# virtual methods
.method protected greylist-max-o acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 6

    .line 3999
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    .line 4000
    invoke-static {p2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4001
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;->resolveUserIdFromAuthority(Ljava/lang/String;)I

    move-result p2

    .line 3999
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/app/ActivityThread;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1
.end method

.method protected greylist acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 6

    .line 3992
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    .line 3993
    invoke-static {p2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3994
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;->resolveUserIdFromAuthority(Ljava/lang/String;)I

    move-result p2

    .line 3992
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1
.end method

.method protected greylist-max-o acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 6

    .line 4011
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    .line 4012
    invoke-static {p2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4013
    invoke-virtual {p0, p2}, Landroid/app/ContextImpl$ApplicationContentResolver;->resolveUserIdFromAuthority(Ljava/lang/String;)I

    move-result p2

    .line 4011
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/app/ActivityThread;->acquireProvider(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/IContentProvider;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .registers 3

    .line 4028
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 4029
    return-void
.end method

.method public greylist-max-o releaseProvider(Landroid/content/IContentProvider;)Z
    .registers 4

    .line 4006
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .registers 4

    .line 4018
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->releaseProvider(Landroid/content/IContentProvider;Z)Z

    move-result p1

    return p1
.end method

.method protected greylist-max-o resolveUserIdFromAuthority(Ljava/lang/String;)I
    .registers 3

    .line 4033
    invoke-virtual {p0}, Landroid/app/ContextImpl$ApplicationContentResolver;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public greylist-max-o unstableProviderDied(Landroid/content/IContentProvider;)V
    .registers 4

    .line 4023
    iget-object v0, p0, Landroid/app/ContextImpl$ApplicationContentResolver;->mMainThread:Landroid/app/ActivityThread;

    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    .line 4024
    return-void
.end method
