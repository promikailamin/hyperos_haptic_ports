.class public final synthetic Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/RateLimitingCache$ValueFetcher;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

    iput-object p2, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist fetchValue()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;

    iget-object v1, p0, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;->$r8$lambda$RiKzVGy0DoxBNYM1JQ3R7mMZyr4(Landroid/graphics/HardwareRenderer$NotifyRendererRateLimiter;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
