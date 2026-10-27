.class public Lmiui/os/DynamicEffect;
.super Ljava/lang/Object;
.source "DynamicEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/DynamicEffect$Parameter;,
        Lmiui/os/DynamicEffect$PrimitiveEffect;
    }
.end annotation


# static fields
.field public static final whitelist INTENSITY:I = 0x0

.field public static final whitelist SHARPNESS:I = 0x1


# instance fields
.field private blacklist mEffect:Landroid/os/DynamicEffect;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Landroid/os/DynamicEffect;->create()Landroid/os/DynamicEffect;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    .line 41
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/DynamicEffect;)V
    .registers 2
    .param p1, "effect"    # Landroid/os/DynamicEffect;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    .line 45
    return-void
.end method

.method public static whitelist create(Ljava/lang/String;F)Lmiui/os/DynamicEffect;
    .registers 4
    .param p0, "jsonArray"    # Ljava/lang/String;
    .param p1, "intensity"    # F

    .line 78
    new-instance v0, Lmiui/os/DynamicEffect;

    invoke-static {p0, p1}, Landroid/os/DynamicEffect;->create(Ljava/lang/String;F)Landroid/os/DynamicEffect;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/os/DynamicEffect;-><init>(Landroid/os/DynamicEffect;)V

    return-object v0
.end method

.method public static whitelist createContinuous(FFF)Lmiui/os/DynamicEffect$PrimitiveEffect;
    .registers 5
    .param p0, "intensity"    # F
    .param p1, "sharpness"    # F
    .param p2, "duration"    # F

    .line 56
    new-instance v0, Lmiui/os/DynamicEffect$PrimitiveEffect;

    invoke-static {p0, p1, p2}, Landroid/os/DynamicEffect;->createContinuous(FFF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/os/DynamicEffect$PrimitiveEffect;-><init>(Landroid/os/DynamicEffect$PrimitiveEffect;)V

    return-object v0
.end method

.method public static whitelist createParameter(I[F[F)Lmiui/os/DynamicEffect$Parameter;
    .registers 5
    .param p0, "type"    # I
    .param p1, "timings"    # [F
    .param p2, "values"    # [F

    .line 64
    new-instance v0, Lmiui/os/DynamicEffect$Parameter;

    invoke-static {p0, p1, p2}, Landroid/os/DynamicEffect;->createParameter(I[F[F)Landroid/os/DynamicEffect$Parameter;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/os/DynamicEffect$Parameter;-><init>(Landroid/os/DynamicEffect$Parameter;)V

    return-object v0
.end method

.method public static whitelist createTransient(FF)Lmiui/os/DynamicEffect$PrimitiveEffect;
    .registers 4
    .param p0, "intensity"    # F
    .param p1, "sharpness"    # F

    .line 52
    new-instance v0, Lmiui/os/DynamicEffect$PrimitiveEffect;

    invoke-static {p0, p1}, Landroid/os/DynamicEffect;->createTransient(FF)Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/os/DynamicEffect$PrimitiveEffect;-><init>(Landroid/os/DynamicEffect$PrimitiveEffect;)V

    return-object v0
.end method

.method public static whitelist startCompose()Lmiui/os/DynamicEffect;
    .registers 1

    .line 60
    new-instance v0, Lmiui/os/DynamicEffect;

    invoke-direct {v0}, Lmiui/os/DynamicEffect;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist addParameter(FLmiui/os/DynamicEffect$Parameter;)Lmiui/os/DynamicEffect;
    .registers 5
    .param p1, "startTime"    # F
    .param p2, "param"    # Lmiui/os/DynamicEffect$Parameter;

    .line 68
    iget-object v0, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    invoke-virtual {p2}, Lmiui/os/DynamicEffect$Parameter;->get()Landroid/os/DynamicEffect$Parameter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/DynamicEffect;->addParameter(FLandroid/os/DynamicEffect$Parameter;)Landroid/os/DynamicEffect;

    .line 69
    return-object p0
.end method

.method public whitelist addPrimitive(FLmiui/os/DynamicEffect$PrimitiveEffect;)Lmiui/os/DynamicEffect;
    .registers 5
    .param p1, "startTime"    # F
    .param p2, "effect"    # Lmiui/os/DynamicEffect$PrimitiveEffect;

    .line 73
    iget-object v0, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    invoke-virtual {p2}, Lmiui/os/DynamicEffect$PrimitiveEffect;->get()Landroid/os/DynamicEffect$PrimitiveEffect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/DynamicEffect;->addPrimitive(FLandroid/os/DynamicEffect$PrimitiveEffect;)Landroid/os/DynamicEffect;

    .line 74
    return-object p0
.end method

.method public whitelist clear()V
    .registers 2

    .line 48
    iget-object v0, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    invoke-virtual {v0}, Landroid/os/DynamicEffect;->clear()V

    .line 49
    return-void
.end method

.method public whitelist get()Landroid/os/DynamicEffect;
    .registers 2

    .line 12
    iget-object v0, p0, Lmiui/os/DynamicEffect;->mEffect:Landroid/os/DynamicEffect;

    return-object v0
.end method
