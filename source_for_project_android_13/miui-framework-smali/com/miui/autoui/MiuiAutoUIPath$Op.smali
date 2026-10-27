.class public Lcom/miui/autoui/MiuiAutoUIPath$Op;
.super Ljava/lang/Object;
.source "MiuiAutoUIPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autoui/MiuiAutoUIPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Op"
.end annotation


# instance fields
.field private blacklist mArgs:[Ljava/lang/Object;

.field private blacklist mName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmArgs(Lcom/miui/autoui/MiuiAutoUIPath$Op;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/miui/autoui/MiuiAutoUIPath$Op;->mArgs:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Lcom/miui/autoui/MiuiAutoUIPath$Op;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/autoui/MiuiAutoUIPath$Op;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/miui/autoui/MiuiAutoUIPath$Op;->mName:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/miui/autoui/MiuiAutoUIPath$Op;->mArgs:[Ljava/lang/Object;

    .line 119
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/miui/autoui/MiuiAutoUIPath$Op-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/autoui/MiuiAutoUIPath$Op;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
