.class final Lcom/android/server/display/DisplayModeDirector$Vote;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Vote"
.end annotation


# static fields
.field public static final APP_REQUEST_REFRESH_RATE_RANGE_PRIORITY_CUTOFF:I = 0x4

.field public static final INVALID_SIZE:I = -0x1

.field public static final MAX_PRIORITY:I = 0xf

.field public static final MIN_PRIORITY:I = 0x0

.field public static final PRIORITY_APP_REQUEST_BASE_MODE_REFRESH_RATE:I = 0x5

.field public static final PRIORITY_APP_REQUEST_REFRESH_RATE_RANGE:I = 0x4

.field public static final PRIORITY_APP_REQUEST_SIZE:I = 0x6

.field public static final PRIORITY_DEFAULT_REFRESH_RATE:I = 0x0

.field public static final PRIORITY_FLICKER_REFRESH_RATE:I = 0x1

.field public static final PRIORITY_FLICKER_REFRESH_RATE_SWITCH:I = 0x9

.field public static final PRIORITY_HIGH_BRIGHTNESS_MODE:I = 0x2

.field public static final PRIORITY_LOW_POWER_MODE:I = 0x8

.field public static final PRIORITY_MIUI_REFRESH_RATE:I = 0xd

.field public static final PRIORITY_PROXIMITY:I = 0xb

.field public static final PRIORITY_SKIN_TEMPERATURE:I = 0xa

.field public static final PRIORITY_SWITCH_RESOLUTION:I = 0xf

.field public static final PRIORITY_THERMAL_LIMIT_REFRESH_RATE:I = 0xe

.field public static final PRIORITY_UDFPS:I = 0xc

.field public static final PRIORITY_USER_SETTING_MIN_REFRESH_RATE:I = 0x3

.field public static final PRIORITY_USER_SETTING_PEAK_REFRESH_RATE:I = 0x7


# instance fields
.field public final baseModeRefreshRate:F

.field public final disableRefreshRateSwitching:Z

.field public final height:I

.field public final refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

.field public final width:I


# direct methods
.method private constructor <init>(IIFFZF)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minRefreshRate"    # F
    .param p4, "maxRefreshRate"    # F
    .param p5, "disableRefreshRateSwitching"    # Z
    .param p6, "baseModeRefreshRate"    # F

    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    .line 1134
    iput p2, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    .line 1135
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v0, p3, p4}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 1137
    iput-boolean p5, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->disableRefreshRateSwitching:Z

    .line 1138
    iput p6, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->baseModeRefreshRate:F

    .line 1139
    return-void
.end method

.method public static forBaseModeRefreshRate(F)Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 9
    .param p0, "baseModeRefreshRate"    # F

    .line 1125
    new-instance v7, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v5, 0x0

    move-object v0, v7

    move v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFFZF)V

    return-object v7
.end method

.method public static forDisableRefreshRateSwitching()Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 8

    .line 1120
    new-instance v7, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFFZF)V

    return-object v7
.end method

.method public static forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 10
    .param p0, "minRefreshRate"    # F
    .param p1, "maxRefreshRate"    # F

    .line 1110
    new-instance v7, Lcom/android/server/display/DisplayModeDirector$Vote;

    cmpl-float v0, p0, p1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v5, v0

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object v0, v7

    move v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFFZF)V

    return-object v7
.end method

.method public static forSize(II)Lcom/android/server/display/DisplayModeDirector$Vote;
    .registers 10
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 1115
    new-instance v7, Lcom/android/server/display/DisplayModeDirector$Vote;

    const/4 v3, 0x0

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayModeDirector$Vote;-><init>(IIFFZF)V

    return-object v7
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "priority"    # I

    .line 1142
    packed-switch p0, :pswitch_data_38

    .line 1178
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1175
    :pswitch_8
    const-string v0, "PRIORITY_SWITCH_RESOLUTION"

    return-object v0

    .line 1171
    :pswitch_b
    const-string v0, "PRIORITY_THERMAL_LIMIT_REFRESH_RATE"

    return-object v0

    .line 1173
    :pswitch_e
    const-string v0, "PRIORITY_MIUI_REFRESH_RATE"

    return-object v0

    .line 1164
    :pswitch_11
    const-string v0, "PRIORITY_UDFPS"

    return-object v0

    .line 1158
    :pswitch_14
    const-string v0, "PRIORITY_PROXIMITY"

    return-object v0

    .line 1162
    :pswitch_17
    const-string v0, "PRIORITY_SKIN_TEMPERATURE"

    return-object v0

    .line 1154
    :pswitch_1a
    const-string v0, "PRIORITY_FLICKER_REFRESH_RATE_SWITCH"

    return-object v0

    .line 1160
    :pswitch_1d
    const-string v0, "PRIORITY_LOW_POWER_MODE"

    return-object v0

    .line 1168
    :pswitch_20
    const-string v0, "PRIORITY_USER_SETTING_PEAK_REFRESH_RATE"

    return-object v0

    .line 1148
    :pswitch_23
    const-string v0, "PRIORITY_APP_REQUEST_SIZE"

    return-object v0

    .line 1144
    :pswitch_26
    const-string v0, "PRIORITY_APP_REQUEST_BASE_MODE_REFRESH_RATE"

    return-object v0

    .line 1146
    :pswitch_29
    const-string v0, "PRIORITY_APP_REQUEST_REFRESH_RATE_RANGE"

    return-object v0

    .line 1166
    :pswitch_2c
    const-string v0, "PRIORITY_USER_SETTING_MIN_REFRESH_RATE"

    return-object v0

    .line 1156
    :pswitch_2f
    const-string v0, "PRIORITY_HIGH_BRIGHTNESS_MODE"

    return-object v0

    .line 1152
    :pswitch_32
    const-string v0, "PRIORITY_FLICKER_REFRESH_RATE"

    return-object v0

    .line 1150
    :pswitch_35
    const-string v0, "PRIORITY_DEFAULT_REFRESH_RATE"

    return-object v0

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vote{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableRefreshRateSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->disableRefreshRateSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", baseModeRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$Vote;->baseModeRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
