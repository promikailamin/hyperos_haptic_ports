.class public interface abstract Lcom/android/server/lights/LightsManagerStub;
.super Ljava/lang/Object;
.source "LightsManagerStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/lights/LightsManagerStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/lights/LightsManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManagerStub;

    return-object v0
.end method


# virtual methods
.method public brightnessToColor(III)I
    .registers 5
    .param p1, "id"    # I
    .param p2, "brightness"    # I
    .param p3, "lastColor"    # I

    .line 12
    const/4 v0, -0x1

    return v0
.end method
