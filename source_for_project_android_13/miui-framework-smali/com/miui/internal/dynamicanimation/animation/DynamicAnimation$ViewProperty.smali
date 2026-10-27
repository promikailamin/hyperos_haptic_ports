.class public abstract Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;
.super Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method
