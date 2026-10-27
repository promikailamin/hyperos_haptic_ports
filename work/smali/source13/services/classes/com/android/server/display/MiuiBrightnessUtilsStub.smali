.class public Lcom/android/server/display/MiuiBrightnessUtilsStub;
.super Ljava/lang/Object;
.source "MiuiBrightnessUtilsStub.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/display/MiuiBrightnessUtilsStub;
    .registers 1

    .line 8
    const-class v0, Lcom/android/server/display/MiuiBrightnessUtilsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/MiuiBrightnessUtilsStub;

    return-object v0
.end method


# virtual methods
.method public convertGammaToLinear(F)F
    .registers 3
    .param p1, "val"    # F

    .line 12
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public convertLinearToGamma(F)F
    .registers 3
    .param p1, "val"    # F

    .line 16
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method
