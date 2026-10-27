.class public Landroid/app/supervision/SupervisionManager;
.super Ljava/lang/Object;
.source "SupervisionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/supervision/SupervisionManager$SupervisionListener;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DISABLE_SUPERVISION:Ljava/lang/String; = "android.app.supervision.action.DISABLE_SUPERVISION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ENABLE_SUPERVISION:Ljava/lang/String; = "android.app.supervision.action.ENABLE_SUPERVISION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SUPERVISION_SYSTEM_ENTITY:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/supervision/ISupervisionManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 128
    const-class v0, Landroid/app/supervision/SupervisionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/supervision/SupervisionManager;->SUPERVISION_SYSTEM_ENTITY:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/app/supervision/ISupervisionManager;)V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    .line 135
    return-void
.end method


# virtual methods
.method public whitelist createConfirmSupervisionCredentialsIntent()Landroid/content/Intent;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 156
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_24

    .line 158
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    iget-object v1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/supervision/ISupervisionManager;->createConfirmSupervisionCredentialsIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_1d

    .line 161
    iget-object v1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 161
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 164
    :cond_1d
    return-object v0

    .line 165
    :catch_1e
    move-exception v0

    .line 166
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 169
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActiveSupervisionAppPackage()Ljava/lang/String;
    .registers 3

    .line 239
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_17

    .line 241
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    iget-object v1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/supervision/ISupervisionManager;->getActiveSupervisionAppPackage(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    return-object v0

    .line 242
    :catch_11
    move-exception v0

    .line 243
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 246
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSupervisionRecoveryInfo()Landroid/app/supervision/SupervisionRecoveryInfo;
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_11

    .line 292
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0}, Landroid/app/supervision/ISupervisionManager;->getSupervisionRecoveryInfo()Landroid/app/supervision/SupervisionRecoveryInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 293
    :catch_b
    move-exception v0

    .line 294
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 297
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasSupervisionCredentials()Z
    .registers 2

    .line 307
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_11

    .line 309
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0}, Landroid/app/supervision/ISupervisionManager;->hasSupervisionCredentials()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 310
    :catch_b
    move-exception v0

    .line 311
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 314
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSupervisionEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/supervision/SupervisionManager;->isSupervisionEnabledForUser(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupervisionEnabledForUser(I)Z
    .registers 3

    .line 193
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_11

    .line 195
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0, p1}, Landroid/app/supervision/ISupervisionManager;->isSupervisionEnabledForUser(I)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return p1

    .line 196
    :catch_b
    move-exception p1

    .line 197
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 200
    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist registerSupervisionListener(Landroid/app/supervision/SupervisionManager$SupervisionListener;)V
    .registers 4

    .line 324
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_18

    .line 326
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    iget-object v1, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object p1, p1, Landroid/app/supervision/SupervisionManager$SupervisionListener;->mListener:Landroid/app/supervision/ISupervisionListener;

    invoke-interface {v0, v1, p1}, Landroid/app/supervision/ISupervisionManager;->registerSupervisionListener(ILandroid/app/supervision/ISupervisionListener;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 329
    goto :goto_18

    .line 327
    :catch_12
    move-exception p1

    .line 328
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 331
    :cond_18
    :goto_18
    return-void
.end method

.method public blacklist setSupervisionEnabled(Z)V
    .registers 3

    .line 211
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/supervision/SupervisionManager;->setSupervisionEnabledForUser(IZ)V

    .line 212
    return-void
.end method

.method public blacklist setSupervisionEnabledForUser(IZ)V
    .registers 4

    .line 221
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_10

    .line 223
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0, p1, p2}, Landroid/app/supervision/ISupervisionManager;->setSupervisionEnabledForUser(IZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 226
    goto :goto_10

    .line 224
    :catch_a
    move-exception p1

    .line 225
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 228
    :cond_10
    :goto_10
    return-void
.end method

.method public blacklist setSupervisionRecoveryInfo(Landroid/app/supervision/SupervisionRecoveryInfo;)V
    .registers 3

    .line 274
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_10

    .line 276
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0, p1}, Landroid/app/supervision/ISupervisionManager;->setSupervisionRecoveryInfo(Landroid/app/supervision/SupervisionRecoveryInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 279
    goto :goto_10

    .line 277
    :catch_a
    move-exception p1

    .line 278
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 281
    :cond_10
    :goto_10
    return-void
.end method

.method public whitelist shouldAllowBypassingSupervisionRoleQualification()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 258
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_11

    .line 260
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    invoke-interface {v0}, Landroid/app/supervision/ISupervisionManager;->shouldAllowBypassingSupervisionRoleQualification()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_b

    return v0

    .line 261
    :catch_b
    move-exception v0

    .line 262
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 265
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterSupervisionListener(Landroid/app/supervision/SupervisionManager$SupervisionListener;)V
    .registers 3

    .line 340
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    if-eqz v0, :cond_12

    .line 342
    :try_start_4
    iget-object v0, p0, Landroid/app/supervision/SupervisionManager;->mService:Landroid/app/supervision/ISupervisionManager;

    iget-object p1, p1, Landroid/app/supervision/SupervisionManager$SupervisionListener;->mListener:Landroid/app/supervision/ISupervisionListener;

    invoke-interface {v0, p1}, Landroid/app/supervision/ISupervisionManager;->unregisterSupervisionListener(Landroid/app/supervision/ISupervisionListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 345
    goto :goto_12

    .line 343
    :catch_c
    move-exception p1

    .line 344
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 347
    :cond_12
    :goto_12
    return-void
.end method
