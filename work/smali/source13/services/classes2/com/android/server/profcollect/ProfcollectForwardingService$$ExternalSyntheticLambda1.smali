.class public final synthetic Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->lambda$registerObservers$1$com-android-server-profcollect-ProfcollectForwardingService()V

    return-void
.end method
