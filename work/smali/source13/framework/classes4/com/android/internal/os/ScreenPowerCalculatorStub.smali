.class public interface abstract Lcom/android/internal/os/ScreenPowerCalculatorStub;
.super Ljava/lang/Object;
.source "ScreenPowerCalculatorStub.java"


# static fields
.field public static final blacklist AWEME_APP:Ljava/lang/String; = "com.ss.android.ugc.aweme"


# direct methods
.method public static blacklist getInstance(Lcom/android/internal/os/PowerProfile;)Lcom/android/internal/os/ScreenPowerCalculatorStub;
    .registers 2
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 8
    const-class v0, Lcom/android/internal/os/ScreenPowerCalculatorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ScreenPowerCalculatorStub;

    .line 9
    .local v0, "screenPowerCalculatorStub":Lcom/android/internal/os/ScreenPowerCalculatorStub;
    invoke-interface {v0, p0}, Lcom/android/internal/os/ScreenPowerCalculatorStub;->init(Lcom/android/internal/os/PowerProfile;)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public abstract blacklist getDyAppScreenPower(Lcom/android/internal/os/BatteryStatsImpl;)[B
.end method

.method public abstract blacklist init(Lcom/android/internal/os/PowerProfile;)V
.end method
