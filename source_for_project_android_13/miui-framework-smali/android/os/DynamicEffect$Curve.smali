.class public Landroid/os/DynamicEffect$Curve;
.super Ljava/lang/Object;
.source "DynamicEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DynamicEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Curve"
.end annotation


# instance fields
.field public whitelist mRelativeTime:I

.field public whitelist mTimings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist mType:I

.field public whitelist mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "relativeTime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p3, "timings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput p1, p0, Landroid/os/DynamicEffect$Curve;->mType:I

    .line 153
    iput p2, p0, Landroid/os/DynamicEffect$Curve;->mRelativeTime:I

    .line 154
    iput-object p3, p0, Landroid/os/DynamicEffect$Curve;->mTimings:Ljava/util/ArrayList;

    .line 155
    iput-object p4, p0, Landroid/os/DynamicEffect$Curve;->mValues:Ljava/util/ArrayList;

    .line 156
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 143
    return v0

    .line 145
    :cond_4
    move-object v1, p1

    check-cast v1, Landroid/os/DynamicEffect$Curve;

    .line 146
    .local v1, "other":Landroid/os/DynamicEffect$Curve;
    iget v2, p0, Landroid/os/DynamicEffect$Curve;->mType:I

    iget v3, v1, Landroid/os/DynamicEffect$Curve;->mType:I

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Landroid/os/DynamicEffect$Curve;->mTimings:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/os/DynamicEffect$Curve;->mTimings:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/os/DynamicEffect$Curve;->mValues:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/os/DynamicEffect$Curve;->mValues:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 146
    :goto_23
    return v0
.end method
