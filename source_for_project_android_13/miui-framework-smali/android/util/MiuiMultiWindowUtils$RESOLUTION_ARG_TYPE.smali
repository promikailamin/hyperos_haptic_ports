.class final enum Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;
.super Ljava/lang/Enum;
.source "MiuiMultiWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MiuiMultiWindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RESOLUTION_ARG_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

.field public static final enum blacklist FREEFORM:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

.field public static final enum blacklist FREEFORM_INNER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

.field public static final enum blacklist FREEFORM_OUTER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

.field public static final enum blacklist MINI_FREEFORM:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

.field public static final enum blacklist MINI_FREEFORM_INNER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

.field public static final enum blacklist MINI_FREEFORM_OUTER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 225
    new-instance v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    const-string v1, "FREEFORM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->FREEFORM:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    new-instance v1, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    const-string v3, "MINI_FREEFORM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->MINI_FREEFORM:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    .line 226
    new-instance v3, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    const-string v5, "FREEFORM_INNER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->FREEFORM_INNER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    new-instance v5, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    const-string v7, "MINI_FREEFORM_INNER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->MINI_FREEFORM_INNER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    .line 227
    new-instance v7, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    const-string v9, "FREEFORM_OUTER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->FREEFORM_OUTER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    new-instance v9, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    const-string v11, "MINI_FREEFORM_OUTER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->MINI_FREEFORM_OUTER:Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    .line 225
    const/4 v11, 0x6

    new-array v11, v11, [Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->$VALUES:[Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 225
    const-class v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    return-object v0
.end method

.method public static blacklist values()[Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;
    .registers 1

    .line 225
    sget-object v0, Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->$VALUES:[Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    invoke-virtual {v0}, [Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/MiuiMultiWindowUtils$RESOLUTION_ARG_TYPE;

    return-object v0
.end method
