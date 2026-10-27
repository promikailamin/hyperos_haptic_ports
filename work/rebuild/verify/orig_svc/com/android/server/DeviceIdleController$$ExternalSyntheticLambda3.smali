.class public final synthetic Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda3;
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
    check-cast p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->$r8$lambda$qPgj1g5YPTcmbtQbjAeI6Iz-h_E(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Z

    move-result p0

    return p0
.end method
