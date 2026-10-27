.class public Landroid/app/supervision/SupervisionAppService;
.super Landroid/app/Service;
.source "SupervisionAppService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist ACTION_SUPERVISION_APP_SERVICE:Ljava/lang/String; = "android.app.action.SUPERVISION_APP_SERVICE"


# instance fields
.field private final blacklist mBinder:Landroid/app/supervision/ISupervisionListener;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Landroid/app/supervision/SupervisionAppService$1;

    invoke-direct {v0, p0}, Landroid/app/supervision/SupervisionAppService$1;-><init>(Landroid/app/supervision/SupervisionAppService;)V

    iput-object v0, p0, Landroid/app/supervision/SupervisionAppService;->mBinder:Landroid/app/supervision/ISupervisionListener;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 73
    iget-object p1, p0, Landroid/app/supervision/SupervisionAppService;->mBinder:Landroid/app/supervision/ISupervisionListener;

    invoke-interface {p1}, Landroid/app/supervision/ISupervisionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onSupervisionDisabled()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 92
    return-void
.end method

.method public whitelist onSupervisionEnabled()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 83
    return-void
.end method
