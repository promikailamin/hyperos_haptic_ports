.class abstract Lcom/android/server/tare/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/Modifier$CostModifier;
    }
.end annotation


# static fields
.field static final COST_MODIFIER_CHARGING:I = 0x0

.field static final COST_MODIFIER_DEVICE_IDLE:I = 0x1

.field static final COST_MODIFIER_POWER_SAVE_MODE:I = 0x2

.field static final COST_MODIFIER_PROCESS_STATE:I = 0x3

.field static final NUM_COST_MODIFIERS:I = 0x4


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method getModifiedCostToProduce(J)J
    .registers 3
    .param p1, "ctp"    # J

    .line 51
    return-wide p1
.end method

.method getModifiedPrice(J)J
    .registers 3
    .param p1, "price"    # J

    .line 60
    return-wide p1
.end method

.method setup()V
    .registers 1

    .line 64
    return-void
.end method

.method tearDown()V
    .registers 1

    .line 67
    return-void
.end method
