.class public final synthetic Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyCombinationManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyCombinationManager;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/KeyCombinationManager;

    iput p2, p0, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/KeyCombinationManager;

    iget p0, p0, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-static {v0, p0, p1}, Lcom/android/server/input/KeyCombinationManager;->$r8$lambda$kxe0CJhHLdR_o6H-luUYFde8RLw(Lcom/android/server/input/KeyCombinationManager;ILcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)V

    return-void
.end method
