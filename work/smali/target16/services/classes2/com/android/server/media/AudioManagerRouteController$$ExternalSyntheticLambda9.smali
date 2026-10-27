.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/AudioManagerRouteController;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;->f$2:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/media/AudioManagerRouteController;->$r8$lambda$7KJau6D3qbI5Xn8EnwRPtvMX_RM(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method
