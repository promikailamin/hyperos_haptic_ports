.class public Lcom/android/server/companion/devicepresence/CompanionServiceConnector;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "CompanionServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/companion/ICompanionDeviceService;",
        ">;"
    }
.end annotation


# static fields
.field public static volatile sServiceThread:Lcom/android/server/ServiceThread;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIsPrimary:Z

.field private mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$6ghL_L70pPCSGZnz5TR7_OwMlgI(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .registers 2

    .line 115
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F9-2n99wLId0e8HpWCVQAUufEOU(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .registers 2

    .line 111
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YHf_O50cuNRHpXs2V0QOVHt8hoA(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;Landroid/companion/ICompanionDeviceService;)V
    .registers 3

    .line 128
    invoke-interface {p2, p0, p1}, Landroid/companion/ICompanionDeviceService;->onActionRequested(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h-XHC4o4z88gn0VW2ITaOxxOuWw(Landroid/companion/DevicePresenceEvent;Landroid/companion/ICompanionDeviceService;)V
    .registers 2

    .line 119
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/ComponentName;IZ)V
    .registers 12

    .line 100
    invoke-static {p3}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 101
    iput v4, v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mUserId:I

    .line 102
    iput-object p3, v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    .line 103
    iput-boolean p5, v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    return-void
.end method

.method public static buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getServiceThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 209
    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_21

    .line 210
    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerService;

    monitor-enter v0

    .line 211
    :try_start_7
    sget-object v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez v1, :cond_1d

    .line 212
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "companion-device-service-connector"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 214
    sget-object v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    goto :goto_1d

    :catchall_1b
    move-exception v1

    goto :goto_1f

    .line 216
    :cond_1d
    :goto_1d
    monitor-exit v0

    goto :goto_21

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1b

    throw v1

    .line 218
    :cond_21
    :goto_21
    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;ILandroid/content/ComponentName;ZZ)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;
    .registers 11

    if-eqz p3, :cond_6

    const/high16 p3, 0x10000000

    :goto_4
    move v4, p3

    goto :goto_9

    :cond_6
    const/high16 p3, 0x10000

    goto :goto_4

    .line 94
    :goto_9
    new-instance v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;IZ)V

    return-object v0
.end method


# virtual methods
.method public binderAsInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;
    .registers 2

    .line 178
    invoke-static {p1}, Landroid/companion/ICompanionDeviceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->binderAsInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    move-result-object p0

    return-object p0
.end method

.method public binderDied()V
    .registers 4

    .line 166
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionServiceConnector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

    if-eqz v0, :cond_2e

    .line 172
    iget v1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mUserId:I

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;->onBindingDied(ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    :cond_2e
    return-void
.end method

.method public getAutoDisconnectTimeoutMs()J
    .registers 3

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getJobHandler()Landroid/os/Handler;
    .registers 1

    .line 192
    invoke-static {}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public isPrimary()Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    return p0
.end method

.method public onServiceConnectionStatusChanged(Landroid/companion/ICompanionDeviceService;Z)V
    .registers 4

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onServiceConnectionStatusChanged() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " connected="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_CompanionServiceConnector"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 47
    check-cast p1, Landroid/companion/ICompanionDeviceService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->onServiceConnectionStatusChanged(Landroid/companion/ICompanionDeviceService;Z)V

    return-void
.end method

.method public postOnActionRequested(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V
    .registers 4

    .line 127
    new-instance v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda4;-><init>(Landroid/companion/AssociationInfo;Landroid/companion/ActionRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public postOnDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .registers 3

    .line 111
    new-instance v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public postOnDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .registers 3

    .line 115
    new-instance v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda3;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public postOnDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V
    .registers 3

    .line 119
    new-instance v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda1;-><init>(Landroid/companion/DevicePresenceEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public postUnbind()V
    .registers 5

    .line 145
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->getJobHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setListener(Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

    return-void
.end method
