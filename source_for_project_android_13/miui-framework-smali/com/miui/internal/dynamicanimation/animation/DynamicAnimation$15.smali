.class Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;
.super Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

.field final synthetic blacklist val$floatValueHolder:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method constructor blacklist <init>(Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4
    .param p1, "this$0"    # Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;
    .param p2, "name"    # Ljava/lang/String;

    .line 335
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;"
    iput-object p1, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;->this$0:Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation;

    iput-object p3, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p0, p2}, Lcom/miui/internal/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist getValue(Ljava/lang/Object;)F
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 338
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;"
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v0}, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v0

    return v0
.end method

.method public blacklist setValue(Ljava/lang/Object;F)V
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .line 343
    .local p0, "this":Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;, "Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;"
    iget-object v0, p0, Lcom/miui/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v0, p2}, Lcom/miui/internal/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 344
    return-void
.end method
