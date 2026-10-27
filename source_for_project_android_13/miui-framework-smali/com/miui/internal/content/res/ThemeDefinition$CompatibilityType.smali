.class public final enum Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
.super Ljava/lang/Enum;
.source "ThemeDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/content/res/ThemeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompatibilityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

.field public static final enum blacklist FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

.field public static final enum blacklist NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

.field public static final enum blacklist NONE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 73
    new-instance v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    const-string v1, "FALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    .line 74
    new-instance v1, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    const-string v3, "NEW_DEF_VALUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    .line 75
    new-instance v3, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    .line 72
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->$VALUES:[Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    .registers 2
    .param p0, "type"    # Ljava/lang/String;

    .line 78
    const-string v0, "fallback"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 79
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-object v0

    .line 80
    :cond_b
    const-string v0, "newDefValue"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 81
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-object v0

    .line 83
    :cond_16
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 72
    const-class v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    .registers 1

    .line 72
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->$VALUES:[Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    invoke-virtual {v0}, [Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    return-object v0
.end method
