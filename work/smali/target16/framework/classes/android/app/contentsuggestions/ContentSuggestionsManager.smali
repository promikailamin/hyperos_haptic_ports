.class public final Landroid/app/contentsuggestions/ContentSuggestionsManager;
.super Ljava/lang/Object;
.source "ContentSuggestionsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;,
        Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_BITMAP:Ljava/lang/String; = "android.contentsuggestions.extra.BITMAP"

.field private static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

.field private final blacklist mUser:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    const-class v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/contentsuggestions/IContentSuggestionsManager;)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    .line 79
    iput p1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;)V
    .registers 7

    .line 168
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_c

    .line 169
    sget-object p1, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string p2, "classifyContentSelections called, but no ContentSuggestionsManager configured"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 175
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    new-instance v2, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;

    invoke-direct {v2, p3, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallbackWrapper;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->classifyContentSelections(ILandroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_1a

    .line 179
    nop

    .line 180
    return-void

    .line 177
    :catch_1a
    move-exception p1

    .line 178
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isEnabled()Z
    .registers 5

    .line 209
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 210
    return v1

    .line 213
    :cond_6
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v2, 0x1388

    invoke-direct {v0, v2}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    .line 215
    :try_start_d
    iget-object v2, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iget v3, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v2, v3, v0}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->isEnabled(ILcom/android/internal/os/IResultReceiver;)V

    .line 216
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_25
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_d .. :try_end_18} :catch_1c

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    .line 219
    :catch_1c
    move-exception v0

    .line 220
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fail to get the enable status."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :catch_25
    move-exception v0

    .line 218
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 190
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_d

    .line 191
    sget-object p1, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "notifyInteraction called, but no ContentSuggestionsManager configured"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 196
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v0, v1, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->notifyInteraction(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    .line 199
    nop

    .line 200
    return-void

    .line 197
    :catch_16
    move-exception p1

    .line 198
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist provideContextImage(ILandroid/os/Bundle;)V
    .registers 5

    .line 114
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_d

    .line 115
    sget-object p1, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "provideContextImage called, but no ContentSuggestionsManager configured"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void

    .line 120
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v0, v1, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->provideContextImage(IILandroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    .line 123
    nop

    .line 124
    return-void

    .line 121
    :catch_16
    move-exception p1

    .line 122
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist provideContextImage(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .registers 5

    .line 92
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_d

    .line 93
    sget-object p1, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "provideContextImage called, but no ContentSuggestionsManager configured"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 98
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    invoke-interface {v0, v1, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->provideContextBitmap(ILandroid/graphics/Bitmap;Landroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    .line 101
    nop

    .line 102
    return-void

    .line 99
    :catch_16
    move-exception p1

    .line 100
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist resetTemporaryService(I)V
    .registers 3

    .line 232
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_d

    .line 233
    sget-object p1, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "resetTemporaryService called, but no ContentSuggestionsManager configured"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 238
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    invoke-interface {v0, p1}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->resetTemporaryService(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    .line 241
    nop

    .line 242
    return-void

    .line 239
    :catch_14
    move-exception p1

    .line 240
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setDefaultServiceEnabled(IZ)V
    .registers 4

    .line 278
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_d

    .line 279
    sget-object p1, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setDefaultServiceEnabled called, but no ContentSuggestionsManager configured"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 284
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    invoke-interface {v0, p1, p2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->setDefaultServiceEnabled(IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    .line 287
    nop

    .line 288
    return-void

    .line 285
    :catch_14
    move-exception p1

    .line 286
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setTemporaryService(ILjava/lang/String;I)V
    .registers 5

    .line 258
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_d

    .line 259
    sget-object p1, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setTemporaryService called, but no ContentSuggestionsManager configured"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 264
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->setTemporaryService(ILjava/lang/String;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    .line 267
    nop

    .line 268
    return-void

    .line 265
    :catch_14
    move-exception p1

    .line 266
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Ljava/util/concurrent/Executor;Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;)V
    .registers 7

    .line 141
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    if-nez v0, :cond_d

    .line 142
    sget-object p1, Landroid/app/contentsuggestions/ContentSuggestionsManager;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "suggestContentSelections called, but no ContentSuggestionsManager configured"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 148
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mService:Landroid/app/contentsuggestions/IContentSuggestionsManager;

    iget v1, p0, Landroid/app/contentsuggestions/ContentSuggestionsManager;->mUser:I

    new-instance v2, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;

    invoke-direct {v2, p3, p2}, Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallbackWrapper;-><init>(Landroid/app/contentsuggestions/ContentSuggestionsManager$SelectionsCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/app/contentsuggestions/IContentSuggestionsManager;->suggestContentSelections(ILandroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1b

    .line 152
    nop

    .line 153
    return-void

    .line 150
    :catch_1b
    move-exception p1

    .line 151
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
