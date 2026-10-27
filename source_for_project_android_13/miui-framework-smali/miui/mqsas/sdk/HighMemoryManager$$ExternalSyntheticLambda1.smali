.class public final synthetic Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:J


# direct methods
.method public synthetic constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;->f$0:I

    iput p2, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-wide p5, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;->f$4:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 7

    iget v0, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;->f$0:I

    iget v1, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/mqsas/sdk/HighMemoryManager$$ExternalSyntheticLambda1;->f$4:J

    invoke-static/range {v0 .. v5}, Lmiui/mqsas/sdk/HighMemoryManager;->lambda$init$0(IILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
