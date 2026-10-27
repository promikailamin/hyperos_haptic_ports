.class public final synthetic Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->$r8$lambda$PqPVAmB14ttu63paC5w-colvPhA(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
