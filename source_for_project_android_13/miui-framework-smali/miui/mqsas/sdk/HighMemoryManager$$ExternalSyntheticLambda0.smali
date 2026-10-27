.class public final synthetic Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:J

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    iget-object v0, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda0;->f$2:J

    iget-object v4, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/mqsas/sdk/HighMemoryManager;->lambda$dumpHprof$1(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
