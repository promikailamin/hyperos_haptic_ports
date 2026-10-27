.class public final synthetic Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/cloudsearch/CloudSearchPerUserService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    iput-object p2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->lambda$onSearchLocked$1$com-android-server-cloudsearch-CloudSearchPerUserService(Ljava/lang/String;)V

    return-void
.end method
