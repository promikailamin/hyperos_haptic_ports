.class public abstract Landroid/media/projection/AppContentProjectionService;
.super Landroid/app/Service;
.source "AppContentProjectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_APP_CONTENT:Ljava/lang/String; = "extra_app_content"

.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.media.projection.AppContentProjectionService"


# instance fields
.field private blacklist mService:Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 141
    iget-object p1, p0, Landroid/media/projection/AppContentProjectionService;->mService:Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;

    if-nez p1, :cond_11

    .line 142
    new-instance p1, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;

    new-instance v0, Landroid/os/PermissionEnforcer;

    invoke-direct {v0, p0}, Landroid/os/PermissionEnforcer;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;-><init>(Landroid/media/projection/AppContentProjectionService;Landroid/os/PermissionEnforcer;Landroid/media/projection/AppContentProjectionService-IA;)V

    iput-object p1, p0, Landroid/media/projection/AppContentProjectionService;->mService:Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;

    .line 144
    :cond_11
    iget-object p1, p0, Landroid/media/projection/AppContentProjectionService;->mService:Landroid/media/projection/AppContentProjectionService$AppContentProjectionCallbackInternal;

    return-object p1
.end method

.method public abstract blacklist onContentRequest(Landroid/media/projection/AppContentRequest;)V
.end method

.method public abstract blacklist onContentRequestCanceled()V
.end method

.method public abstract blacklist onLoopbackProjectionStarted(Landroid/media/projection/AppContentProjectionSession;I)Z
.end method

.method public abstract blacklist onSessionStopped(Landroid/media/projection/AppContentProjectionSession;)V
.end method
