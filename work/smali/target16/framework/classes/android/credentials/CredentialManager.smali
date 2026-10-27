.class public final Landroid/credentials/CredentialManager;
.super Ljava/lang/Object;
.source "CredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;,
        Landroid/credentials/CredentialManager$GetCredentialTransport;,
        Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;,
        Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;,
        Landroid/credentials/CredentialManager$CreateCredentialTransport;,
        Landroid/credentials/CredentialManager$ClearCredentialStateTransport;,
        Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;,
        Landroid/credentials/CredentialManager$ProviderFilter;
    }
.end annotation


# static fields
.field private static final blacklist DEVICE_CONFIG_ENABLE_CREDENTIAL_DESC_API:Ljava/lang/String; = "enable_credential_description_api"

.field public static final blacklist DEVICE_CONFIG_ENABLE_CREDENTIAL_MANAGER:Ljava/lang/String; = "enable_credential_manager"

.field public static final blacklist EXTRA_AUTOFILL_RESULT_RECEIVER:Ljava/lang/String; = "android.credentials.AUTOFILL_RESULT_RECEIVER"

.field private static final blacklist OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

.field public static final blacklist PROVIDER_FILTER_ALL_PROVIDERS:I = 0x0

.field public static final blacklist PROVIDER_FILTER_SYSTEM_PROVIDERS_ONLY:I = 0x1

.field public static final blacklist PROVIDER_FILTER_USER_PROVIDERS_INCLUDING_HIDDEN:I = 0x3

.field public static final blacklist PROVIDER_FILTER_USER_PROVIDERS_ONLY:I = 0x2

.field public static final blacklist TAG:Ljava/lang/String; = "CredentialManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/credentials/ICredentialManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetOPTIONS_SENDER_BAL_OPTIN()Landroid/os/Bundle;
    .registers 1

    sget-object v0, Landroid/credentials/CredentialManager;->OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 67
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Landroid/credentials/CredentialManager;->OPTIONS_SENDER_BAL_OPTIN:Landroid/os/Bundle;

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/credentials/ICredentialManager;)V
    .registers 3

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    .line 149
    return-void
.end method

.method private blacklist isCredentialDescriptionApiEnabled()Z
    .registers 4

    .line 588
    const-string v0, "enable_credential_description_api"

    const/4 v1, 0x0

    const-string v2, "credential_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist isCredentialDescriptionApiEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 576
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 577
    return v0

    .line 579
    :cond_4
    nop

    .line 580
    const-string v1, "credential"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/CredentialManager;

    .line 581
    if-eqz p0, :cond_14

    .line 582
    invoke-direct {p0}, Landroid/credentials/CredentialManager;->isCredentialDescriptionApiEnabled()Z

    move-result p0

    return p0

    .line 584
    :cond_14
    return v0
.end method

.method private blacklist isServiceEnabled()Z
    .registers 2

    .line 564
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    invoke-interface {v0}, Landroid/credentials/ICredentialManager;->isServiceEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 565
    :catch_7
    move-exception v0

    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isServiceEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 545
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 546
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 547
    return v0

    .line 549
    :cond_9
    nop

    .line 550
    const-string v1, "credential"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/CredentialManager;

    .line 551
    if-eqz p0, :cond_19

    .line 552
    invoke-direct {p0}, Landroid/credentials/CredentialManager;->isServiceEnabled()Z

    move-result p0

    return p0

    .line 554
    :cond_19
    return v0
.end method


# virtual methods
.method public whitelist clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/ClearCredentialStateRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/ClearCredentialStateException;",
            ">;)V"
        }
    .end annotation

    .line 409
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 411
    const-string v0, "callback must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 413
    if-eqz p2, :cond_20

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 414
    const-string p1, "CredentialManager"

    const-string p2, "clearCredentialState already canceled"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 418
    :cond_20
    nop

    .line 420
    const/4 v0, 0x0

    :try_start_22
    iget-object v1, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v2, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;

    invoke-direct {v2, p3, p4, v0}, Landroid/credentials/CredentialManager$ClearCredentialStateTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V

    iget-object p3, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 424
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p3

    .line 421
    invoke-interface {v1, p1, v2, p3}, Landroid/credentials/ICredentialManager;->clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/credentials/IClearCredentialStateCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_33} :catch_34

    .line 427
    goto :goto_38

    .line 425
    :catch_34
    move-exception p1

    .line 426
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 429
    :goto_38
    if-eqz p2, :cond_3f

    if-eqz v0, :cond_3f

    .line 430
    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 432
    :cond_3f
    return-void
