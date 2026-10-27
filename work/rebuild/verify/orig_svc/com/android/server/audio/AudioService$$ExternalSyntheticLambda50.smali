.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda50;->f$0:Lcom/android/server/audio/AudioService;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda50;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda50;->f$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda50;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, p0}, Lcom/android/server/audio/AudioService;->$r8$lambda$t_GzyxPGIjaIUYrwTYdbD0DbIcE(Lcom/android/server/audio/AudioService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method
