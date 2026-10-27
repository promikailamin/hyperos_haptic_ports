.class Lcom/miui/autoui/MiuiAutoUIPath$RewindOperation;
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
    name = "RewindOperation"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$RewindOperation;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 419
    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath$RewindOperation;

    invoke-direct {v0}, Lcom/miui/autoui/MiuiAutoUIPath$RewindOperation;-><init>()V

    sput-object v0, Lcom/miui/autoui/MiuiAutoUIPath$RewindOperation;->INSTANCE:Lcom/miui/autoui/MiuiAutoUIPath$RewindOperation;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/graphics/Path;Lcom/miui/autoui/MiuiAutoUIPath$Op;)V
    .registers 3
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "op"    # Lcom/miui/autoui/MiuiAutoUIPath$Op;

    .line 423
    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 424
    return-void
.end method
