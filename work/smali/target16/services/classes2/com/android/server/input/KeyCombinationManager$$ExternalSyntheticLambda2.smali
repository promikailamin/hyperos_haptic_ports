.class public final synthetic Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyCombinationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyCombinationManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/KeyCombinationManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/input/KeyCombinationManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/KeyCombinationManager;

    check-cast p1, Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-static {p0, p1}, Lcom/android/server/input/KeyCombinationManager;->$r8$lambda$fd0IFGnP8HInFcUtKC78un-Mam4(Lcom/android/server/input/KeyCombinationManager;Lcom/android/server/input/KeyCombinationManager$TwoKeysCombinationRule;)Z

    move-result p0

    return p0
.end method
