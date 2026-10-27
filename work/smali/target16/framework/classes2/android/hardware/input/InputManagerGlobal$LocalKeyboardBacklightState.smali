.class final Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;
.super Landroid/hardware/input/KeyboardBacklightState;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalKeyboardBacklightState"
.end annotation


# instance fields
.field private final blacklist mBrightnessLevel:I

.field private final blacklist mMaxBrightnessLevel:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3

    .line 877
    invoke-direct {p0}, Landroid/hardware/input/KeyboardBacklightState;-><init>()V

    .line 878
    iput p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;->mBrightnessLevel:I

    .line 879
    iput p2, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;->mMaxBrightnessLevel:I

    .line 880
    return-void
.end method


# virtual methods
.method public blacklist getBrightnessLevel()I
    .registers 2

    .line 884
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;->mBrightnessLevel:I

    return v0
.end method

.method public blacklist getMaxBrightnessLevel()I
    .registers 2

    .line 889
    iget v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;->mMaxBrightnessLevel:I

    return v0
.end method
