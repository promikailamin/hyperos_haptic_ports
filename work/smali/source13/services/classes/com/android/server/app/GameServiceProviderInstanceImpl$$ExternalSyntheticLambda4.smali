.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameTaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameTaskInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/app/GameTaskInfo;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/app/GameTaskInfo;

    check-cast p1, Landroid/service/games/IGameService;

    invoke-static {v0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->lambda$gameTaskStartedLocked$1(Lcom/android/server/app/GameTaskInfo;Landroid/service/games/IGameService;)V

    return-void
.end method
