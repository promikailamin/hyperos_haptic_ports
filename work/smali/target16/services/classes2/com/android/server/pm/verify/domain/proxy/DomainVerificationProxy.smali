.class public interface abstract Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
.super Ljava/lang/Object;
.source "DomainVerificationProxy.java"


# direct methods
.method public static makeProxy(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;)Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;
    .registers 14

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    if-eqz p0, :cond_15

    .line 51
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    move-object v7, v0

    goto :goto_16

    :cond_15
    move-object v7, p0

    :goto_16
    if-eqz v7, :cond_22

    .line 60
    new-instance v2, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;-><init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Connection;Landroid/content/ComponentName;)V

    goto :goto_25

    :cond_22
    move-object v3, p2

    move-object v6, p5

    move-object v2, v0

    :goto_25
    if-eqz p1, :cond_2f

    .line 65
    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;

    move-object p5, v6

    check-cast p5, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    invoke-direct {v0, v3, p5, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;-><init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;Landroid/content/ComponentName;)V

    :cond_2f
    if-eqz v2, :cond_39

    if-eqz v0, :cond_39

    .line 69
    new-instance p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;

    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyCombined;-><init>(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    return-object p0

    :cond_39
    if-eqz v2, :cond_3c

    return-object v2

    :cond_3c
    if-eqz v0, :cond_3f

    return-object v0

    .line 80
    :cond_3f
    new-instance p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    invoke-direct {p0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract isCallerVerifier(I)Z
.end method

.method public abstract runMessage(ILjava/lang/Object;)Z
.end method

.method public abstract sendBroadcastForPackages(Ljava/util/Set;)V
.end method
