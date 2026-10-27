.class public Lcom/android/server/ondeviceintelligence/RemoteStorageService;
.super Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;
.source "RemoteStorageService.java"


# instance fields
.field public final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field public final mInitRunnable:Ljava/lang/Runnable;

.field public final mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

.field public final mResourceClosingExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$7LfL9c1Q6ogD4iGx6wTa-Bhk5HY(Landroid/os/Bundle;)V
    .registers 1

    .line 126
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9RtyqMP5_aVQtC6EDyxwo6w2qvs(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->lambda$getFeatureMetadata$4(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DAoII5KLoh6LbVJDDMLIMt8blgA(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->lambda$getFeatureMetadata$5(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ir2NzU3QLKJJf5ufdop9KqWmEa4(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V
    .registers 3

    .line 66
    invoke-interface {p2, p0, p1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xs2-HXz3LPrIO5r-zkhdDLRBBmc(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->lambda$getReadOnlyFeatureFileDescriptorMap$2(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jrOP5tF6_Opf7ZF6hmgEq-dK8SY(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->lambda$getReadOnlyFeatureFileDescriptorMap$3(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8YspL5s7361oHFeFTauxVrOSoI(Lcom/android/internal/infra/AndroidFuture;Landroid/os/ParcelFileDescriptor;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p2, :cond_a

    .line 71
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_10

    :catchall_6
    move-exception p0

    goto :goto_22

    :catch_8
    move-exception p2

    goto :goto_14

    .line 73
    :cond_a
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_10
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_10} :catch_8
    .catchall {:try_start_2 .. :try_end_10} :catchall_6

    .line 80
    :goto_10
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->tryClosePfd(Landroid/os/ParcelFileDescriptor;)V

    return-void

    .line 77
    :goto_14
    :try_start_14
    const-string v0, "RemoteStorageService"

    const-string v1, "Failed to send result"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_6

    .line 80
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->tryClosePfd(Landroid/os/ParcelFileDescriptor;)V

    return-void

    :goto_22
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->tryClosePfd(Landroid/os/ParcelFileDescriptor;)V

    .line 81
    throw p0
.end method

.method public static synthetic $r8$lambda$zIjUMU4b-KoQnoZvRaIAGpijibk(Landroid/os/Bundle;)V
    .registers 1

    .line 142
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 53
    invoke-direct {p0}, Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mInitRunnable:Ljava/lang/Runnable;

    .line 55
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    .line 56
    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 57
    iput-object p4, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mResourceClosingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static tryClosePfd(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    if-eqz p0, :cond_e

    .line 149
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 151
    const-string v0, "RemoteStorageService"

    const-string v1, "Failed to close parcel file descriptor "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    return-void
.end method


# virtual methods
.method public getFeatureMetadata(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 102
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mInitRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 103
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    new-instance v1, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->run(Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 89
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mInitRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    new-instance v1, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->run(Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;)Z

    return-void
.end method

.method public getReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 6

    .line 63
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mInitRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 64
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mRemoteOnDeviceIntelligenceService:Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    new-instance v2, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v1, v2}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->run(Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;)Z

    .line 67
    new-instance p1, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final handleFileDescriptorMapResult(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_15

    .line 114
    :try_start_3
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/BadParcelableException; {:try_start_3 .. :try_end_6} :catch_13
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 126
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mResourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda7;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda7;-><init>(Landroid/os/Bundle;)V

    :goto_d
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_11
    move-exception p2

    goto :goto_52

    :catch_13
    move-exception v1

    goto :goto_40

    .line 117
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 118
    const-class v3, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 119
    invoke-static {v2}, Lcom/android/server/ondeviceintelligence/BundleUtil;->validatePfdReadOnly(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_1d

    .line 121
    :cond_35
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_38
    .catch Landroid/os/BadParcelableException; {:try_start_15 .. :try_end_38} :catch_13
    .catchall {:try_start_15 .. :try_end_38} :catchall_11

    .line 126
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mResourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda7;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda7;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    .line 123
    :goto_40
    :try_start_40
    const-string v2, "RemoteStorageService"

    const-string v3, "Failed to send result"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_11

    .line 126
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mResourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda7;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda7;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    :goto_52
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mResourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda7;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 127
    throw p2
.end method

.method public final handleMetadataResult(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_15

    .line 133
    :try_start_3
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/BadParcelableException; {:try_start_3 .. :try_end_6} :catch_13
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    .line 142
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mResourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;)V

    :goto_d
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_11
    move-exception p2

    goto :goto_35

    :catch_13
    move-exception v1

    goto :goto_23

    .line 136
    :cond_15
    :try_start_15
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeStateParams(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/BadParcelableException; {:try_start_15 .. :try_end_1b} :catch_13
    .catchall {:try_start_15 .. :try_end_1b} :catchall_11

    .line 142
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mResourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    .line 139
    :goto_23
    :try_start_23
    const-string v2, "RemoteStorageService"

    const-string v3, "Failed to send result"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_11

    .line 142
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mResourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    :goto_35
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->mResourceClosingExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda6;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 143
    throw p2
.end method

.method public final synthetic lambda$getFeatureMetadata$4(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 3

    .line 108
    invoke-virtual {p0, p2, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->handleMetadataResult(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public final synthetic lambda$getFeatureMetadata$5(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V
    .registers 6

    .line 105
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/os/RemoteCallback;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p3, p1, v0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getFeatureMetadata(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public final synthetic lambda$getReadOnlyFeatureFileDescriptorMap$2(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 3

    .line 96
    invoke-virtual {p0, p2, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->handleFileDescriptorMapResult(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public final synthetic lambda$getReadOnlyFeatureFileDescriptorMap$3(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V
    .registers 6

    .line 92
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2}, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/os/RemoteCallback;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p3, p1, v0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->getReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V

    return-void
.end method
