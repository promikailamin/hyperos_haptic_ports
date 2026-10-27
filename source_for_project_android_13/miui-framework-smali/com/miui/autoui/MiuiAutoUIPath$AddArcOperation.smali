.class Lcom/miui/autoui/MiuiAutoUIPath$AddArcOperation;
.super Ljava/lang/Object;
.source "MiuiAutoUIPath.java"

# interfaces
.implements Lcom/miui/autoui/MiuiAutoUIPath$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autoui/MiuiAutoUIPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddArcOperation"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddArcOperation;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 250
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$AddArcOperation;

    invoke-direct {v0}, Lcom/miui/autoui/MiuiAutoUIPath$AddArcOperation;-><init>()V

    sput-object v0, Lcom/miui/autoui/MiuiAutoUIPath$AddArcOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddArcOperation;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
    .registers 11
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;

    .line 254
    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloat(Ljava/lang/Object;)F

    move-result v4

    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 255
    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloat(Ljava/lang/Object;)F

    move-result v5

    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloat(Ljava/lang/Object;)F

    move-result v6

    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloat(Ljava/lang/Object;)F

    move-result v7

    .line 254
    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->addArc(FFFFFF)V

    .line 256
    return-void
.end method
