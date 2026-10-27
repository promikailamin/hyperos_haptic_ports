.class public Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;
.super Landroid/credentials/IGetCredentialCallback$Stub;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GetCredentialTransportPendingUseCase"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 682
    invoke-direct {p0}, Landroid/credentials/IGetCredentialCallback$Stub;-><init>()V

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    .line 682
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/credentials/CredentialManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 718
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-eqz v0, :cond_17

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 721
    :try_start_8
    iget-object v2, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    invoke-interface {v2, p1, p2}, Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_12

    .line 723
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    nop

    .line 725
    goto :goto_1e

    .line 723
    :catchall_12
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 724
    throw p1

    .line 726
    :cond_17
    const-string p1, "CredentialManager"

    const-string p2, "Unexpected onError call before the show invocation"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :goto_1e
    return-void
.end method

.method public blacklist onPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3

    .line 695
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-eqz v0, :cond_a

    .line 696
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    invoke-interface {v0, p1}, Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;->onPendingIntent(Landroid/app/PendingIntent;)V

    goto :goto_11

    .line 698
    :cond_a
    const-string p1, "CredentialManager"

    const-string v0, "Unexpected onPendingIntent call before the show invocation"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_11
    return-void
.end method

.method public blacklist onResponse(Landroid/credentials/GetCredentialResponse;)V
    .registers 5

    .line 704
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-eqz v0, :cond_17

    .line 705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 707
    :try_start_8
    iget-object v2, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    invoke-interface {v2, p1}, Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;->onResponse(Landroid/credentials/GetCredentialResponse;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_12

    .line 709
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    nop

    .line 711
    goto :goto_1e

    .line 709
    :catchall_12
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    throw p1

    .line 712
    :cond_17
    const-string p1, "CredentialManager"

    const-string v0, "Unexpected onResponse call before the show invocation"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_1e
    return-void
.end method

.method public blacklist setCallback(Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;)V
    .registers 3

    .line 686
    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    if-nez v0, :cond_7

    .line 687
    iput-object p1, p0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;->mCallback:Landroid/credentials/PrepareGetCredentialResponse$GetPendingCredentialInternalCallback;

    .line 691
    return-void

    .line 689
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "callback has already been set once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
