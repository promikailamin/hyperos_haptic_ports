.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-static {p1}, Lcom/android/server/policy/KeyCombinationManager;->lambda$isPowerKeyIntercepted$3(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z

    move-result p1

    return p1
.end method
