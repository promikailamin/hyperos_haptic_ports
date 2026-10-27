.class public interface abstract Lcom/android/server/infra/ServiceNameResolver;
.super Ljava/lang/Object;
.source "ServiceNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;
    }
.end annotation


# virtual methods
.method public abstract dumpShort(Ljava/io/PrintWriter;)V
.end method

.method public abstract dumpShort(Ljava/io/PrintWriter;I)V
.end method

.method public abstract getDefaultServiceName(I)Ljava/lang/String;
.end method

.method public getDefaultServiceNameList(I)[Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .line 73
    invoke-interface {p0}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    .line 74
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "getting default service list not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getServiceName(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 99
    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceNameList(I)[Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 111
    invoke-interface {p0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConfiguredInMultipleMode()Z
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultServiceEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "checking default service not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isTemporary(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public resetTemporaryService(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "temporary user not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultServiceEnabled(IZ)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "changing default service not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 56
    return-void
.end method

.method public setTemporaryService(ILjava/lang/String;I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "durationMs"    # I

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "temporary user not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTemporaryServices(I[Ljava/lang/String;I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "componentNames"    # [Ljava/lang/String;
    .param p3, "durationMs"    # I

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "temporary user not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
