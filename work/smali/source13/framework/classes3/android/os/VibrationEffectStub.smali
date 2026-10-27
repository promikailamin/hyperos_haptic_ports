.class public interface abstract Landroid/os/VibrationEffectStub;
.super Ljava/lang/Object;
.source "VibrationEffectStub.java"


# static fields
.field public static final blacklist sInstance:Landroid/os/VibrationEffectStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-class v0, Landroid/os/VibrationEffectStub;

    .line 11
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffectStub;

    sput-object v0, Landroid/os/VibrationEffectStub;->sInstance:Landroid/os/VibrationEffectStub;

    .line 10
    return-void
.end method

.method public static blacklist getInstance()Landroid/os/VibrationEffectStub;
    .registers 1

    .line 15
    sget-object v0, Landroid/os/VibrationEffectStub;->sInstance:Landroid/os/VibrationEffectStub;

    return-object v0
.end method


# virtual methods
.method public blacklist get(Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/VibrationEffect;
    .registers 4
    .param p1, "path"    # Ljava/lang/Object;
    .param p2, "ctx"    # Ljava/lang/Object;

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method
