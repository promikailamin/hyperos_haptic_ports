.class public final synthetic Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {p0}, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;->execute()V

    return-void
.end method
