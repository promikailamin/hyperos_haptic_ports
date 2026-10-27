.class public final synthetic Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/RemoteStorageService;

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/os/RemoteCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/ondeviceintelligence/RemoteStorageService;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda5;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/ondeviceintelligence/RemoteStorageService;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/RemoteStorageService$$ExternalSyntheticLambda5;->f$1:Landroid/os/RemoteCallback;

    invoke-static {v0, p0, p1}, Lcom/android/server/ondeviceintelligence/RemoteStorageService;->$r8$lambda$Xs2-HXz3LPrIO5r-zkhdDLRBBmc(Lcom/android/server/ondeviceintelligence/RemoteStorageService;Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method
