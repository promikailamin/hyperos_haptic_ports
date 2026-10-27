.class public final synthetic Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/RemoteStorageService;

.field public final synthetic f$1:Landroid/app/ondeviceintelligence/Feature;

.field public final synthetic f$2:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/ondeviceintelligence/RemoteStorageService;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda3;->f$1:Landroid/app/ondeviceintelligence/Feature;

    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda3;->f$2:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/ondeviceintelligence/RemoteStorageService;

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda3;->f$1:Landroid/app/ondeviceintelligence/Feature;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda3;->f$2:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->$r8$lambda$jrOP5tF6_Opf7ZF6hmgEq-dK8SY(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/app/ondeviceintelligence/Feature;Landroid/os/RemoteCallback;Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V

    return-void
.end method
