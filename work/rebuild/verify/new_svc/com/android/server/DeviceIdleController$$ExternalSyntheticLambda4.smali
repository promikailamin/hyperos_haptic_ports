.class public final synthetic Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->$r8$lambda$eKrxKubyj5v_EnmdqgAru0e8nSM(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