.end method

.method public whitelist createCredential(Landroid/content/Context;Landroid/credentials/CreateCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/CreateCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/CreateCredentialResponse;",
            "Landroid/credentials/CreateCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 361
    const-string/jumbo v0, "request must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 364
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 367
    const-string p1, "CredentialManager"

    const-string p2, "createCredential already canceled"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 371
    :cond_25
    nop

    .line 373
    const/4 v0, 0x0

    :try_start_27
    iget-object v1, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v2, Landroid/credentials/CredentialManager$CreateCredentialTransport;

    invoke-direct {v2, p1, p4, p5, v0}, Landroid/credentials/CredentialManager$CreateCredentialTransport;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V

    iget-object p1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-interface {v1, p2, v2, p1}, Landroid/credentials/ICredentialManager;->executeCreateCredential(Landroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v0
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_38} :catch_39

    .line 380
    goto :goto_3d

    .line 378
    :catch_39
    move-exception p1

    .line 379
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 382
    :goto_3d
    if-eqz p3, :cond_44

    if-eqz v0, :cond_44

    .line 383
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 385
    :cond_44
    return-void
.end method

.method public blacklist getCandidateCredentials(Landroid/credentials/GetCredentialRequest;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/os/IBinder;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/GetCredentialRequest;",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCandidateCredentialsResponse;",
            "Landroid/credentials/GetCandidateCredentialsException;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 172
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    const-string v0, "callingPackage must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 178
    const-string p1, "CredentialManager"

    const-string p2, "getCandidateCredentials already canceled"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_25
    nop

    .line 184
    const/4 v0, 0x0

    :try_start_27
    iget-object v1, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v2, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;

    invoke-direct {v2, p4, p5, v0}, Landroid/credentials/CredentialManager$GetCandidateCredentialsTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V

    .line 185
    invoke-interface {v1, p1, v2, p6, p2}, Landroid/credentials/ICredentialManager;->getCandidateCredentials(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCandidateCredentialsCallback;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v0
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_33

    .line 192
    goto :goto_37

    .line 190
    :catch_33
    move-exception p1

    .line 191
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 194
    :goto_37
    if-eqz p3, :cond_3e

    if-eqz v0, :cond_3e

    .line 195
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 197
    :cond_3e
    return-void
.end method

.method public whitelist getCredential(Landroid/content/Context;Landroid/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/GetCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 222
    const-string/jumbo v0, "request must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 228
    const-string p1, "CredentialManager"

    const-string p2, "getCredential already canceled"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 232
    :cond_25
    nop

    .line 234
    const/4 v0, 0x0

    :try_start_27
    iget-object v1, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v2, Landroid/credentials/CredentialManager$GetCredentialTransport;

    invoke-direct {v2, p1, p4, p5, v0}, Landroid/credentials/CredentialManager$GetCredentialTransport;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V

    iget-object p1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-interface {v1, p2, v2, p1}, Landroid/credentials/ICredentialManager;->executeGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v0
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_38} :catch_39

    .line 241
    goto :goto_3d

    .line 239
    :catch_39
    move-exception p1

    .line 240
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 243
    :goto_3d
    if-eqz p3, :cond_44

    if-eqz v0, :cond_44

    .line 244
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 246
    :cond_44
    return-void
.end method

.method public whitelist getCredential(Landroid/content/Context;Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/GetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 273
    const-string/jumbo v0, "pendingGetCredentialHandle must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 276
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 279
    const-string p1, "CredentialManager"

    const-string p2, "getCredential already canceled"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 283
    :cond_25
    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->show(Landroid/content/Context;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 284
    return-void
.end method

.method public blacklist getCredentialProviderServices(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 532
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    invoke-interface {v0, p1, p2}, Landroid/credentials/ICredentialManager;->getCredentialProviderServices(II)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 533
    :catch_7
    move-exception p1

    .line 534
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getCredentialProviderServicesForTesting(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/credentials/CredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    invoke-interface {v0, p1}, Landroid/credentials/ICredentialManager;->getCredentialProviderServicesForTesting(I)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 512
    :catch_7
    move-exception p1

    .line 513
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isEnabledCredentialProviderService(Landroid/content/ComponentName;)Z
    .registers 4

    .line 485
    const-string v0, "componentName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 488
    :try_start_5
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    iget-object v1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 489
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-interface {v0, p1, v1}, Landroid/credentials/ICredentialManager;->isEnabledCredentialProviderService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_12

    return p1

    .line 490
    :catch_12
    move-exception p1

    .line 491
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist prepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/credentials/GetCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/credentials/PrepareGetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation

    .line 308
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    const-string v0, "callback must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    if-eqz p2, :cond_21

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 313
    const-string p1, "CredentialManager"

    const-string/jumbo p2, "prepareGetCredential already canceled"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 317
    :cond_21
    nop

    .line 318
    new-instance v0, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;-><init>(Landroid/credentials/CredentialManager-IA;)V

    .line 321
    :try_start_28
    iget-object v2, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v3, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;

    invoke-direct {v3, p3, p4, v0, v1}, Landroid/credentials/CredentialManager$PrepareGetCredentialTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager$GetCredentialTransportPendingUseCase;Landroid/credentials/CredentialManager-IA;)V

    iget-object p3, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    .line 327
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p3

    .line 322
    invoke-interface {v2, p1, v3, v0, p3}, Landroid/credentials/ICredentialManager;->executePrepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IPrepareGetCredentialCallback;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_39} :catch_3a

    .line 330
    goto :goto_3e

    .line 328
    :catch_3a
    move-exception p1

    .line 329
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 332
    :goto_3e
    if-eqz p2, :cond_45

    if-eqz v1, :cond_45

    .line 333
    invoke-virtual {p2, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 335
    :cond_45
    return-void
.end method

.method public whitelist registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;)V
    .registers 4

    .line 609
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    :try_start_6
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    iget-object v1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/credentials/ICredentialManager;->registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 615
    goto :goto_16

    .line 613
    :catch_12
    move-exception p1

    .line 614
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 616
    :goto_16
    return-void
.end method

.method public blacklist setEnabledProviders(Ljava/util/List;Ljava/util/List;ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/SetEnabledProvidersException;",
            ">;)V"
        }
    .end annotation

    .line 455
    const-string v0, "executor must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 456
    const-string v0, "callback must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 457
    const-string/jumbo v0, "providers must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 458
    const-string/jumbo v0, "primaryProviders must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 461
    :try_start_16
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    new-instance v1, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;

    const/4 v2, 0x0

    invoke-direct {v1, p4, p5, v2}, Landroid/credentials/CredentialManager$SetEnabledProvidersTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/credentials/CredentialManager-IA;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/credentials/ICredentialManager;->setEnabledProviders(Ljava/util/List;Ljava/util/List;ILandroid/credentials/ISetEnabledProvidersCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    .line 466
    goto :goto_26

    .line 464
    :catch_22
    move-exception p1

    .line 465
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 467
    :goto_26
    return-void
.end method

.method public whitelist unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;)V
    .registers 4

    .line 627
    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 630
    :try_start_6
    iget-object v0, p0, Landroid/credentials/CredentialManager;->mService:Landroid/credentials/ICredentialManager;

    iget-object v1, p0, Landroid/credentials/CredentialManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/credentials/ICredentialManager;->unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_12

    .line 633
    goto :goto_16

    .line 631
    :catch_12
    move-exception p1

    .line 632
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 634
    :goto_16
    return-void
.end method
