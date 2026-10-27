.class public final synthetic Lcom/android/server/slice/PinnedSliceState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/app/slice/SliceSpec;

    invoke-static {p1}, Lcom/android/server/slice/PinnedSliceState;->lambda$mergeSpecs$1(Landroid/app/slice/SliceSpec;)Z

    move-result p1

    return p1
.end method
