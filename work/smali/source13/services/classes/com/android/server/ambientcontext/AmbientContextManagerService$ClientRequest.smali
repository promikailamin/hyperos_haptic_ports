.class Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
.super Ljava/lang/Object;
.source "AmbientContextManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ambientcontext/AmbientContextManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClientRequest"
.end annotation


# instance fields
.field private final mClientStatusCallback:Landroid/os/RemoteCallback;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field private final mUserId:I


# direct methods
.method constructor <init>(ILandroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "request"    # Landroid/app/ambientcontext/AmbientContextEventRequest;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "clientStatusCallback"    # Landroid/os/RemoteCallback;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    .line 76
    iput-object p2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 77
    iput-object p3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPendingIntent:Landroid/app/PendingIntent;

    .line 78
    iput-object p4, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mClientStatusCallback:Landroid/os/RemoteCallback;

    .line 79
    return-void
.end method


# virtual methods
.method getClientStatusCallback()Landroid/os/RemoteCallback;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mClientStatusCallback:Landroid/os/RemoteCallback;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method getRequest()Landroid/app/ambientcontext/AmbientContextEventRequest;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    return-object v0
.end method

.method hasUserId(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 98
    iget v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasUserIdAndPackageName(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 102
    iget v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    if-ne p1, v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
