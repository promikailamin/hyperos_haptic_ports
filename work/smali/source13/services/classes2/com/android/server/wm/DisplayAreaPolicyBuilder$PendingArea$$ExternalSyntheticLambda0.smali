.class public final synthetic Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    invoke-static {p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->lambda$instantiateChildren$0(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)I

    move-result p1

    return p1
.end method
