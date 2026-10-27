.class public Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;
.super Ljava/lang/Object;
.source "DeveloperVerifierController.java"


# instance fields
.field public final mAutoDisconnectCallback:Ljava/lang/Runnable;

.field public final mRemoteService:Lcom/android/internal/infra/ServiceConnector;

.field public final mUid:I

.field public final mVerifierPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/infra/ServiceConnector;ILjava/lang/String;)V
    .registers 4

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    .line 733
    iput p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->mUid:I

    .line 734
    iput-object p3, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->mVerifierPackageName:Ljava/lang/String;

    .line 735
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/infra/ServiceConnector;)V

    iput-object p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->mAutoDisconnectCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getAutoDisconnectCallback()Ljava/lang/Runnable;
    .registers 1

    .line 747
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->mAutoDisconnectCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getService()Lcom/android/internal/infra/ServiceConnector;
    .registers 1

    .line 738
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 741
    iget p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->mUid:I

    return p0
.end method

.method public getVerifierPackageName()Ljava/lang/String;
    .registers 1

    .line 744
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$ServiceConnectorWrapper;->mVerifierPackageName:Ljava/lang/String;

    return-object p0
.end method
