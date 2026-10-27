.class public final synthetic Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/miui/leakcanary/ObjectWatcher;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/miui/leakcanary/ObjectWatcher;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda2;->f$0:Lcom/miui/leakcanary/ObjectWatcher;

    iput-object p2, p0, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    iget-object v0, p0, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda2;->f$0:Lcom/miui/leakcanary/ObjectWatcher;

    iget-object v1, p0, Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/leakcanary/ObjectWatcher;->lambda$expectWeaklyReachable$0$com-miui-leakcanary-ObjectWatcher(Ljava/lang/String;)V

    return-void
.end method
