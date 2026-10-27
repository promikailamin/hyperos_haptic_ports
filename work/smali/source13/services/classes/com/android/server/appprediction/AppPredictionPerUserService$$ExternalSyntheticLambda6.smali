.class public final synthetic Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appprediction/AppPredictionPerUserService;

.field public final synthetic f$1:Landroid/app/prediction/AppPredictionSessionId;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/appprediction/AppPredictionPerUserService;

    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda6;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/appprediction/AppPredictionPerUserService;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$$ExternalSyntheticLambda6;->f$1:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {v0, v1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$onCreatePredictionSessionLocked$1$com-android-server-appprediction-AppPredictionPerUserService(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method
