.class Lcom/miui/autoui/MiuiAutoUIPath$AddRectOperation;
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
    name = "AddRectOperation"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddRectOperation;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 280
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$AddRectOperation;

    invoke-direct {v0}, Lcom/miui/autoui/MiuiAutoUIPath$AddRectOperation;-><init>()V

    sput-object v0, Lcom/miui/autoui/MiuiAutoUIPath$AddRectOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$AddRectOperation;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
    .registers 10
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;

    .line 284
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

    .line 285
    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toFloat(Ljava/lang/Object;)F

    move-result v5

    invoke-static {p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;->-$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/miui/autoui/MiuiAutoUIPath;->toPathDirection(Ljava/lang/Object;)Landroid/graphics/Path$Direction;

    move-result-object v6

    .line 284
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 286
    return-void
.end method
