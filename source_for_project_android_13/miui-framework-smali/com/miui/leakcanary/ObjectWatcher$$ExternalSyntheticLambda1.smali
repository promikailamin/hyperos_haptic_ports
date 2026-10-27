.class public final synthetic Lcom/miui/leakcanary/ObjectWatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/leakcanary/OnObjectRetainedListener;

    invoke-interface {p1}, Lcom/miui/leakcanary/OnObjectRetainedListener;->onObjectRetained()V

    return-void
.end method
