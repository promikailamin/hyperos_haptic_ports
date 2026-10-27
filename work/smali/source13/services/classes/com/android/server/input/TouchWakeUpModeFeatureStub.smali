.class public interface abstract Lcom/android/server/input/TouchWakeUpModeFeatureStub;
.super Ljava/lang/Object;
.source "TouchWakeUpModeFeatureStub.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TouchWakeUpModeFeature"


# direct methods
.method public static getInstance()Lcom/android/server/input/TouchWakeUpModeFeatureStub;
    .registers 1

    .line 13
    const-class v0, Lcom/android/server/input/TouchWakeUpModeFeatureStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/TouchWakeUpModeFeatureStub;

    return-object v0
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 17
    const-string v0, "TouchWakeUpModeFeature"

    const-string v1, "Init TouchWakeUpModeFeature"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public abstract initTouchWakeupModeFeature(Landroid/content/Context;Landroid/os/Handler;J)V
.end method

.method public abstract registerSubScreenTouchWakeupModeSettingObserver()V
.end method

.method public abstract registerTouchWakeupModeSettingObserver()V
.end method

.method public abstract updateSubScreenTouchWakeupModeFromSettings()V
.end method

.method public abstract updateTouchWakeupModeFromSettings()V
.end method
