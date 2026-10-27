.class final Lcom/android/server/speech/RemoteSpeechRecognitionService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteSpeechRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/speech/IRecognitionService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallingUid:I

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnected:Z

.field private mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

.field private mListener:Landroid/speech/IRecognitionListener;

.field private final mLock:Ljava/lang/Object;

.field private mRecordingInProgress:Z

.field private mSessionInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;II)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.RecognitionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    new-instance v7, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;-><init>()V

    .line 68
    const v5, 0x4101001

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    .line 77
    iput p4, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mCallingUid:I

    .line 78
    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mComponentName:Landroid/content/ComponentName;

    .line 83
    return-void
.end method

.method static synthetic lambda$cancel$3(Landroid/speech/IRecognitionListener;ZLandroid/speech/IRecognitionService;)V
    .registers 3
    .param p0, "delegatingListener"    # Landroid/speech/IRecognitionListener;
    .param p1, "isShutdown"    # Z
    .param p2, "service"    # Landroid/speech/IRecognitionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    invoke-interface {p2, p0, p1}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    return-void
.end method

.method static synthetic lambda$checkRecognitionSupport$5(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;Landroid/speech/IRecognitionService;)V
    .registers 3
    .param p0, "recognizerIntent"    # Landroid/content/Intent;
    .param p1, "callback"    # Landroid/speech/IRecognitionSupportCallback;
    .param p2, "service"    # Landroid/speech/IRecognitionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-interface {p2, p0, p1}, Landroid/speech/IRecognitionService;->checkRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V

    return-void
.end method

.method static synthetic lambda$startListening$1(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;Landroid/speech/IRecognitionService;)V
    .registers 4
    .param p0, "recognizerIntent"    # Landroid/content/Intent;
    .param p1, "listenerToStart"    # Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "service"    # Landroid/speech/IRecognitionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-interface {p3, p0, p1, p2}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V

    return-void
.end method

.method static synthetic lambda$stopListening$2(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/speech/IRecognitionService;)V
    .registers 2
    .param p0, "listenerToStop"    # Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
    .param p1, "service"    # Landroid/speech/IRecognitionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-interface {p1, p0}, Landroid/speech/IRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V

    return-void
.end method

.method static synthetic lambda$triggerModelDownload$6(Landroid/content/Intent;Landroid/speech/IRecognitionService;)V
    .registers 2
    .param p0, "recognizerIntent"    # Landroid/content/Intent;
    .param p1, "service"    # Landroid/speech/IRecognitionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    invoke-interface {p1, p0}, Landroid/speech/IRecognitionService;->triggerModelDownload(Landroid/content/Intent;)V

    return-void
.end method

.method private resetStateLocked()V
    .registers 2

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    .line 288
    iput-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    .line 291
    return-void
.end method

