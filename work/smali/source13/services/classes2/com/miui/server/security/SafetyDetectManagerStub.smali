.class public interface abstract Lcom/miui/server/security/SafetyDetectManagerStub;
.super Ljava/lang/Object;
.source "SafetyDetectManagerStub.java"


# direct methods
.method public static getInstance()Lcom/miui/server/security/SafetyDetectManagerStub;
    .registers 1

    .line 11
    const-class v0, Lcom/miui/server/security/SafetyDetectManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/security/SafetyDetectManagerStub;

    return-object v0
.end method


# virtual methods
.method public getSimulatedTouchInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public stampAccessibilityDispatchGesture(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 18
    return-void
.end method

.method public stampPerformAccessibilityAction(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 21
    return-void
.end method

.method public stampShellInjectInputEvent(J)V
    .registers 3
    .param p1, "downTime"    # J

    .line 15
    return-void
.end method

.method public switchSimulatedTouchDetect(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
