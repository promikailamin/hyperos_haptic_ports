.class Landroid/gesture/InstanceLearner$1;
.super Ljava/lang/Object;
.source "InstanceLearner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/InstanceLearner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/gesture/Prediction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/gesture/Prediction;Landroid/gesture/Prediction;)I
    .registers 6

    .line 31
    iget-wide v0, p1, Landroid/gesture/Prediction;->score:D

    .line 32
    iget-wide p1, p2, Landroid/gesture/Prediction;->score:D

    .line 33
    cmpl-double v2, v0, p1

    if-lez v2, :cond_a

    .line 34
    const/4 p1, -0x1

    return p1

    .line 35
    :cond_a
    cmpg-double p1, v0, p1

    if-gez p1, :cond_10

    .line 36
    const/4 p1, 0x1

    return p1

    .line 38
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 29
    check-cast p1, Landroid/gesture/Prediction;

    check-cast p2, Landroid/gesture/Prediction;

    invoke-virtual {p0, p1, p2}, Landroid/gesture/InstanceLearner$1;->compare(Landroid/gesture/Prediction;Landroid/gesture/Prediction;)I

    move-result p1

    return p1
.end method
