.class Lcom/android/server/tare/EconomicPolicy$Action;
.super Ljava/lang/Object;
.source "EconomicPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/EconomicPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Action"
.end annotation


# instance fields
.field public final basePrice:J

.field public final costToProduce:J

.field public final id:I


# direct methods
.method constructor <init>(IJJ)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "costToProduce"    # J
    .param p4, "basePrice"    # J

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/android/server/tare/EconomicPolicy$Action;->id:I

    .line 135
    iput-wide p2, p0, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    .line 136
    iput-wide p4, p0, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    .line 137
    return-void
.end method
