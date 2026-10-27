.class public final synthetic Lcom/android/server/utils/AnrTimer$Args$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;

    invoke-virtual {p1}, Lcom/android/server/utils/AnrTimer$Args$SplitPoint;->token()I

    move-result p0

    return p0
.end method
