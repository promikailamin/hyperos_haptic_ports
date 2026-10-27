.class public Landroid/content/integrity/AppIntegrityManager;
.super Ljava/lang/Object;
.source "AppIntegrityManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "android.content.integrity.extra.STATUS"

.field public static final whitelist STATUS_FAILURE:I = 0x1

.field public static final whitelist STATUS_SUCCESS:I


# instance fields
.field blacklist mManager:Landroid/content/integrity/IAppIntegrityManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/integrity/IAppIntegrityManager;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist getCurrentRuleSet()Landroid/content/integrity/RuleSet;
    .registers 4

    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRules()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 119
    iget-object v1, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v1}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRuleSetVersion()Ljava/lang/String;

    move-result-object v1

    .line 120
    new-instance v2, Landroid/content/integrity/RuleSet$Builder;

    invoke-direct {v2}, Landroid/content/integrity/RuleSet$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/integrity/RuleSet$Builder;->setVersion(Ljava/lang/String;)Landroid/content/integrity/RuleSet$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/integrity/RuleSet$Builder;->addRules(Ljava/util/List;)Landroid/content/integrity/RuleSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/integrity/RuleSet$Builder;->build()Landroid/content/integrity/RuleSet;

    move-result-object v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    return-object v0

    .line 121
    :catch_22
    move-exception v0

    .line 122
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getCurrentRuleSetProvider()Ljava/lang/String;
    .registers 2

    .line 101
    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRuleSetProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 102
    :catch_7
    move-exception v0

    .line 103
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getCurrentRuleSetVersion()Ljava/lang/String;
    .registers 2

    .line 91
    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getCurrentRuleSetVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 92
    :catch_7
    move-exception v0

    .line 93
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getWhitelistedRuleProviders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    invoke-interface {v0}, Landroid/content/integrity/IAppIntegrityManager;->getWhitelistedRuleProviders()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 138
    :catch_7
    move-exception v0

    .line 139
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist updateRuleSet(Landroid/content/integrity/RuleSet;Landroid/content/IntentSender;)V
    .registers 6

    .line 78
    :try_start_0
    iget-object v0, p0, Landroid/content/integrity/AppIntegrityManager;->mManager:Landroid/content/integrity/IAppIntegrityManager;

    .line 79
    invoke-virtual {p1}, Landroid/content/integrity/RuleSet;->getVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    .line 80
    invoke-virtual {p1}, Landroid/content/integrity/RuleSet;->getRules()Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 78
    invoke-interface {v0, v1, v2, p2}, Landroid/content/integrity/IAppIntegrityManager;->updateRuleSet(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/content/IntentSender;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    .line 84
    nop

    .line 85
    return-void

    .line 82
    :catch_14
    move-exception p1

    .line 83
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
