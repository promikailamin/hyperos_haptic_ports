.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/AudioManagerRouteController;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/AudioManagerRouteController;JLjava/lang/String;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    iput-wide p2, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;->f$1:J

    iput-object p4, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    iget-wide v1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;->f$1:J

    iget-object v3, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;->f$2:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda10;->f$3:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/media/AudioManagerRouteController;->$r8$lambda$JR8fQ1QyZRZayb_SiOVQpR4wkXQ(Lcom/android/server/media/AudioManagerRouteController;JLjava/lang/String;I)V

    return-void
.end method
