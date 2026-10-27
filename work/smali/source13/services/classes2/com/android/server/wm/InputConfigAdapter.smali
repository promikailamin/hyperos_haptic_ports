.class Lcom/android/server/wm/InputConfigAdapter;
.super Ljava/lang/Object;
.source "InputConfigAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InputConfigAdapter$FlagMapping;
    }
.end annotation


# static fields
.field private static final INPUT_FEATURE_TO_CONFIG_MAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/InputConfigAdapter$FlagMapping;",
            ">;"
        }
    .end annotation
.end field

.field private static final INPUT_FEATURE_TO_CONFIG_MASK:I

.field private static final LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/InputConfigAdapter$FlagMapping;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 50
    new-instance v0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v0, v6, v6, v7}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v1, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/4 v2, 0x2

    const/16 v3, 0x800

    invoke-direct {v1, v2, v3, v7}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/4 v3, 0x4

    const/16 v4, 0x4000

    invoke-direct {v2, v3, v4, v7}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v3, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/high16 v8, 0x20000000

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v8, v4, v7}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v5, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const v9, 0x8000

    invoke-direct {v5, v4, v9, v7}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v9, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/high16 v4, -0x80000000

    invoke-direct {v9, v4, v4, v7}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    move-object v4, v5

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MAP:Ljava/util/List;

    .line 74
    nop

    .line 75
    invoke-static {v0}, Lcom/android/server/wm/InputConfigAdapter;->computeMask(Ljava/util/List;)I

    move-result v0

    sput v0, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MASK:I

    .line 84
    new-instance v0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v7}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/high16 v3, 0x800000

    invoke-direct {v2, v3, v1, v6}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v1, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/high16 v3, 0x40000

    const/16 v4, 0x200

    invoke-direct {v1, v3, v4, v7}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    new-instance v3, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    const/16 v4, 0x400

    invoke-direct {v3, v8, v4, v7}, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;-><init>(IIZ)V

    invoke-static {v0, v2, v1, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:Ljava/util/List;

    .line 99
    nop

    .line 100
    invoke-static {v0}, Lcom/android/server/wm/InputConfigAdapter;->computeMask(Ljava/util/List;)I

    move-result v0

    sput v0, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I

    .line 99
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyMapping(ILjava/util/List;)I
    .registers 7
    .param p0, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/wm/InputConfigAdapter$FlagMapping;",
            ">;)I"
        }
    .end annotation

    .line 132
    .local p1, "flagToConfigMap":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/InputConfigAdapter$FlagMapping;>;"
    const/4 v0, 0x0

    .line 133
    .local v0, "inputConfig":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 134
    .local v2, "mapping":Lcom/android/server/wm/InputConfigAdapter$FlagMapping;
    iget v3, v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mFlag:I

    and-int/2addr v3, p0

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    .line 135
    .local v3, "flagSet":Z
    :goto_19
    iget-boolean v4, v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInverted:Z

    if-eq v3, v4, :cond_20

    .line 136
    iget v4, v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    or-int/2addr v0, v4

    .line 138
    .end local v2    # "mapping":Lcom/android/server/wm/InputConfigAdapter$FlagMapping;
    .end local v3    # "flagSet":Z
    :cond_20
    goto :goto_5

    .line 139
    :cond_21
    return v0
.end method

.method private static computeMask(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/InputConfigAdapter$FlagMapping;",
            ">;)I"
        }
    .end annotation

    .line 144
    .local p0, "flagToConfigMap":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/InputConfigAdapter$FlagMapping;>;"
    const/4 v0, 0x0

    .line 145
    .local v0, "mask":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;

    .line 146
    .local v2, "mapping":Lcom/android/server/wm/InputConfigAdapter$FlagMapping;
    iget v3, v2, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    or-int/2addr v0, v3

    .line 147
    .end local v2    # "mapping":Lcom/android/server/wm/InputConfigAdapter$FlagMapping;
    goto :goto_5

    .line 148
    :cond_15
    return v0
.end method

.method static getInputConfigFromWindowParams(III)I
    .registers 5
    .param p0, "type"    # I
    .param p1, "flags"    # I
    .param p2, "inputFeatures"    # I

    .line 125
    const/16 v0, 0x7dd

    if-ne p0, v0, :cond_7

    const/16 v0, 0x40

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    sget-object v1, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MAP:Ljava/util/List;

    .line 126
    invoke-static {p1, v1}, Lcom/android/server/wm/InputConfigAdapter;->applyMapping(ILjava/util/List;)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MAP:Ljava/util/List;

    .line 127
    invoke-static {p2, v1}, Lcom/android/server/wm/InputConfigAdapter;->applyMapping(ILjava/util/List;)I

    move-result v1

    or-int/2addr v0, v1

    .line 125
    return v0
.end method

.method static getMask()I
    .registers 2

    .line 108
    sget v0, Lcom/android/server/wm/InputConfigAdapter;->LAYOUT_PARAM_FLAG_TO_CONFIG_MASK:I

    sget v1, Lcom/android/server/wm/InputConfigAdapter;->INPUT_FEATURE_TO_CONFIG_MASK:I

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x40

    return v0
.end method
