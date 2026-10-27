.class Lcom/android/server/companion/CompanionDeviceServiceConnector;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "CompanionDeviceServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/companion/ICompanionDeviceService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CompanionDevice_ServiceConnector"

.field private static volatile sServiceThread:Lcom/android/server/ServiceThread;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private mListener:Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;

.field private final mUserId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;ILandroid/content/ComponentName;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "bindingFlags"    # I

    .line 85
    invoke-static {p3}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 86
    iput p2, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mUserId:I

    .line 87
    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mComponentName:Landroid/content/ComponentName;

    .line 88
    return-void
.end method

.method private static buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method private static getServiceThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 174
    sget-object v0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_1f

    .line 175
    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerService;

    monitor-enter v0

    .line 176
    :try_start_7
    sget-object v1, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez v1, :cond_1a

    .line 177
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "companion-device-service-connector"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 179
    sget-object v1, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 181
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1

    .line 183
    :cond_1f
    :goto_1f
    sget-object v0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    return-object v0
.end method

.method static synthetic lambda$postOnDeviceAppeared$0(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .registers 2
    .param p0, "associationInfo"    # Landroid/companion/AssociationInfo;
    .param p1, "companionService"    # Landroid/companion/ICompanionDeviceService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method static synthetic lambda$postOnDeviceDisappeared$1(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .registers 2
    .param p0, "associationInfo"    # Landroid/companion/AssociationInfo;
    .param p1, "companionService"    # Landroid/companion/ICompanionDeviceService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method static newInstance(Landroid/content/Context;ILandroid/content/ComponentName;Z)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "isSelfManaged"    # Z

    .line 78
    if-eqz p3, :cond_5

    const/high16 v0, 0x10000000

    goto :goto_7

    .line 79
    :cond_5
    const/high16 v0, 0x10000

    :goto_7
    nop

    .line 80
    .local v0, "bindingFlags":I
    new-instance v1, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/companion/CompanionDeviceServiceConnector;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;I)V

    return-object v1
.end method


# virtual methods
.method protected binderAsInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;
    .registers 3
    .param p1, "service"    # Landroid/os/IBinder;

    .line 146
    invoke-static {p1}, Landroid/companion/ICompanionDeviceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->binderAsInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    move-result-object p1

    return-object p1
.end method

.method public binderDied()V
    .registers 4

    .line 134
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 139
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mListener:Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;

    if-eqz v0, :cond_12

    .line 140
    iget v1, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mUserId:I

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;->onBindingDied(ILjava/lang/String;)V

    .line 142
    :cond_12
    return-void
.end method

.method protected getAutoDisconnectTimeoutMs()J
    .registers 3

    .line 165
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected getJobHandler()Landroid/os/Handler;
    .registers 2

    .line 159
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$postUnbind$2$com-android-server-companion-CompanionDeviceServiceConnector(Landroid/companion/ICompanionDeviceService;)V
    .registers 2
    .param p1, "it"    # Landroid/companion/ICompanionDeviceService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->unbind()V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 127
    invoke-super {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->onBindingDied(Landroid/content/ComponentName;)V

    .line 130
    return-void
.end method

.method protected onServiceConnectionStatusChanged(Landroid/companion/ICompanionDeviceService;Z)V
    .registers 3
    .param p1, "service"    # Landroid/companion/ICompanionDeviceService;
    .param p2, "isConnected"    # Z

    .line 120
    return-void
.end method

.method protected bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3

    .line 44
    check-cast p1, Landroid/companion/ICompanionDeviceService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->onServiceConnectionStatusChanged(Landroid/companion/ICompanionDeviceService;Z)V

    return-void
.end method

.method postOnDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .registers 3
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 95
    new-instance v0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda0;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 96
    return-void
.end method

.method postOnDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .registers 3
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 99
    new-instance v0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda2;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 100
    return-void
.end method

.method postUnbind()V
    .registers 2

    .line 110
    new-instance v0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionDeviceServiceConnector;)V

    invoke-virtual {p0, v0}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 111
    return-void
.end method

.method setListener(Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;

    .line 91
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;->mListener:Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;

    .line 92
    return-void
.end method