.method private static tryRespondWithError(Landroid/speech/IRecognitionListener;I)V
    .registers 7
    .param p0, "listener"    # Landroid/speech/IRecognitionListener;
    .param p1, "errorCode"    # I

    .line 299
    if-eqz p0, :cond_1d

    .line 300
    :try_start_2
    invoke-interface {p0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1d

    .line 302
    :catch_6
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Failed to respond with an error %d to the client"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    nop

    .line 307
    :goto_1e
    return-void
.end method


# virtual methods
.method cancel(Landroid/speech/IRecognitionListener;Z)V
    .registers 6
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;
    .param p2, "isShutdown"    # Z

    .line 179
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_9

    .line 180
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 183
    :cond_9
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_c
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    if-nez v1, :cond_12

    .line 188
    monitor-exit v0

    return-void

    .line 191
    :cond_12
    invoke-interface {v1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_29

    .line 192
    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v2, "#cancel called with an unexpected listener"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 194
    monitor-exit v0

    return-void

    .line 198
    :cond_29
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 200
    .local v1, "delegatingListener":Landroid/speech/IRecognitionListener;
    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda2;-><init>(Landroid/speech/IRecognitionListener;Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 202
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    .line 205
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 206
    iput-object v2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    .line 209
    if-eqz p2, :cond_47

    .line 210
    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService;)V

    invoke-virtual {p0, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 212
    .end local v1    # "delegatingListener":Landroid/speech/IRecognitionListener;
    :cond_47
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_49

    throw v1
.end method

.method checkRecognitionSupport(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V
    .registers 6
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "callback"    # Landroid/speech/IRecognitionSupportCallback;

    .line 219
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_16

    .line 221
    const/16 v0, 0xb

    :try_start_6
    invoke-interface {p2, v0}, Landroid/speech/IRecognitionSupportCallback;->onError(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 225
    goto :goto_15

    .line 222
    :catch_a
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to report the connection broke to the caller."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 226
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void

    .line 228
    :cond_16
    new-instance v0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda5;-><init>(Landroid/content/Intent;Landroid/speech/IRecognitionSupportCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 229
    return-void
.end method

.method protected getAutoDisconnectTimeoutMs()J
    .registers 3

    .line 283
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getServiceComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method synthetic lambda$cancel$4$com-android-server-speech-RemoteSpeechRecognitionService(Landroid/speech/IRecognitionService;)V
    .registers 2
    .param p1, "service"    # Landroid/speech/IRecognitionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->unbind()V

    return-void
.end method

.method synthetic lambda$startListening$0$com-android-server-speech-RemoteSpeechRecognitionService()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->resetStateLocked()V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 126
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 40
    check-cast p1, Landroid/speech/IRecognitionService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->onServiceConnectionStatusChanged(Landroid/speech/IRecognitionService;Z)V

    return-void
.end method

.method protected onServiceConnectionStatusChanged(Landroid/speech/IRecognitionService;Z)V
    .registers 6
    .param p1, "service"    # Landroid/speech/IRecognitionService;
    .param p2, "connected"    # Z

    .line 256
    iput-boolean p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    .line 266
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    if-nez p2, :cond_1c

    .line 268
    :try_start_7
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    if-nez v1, :cond_14

    .line 269
    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v2, "Connection to speech recognition service lost, but no #startListening has been invoked yet."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    monitor-exit v0

    return-void

    .line 274
    :cond_14
    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 276
    invoke-direct {p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->resetStateLocked()V

    .line 278
    :cond_1c
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method shutdown()V
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    if-nez v1, :cond_9

    .line 246
    monitor-exit v0

    return-void

    .line 248
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    .line 251
    return-void

    .line 248
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;Landroid/content/AttributionSource;)V
    .registers 7
    .param p1, "recognizerIntent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;

    .line 97
    if-nez p2, :cond_a

    .line 98
    sget-object v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v1, "#startListening called with no preceding #setListening - ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 102
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_14

    .line 103
    const/16 v0, 0xb

    invoke-static {p2, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 104
    return-void

    .line 107
    :cond_14
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_17
    iget-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    if-eqz v1, :cond_29

    .line 109
    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v2, "#startListening called while listening is in progress."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 111
    monitor-exit v0

    return-void

    .line 114
    :cond_29
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mSessionInProgress:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    .line 117
    iput-object p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    .line 118
    new-instance v1, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService;)V

    invoke-direct {v1, p2, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;-><init>(Landroid/speech/IRecognitionListener;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 130
    nop

    .line 131
    .local v1, "listenerToStart":Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1, v1, p3}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda7;-><init>(Landroid/content/Intent;Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Landroid/content/AttributionSource;)V

    invoke-virtual {p0, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 136
    nop

    .end local v1    # "listenerToStart":Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method stopListening(Landroid/speech/IRecognitionListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    .line 144
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_a

    .line 145
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 146
    return-void

    .line 149
    :cond_a
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_d
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mListener:Landroid/speech/IRecognitionListener;

    const/4 v2, 0x5

    if-nez v1, :cond_1e

    .line 151
    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v3, "#stopListening called with no preceding #startListening - ignoring"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {p1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 153
    monitor-exit v0

    return-void

    .line 156
    :cond_1e
    invoke-interface {v1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v1, v3, :cond_34

    .line 157
    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v3, "#stopListening called with an unexpected listener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {p1, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->tryRespondWithError(Landroid/speech/IRecognitionListener;I)V

    .line 159
    monitor-exit v0

    return-void

    .line 162
    :cond_34
    iget-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    if-nez v1, :cond_41

    .line 163
    sget-object v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v2, "#stopListening called while listening isn\'t in progress, ignoring."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v0

    return-void

    .line 166
    :cond_41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mRecordingInProgress:Z

    .line 169
    iget-object v1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 170
    .local v1, "listenerToStop":Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
    new-instance v2, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;)V

    invoke-virtual {p0, v2}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 171
    nop

    .end local v1    # "listenerToStop":Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_51

    throw v1
.end method

.method triggerModelDownload(Landroid/content/Intent;)V
    .registers 4
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .line 232
    iget-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->mConnected:Z

    if-nez v0, :cond_c

    .line 233
    sget-object v0, Lcom/android/server/speech/RemoteSpeechRecognitionService;->TAG:Ljava/lang/String;

    const-string v1, "#downloadModel failed due to connection."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void

    .line 236
    :cond_c
    new-instance v0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda4;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/speech/RemoteSpeechRecognitionService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 237
    return-void
.end method
