.class public final synthetic Lcom/android/server/biometrics/AuthService$AuthServiceImpl$$ExternalSyntheticLambda0;
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
    check-cast p1, Landroid/hardware/biometrics/SensorPropertiesInternal;

    invoke-static {p1}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->$r8$lambda$Xiaf50o0iHyg5xYjSs1mByWS48w(Landroid/hardware/biometrics/SensorPropertiesInternal;)Z

    move-result p0

    return p0
.end method
