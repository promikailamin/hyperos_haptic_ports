.class public final synthetic Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    iput-object p2, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    iget-object v1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/profcollect/ProfcollectForwardingService;->lambda$packProfileReport$3$com-android-server-profcollect-ProfcollectForwardingService(Landroid/content/Context;)V

    return-void
.end method
